<?php

namespace App\Http\Controllers;

use App\Models\Course;
use App\Models\Student;
use App\Models\YearLevel;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Storage;
use Illuminate\Validation\Rule;
use Illuminate\Support\Str;

class StudentController extends Controller
{
    public function index()
    {
        $courses = Course::all();
        $yearLevels = YearLevel::all();
        $students = DB::table('students')
            ->join('courses', 'students.courseID', '=', 'courses.id')
            ->join('year_levels', 'students.yearLevelID', '=', 'year_levels.id')
            ->select('students.*', 'courses.code as course', 'year_levels.yearLevel as yearLevel')
            ->get();

        foreach ($students as $student) {
            $birthdate = Carbon::parse($student->birthdate);
            $today = Carbon::now();
            $age = $birthdate->diffInYears($today);
            $student->age = $age;
        }

        return view('student.index', ['students' => $students, 'courses' => $courses, 'yearLevels' => $yearLevels]);
    }

    public function create()
    {
        $courses = Course::all();
        $yearLevels = YearLevel::all();
        return view('student.create', ['courses' => $courses, 'yearLevels' => $yearLevels]);
    }

    public function store(Request $request)
    {
        // Validate the form data including the file upload
        $request->validate([
            'studentNo' => 'required|unique:students,studentNo',
            'firstName' => 'required',
            'lastName' => 'required',
            'photo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048', // Image validation
        ]);
    
        // Handle the photo upload or webcam capture
        $photoPath = null;
        if ($request->hasFile('photo')) {
            $photo = $request->file('photo');
            $photoPath = $photo->store('student_photos', 'public'); // Store the image in 'public/student_photos'
        } elseif ($request->has('capturedImageData')) {
            // If the image was captured by webcam, process the base64 image
            $imageData = $request->input('capturedImageData');
            $imageData = str_replace('data:image/png;base64,', '', $imageData);
            $imageData = str_replace(' ', '+', $imageData);
    
            $imageName = uniqid('photo_') . '.png';
            $imagePath = storage_path('app/public/student_photos/' . $imageName);
            
            // Decode the base64 string and save the file
            file_put_contents($imagePath, base64_decode($imageData));
            $photoPath = 'student_photos/' . $imageName;
        }
    
        // Create a new student record in the database
        $student = new Student();
        $student->studentNo = $request->studentNo;
        $student->firstName = $request->firstName;
        $student->lastName = $request->lastName;
        $student->courseID = $request->courseID;
        $student->sex = $request->sex;
        $student->birthdate = $request->birthdate;
        $student->yearLevelID = $request->yearLevelID;
        $student->contactNo = $request->contactNo;
        $student->address = $request->address;
        
        // Save the photo path if a photo was uploaded or captured
        if ($photoPath) {
            $student->photo = $photoPath;
        }
    
        // Save the student to the database
        $student->save();
    
        // Redirect back with a success message
        return redirect('/student')->with('success', 'Student added successfully!');
    }
    

    public function show($id)
    {
        $data = DB::table('students')
            ->join('courses', 'students.courseID', '=', 'courses.id')
            ->join('year_levels', 'students.yearLevelID', '=', 'year_levels.id')
            ->select('students.*', 'courses.description as courseName', 'year_levels.yearLevel as yearLevel')
            ->where('students.id', $id)
            ->first();
        $data->birthdate = Carbon::parse($data->birthdate);
        $now = Carbon::now();
        $age = $now->diff($data->birthdate)->y;
        return view('student.view', ['student' => $data, 'age' => $age]);
    }

    public function edit($id)
    {
        $courses = Course::all();
        $yearLevels = YearLevel::all();

        $data = DB::table('students')
            ->join('courses', 'students.courseID', '=', 'courses.id')
            ->join('year_levels', 'students.yearLevelID', '=', 'year_levels.id')
            ->select('students.*', 'courses.description as courseName', 'year_levels.yearLevel as yearLevel')
            ->where('students.id', $id)
            ->first();
        $data->birthdate = Carbon::parse($data->birthdate);

        return view('student.edit', ['student' => $data, 'courses' => $courses, 'yearLevels' => $yearLevels]);
    }

    public function update(Request $request, $id)
    {
        $data = Student::find($id);
        $validatedData = $request->validate([
            'firstName' => 'required',
            'middleName' => 'nullable',
            'lastName' => 'required',
            'sex' => 'required',
            'birthdate' => 'required',
            'courseID' => 'required',
            'yearLevelID' => 'required',
            'contactNo' => 'nullable|numeric|digits:11',
            'address' => 'required',
            'photo' => 'nullable',
        ]);

        if ($data->photo) {
            File::delete(public_path($data->photo));

            $capturedImageData = $request->input('photo');
            $decodedImageData = base64_decode(preg_replace('#^data:image/\w+;base64,#i', '', $capturedImageData));
            $imagePath = 'img' . DIRECTORY_SEPARATOR . 'student';
            $fileName = $data->studentNo . '.png';
            $filePath = public_path($imagePath . DIRECTORY_SEPARATOR . $fileName);

            if (!File::isDirectory(public_path($imagePath))) {
                File::makeDirectory(public_path($imagePath), 0777, true, true);
            }

            file_put_contents($filePath, $decodedImageData);

            $validatedData['photo'] = $filePath;
        } else {
            $capturedImageData = $request->input('photo');
            $decodedImageData = base64_decode(preg_replace('#^data:image/\w+;base64,#i', '', $capturedImageData));
            $imagePath = 'img' . DIRECTORY_SEPARATOR . 'student';
            $fileName = $request->input('studentNo') . '.png';
            $filePath = public_path($imagePath . DIRECTORY_SEPARATOR . $fileName);
            if (!File::isDirectory(public_path($imagePath))) {
                File::makeDirectory(public_path($imagePath), 0777, true, true);
            }

            file_put_contents($filePath, $decodedImageData);
            $validatedData['photo'] = $filePath;
        }

        $data->update($validatedData);

        return redirect('/student')->with('success', 'Student updated successfully');
    }

    public function destroy($id)
    {
        $student = Student::findOrFail($id);
        $student->delete();

        return back()->with('success', 'Student deleted successfully');
    }

    public function print($id)
    {
        $data = DB::table('students')
            ->join('courses', 'students.courseID', '=', 'courses.id')
            ->join('year_levels', 'students.yearLevelID', '=', 'year_levels.id')
            ->select('students.*', 'courses.description as courseName', 'year_levels.yearLevel as yearLevel')
            ->where('students.id', $id)
            ->first();
        return view('components.print-pass', ['student' => $data]);
    }
}
