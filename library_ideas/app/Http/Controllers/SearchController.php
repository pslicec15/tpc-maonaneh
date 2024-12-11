<?php
namespace App\Http\Controllers;

use App\Models\Student;
use App\Models\Book;
use App\Models\Transaction;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    // Search Books by title, author, or other attributes
    public function searchBooks(Request $request)
    {
        $searchTerm = $request->get('search');
        
        // Searching for books by title, author, or category
        $books = Book::where('title', 'like', '%' . $searchTerm . '%')
            ->orWhere('author', 'like', '%' . $searchTerm . '%')
            ->orWhere('category', 'like', '%' . $searchTerm . '%')
            ->get();
        
        return view('search.books', compact('books'));
    }

    // Search for Students by ID or Name and display their borrowed books
    public function searchStudent(Request $request)
    {
        $searchTerm = $request->get('search');
        
        // Searching for a student by ID or name
        $student = Student::where('id_number', 'like', '%' . $searchTerm . '%')
            ->orWhere('name', 'like', '%' . $searchTerm . '%')
            ->first();
        
        if ($student) {
            // Fetching borrowed books for the student
            $borrowedBooks = Transaction::where('student_id', $student->id)
                ->where('status', 'borrowed') // Assuming 'borrowed' status indicates a borrowed book
                ->get();
            return view('search.student', compact('student', 'borrowedBooks'));
        } else {
            return redirect()->route('search.student')->with('error', 'Student not found!');
        }
    }

    // Placeholder for searching borrowers (both students and instructors)
    public function searchBorrowers(Request $request)
    {
        $searchTerm = $request->get('search');
        
        // Searching for borrowers (students or instructors) by name or ID
        $borrowers = Student::where('id_number', 'like', '%' . $searchTerm . '%')
            ->orWhere('name', 'like', '%' . $searchTerm . '%')
            ->get();
        
        return view('search.borrowers', compact('borrowers'));
    }
}

?>
