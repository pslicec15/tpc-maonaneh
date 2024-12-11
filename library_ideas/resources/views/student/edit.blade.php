@include('partials.header')

<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed">
    <div class="wrapper">
        <!-- Navbar -->
        <x-nav />
        <!-- /.navbar -->
        <!-- Main Sidebar Container -->
        <x-sidebar />
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row mt-2 justify-content-center">
                        <div class="col-9">
                            <a href="/student" class="btn btn btn-secondary mt-3 mb-3">
                                <i class="fas fa-solid fa-arrow-left mr-1"></i> Back
                            </a>
                            <div class="card">
                                <form action="/student/{{ $student->id }}/edit" method="post"  enctype="multipart/form-data">
                                    @method('PUT')
                                    @csrf
                                    <div class="card-body">
                                        <h4 class="pt-1">Edit Student</h4>
                                        <div class="row">
                                            <div class="col col-6">
                                                <div class="form-group">
                                                    <label for="studentNo">Student No.</label>
                                                    <input type="text" class="form-control" name="studentNo"
                                                        placeholder="Enter student number..."
                                                        value="{{ $student->studentNo }}" readonly>
                                                    @error('studentNo')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="firstName">First Name</label>
                                                    <input type="text" class="form-control" name="firstName"
                                                        placeholder="Enter first name..."
                                                        value="{{ $student->firstName }}">
                                                    @error('firstName')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="middleName">Middle Name</label>
                                                    <input type="text" class="form-control" name="middleName"
                                                        placeholder="Enter middle name..."
                                                        value="{{ $student->middleName }}">
                                                    @error('middleName')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastName">Last Name</label>
                                                    <input type="text" class="form-control " name="lastName"
                                                        placeholder="Enter last name..."
                                                        value="{{ $student->lastName }}">
                                                    @error('lastName')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="course">Course</label>
                                                    <select class="form-control select2" name="courseID"
                                                        style="width: 100%;">
                                                        <option selected disabled>Select course...</option>
                                                        @foreach ($courses as $course)
                                                            <option value="{{ $course->id }}"
                                                                @selected($student->courseID == $course->id)>{{ $course->description }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @error('courseID')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group justify-content-center">
                                                    <label for="photo">Photo</label>
                                                    <video class="border" id="video" width="320" height="320"
                                                        autoplay style="object-fit: cover;"></video>
                                                    <div id="buttonContainer" class="d-flex justify-content-center" style="display:none; margin-top: 5px;">
                                                        <button type="button" class="btn btn-success" id="captureButton">Capture Photo</button>
                                                    </div>
                                                    <canvas id="canvas" width="320" height="320"
                                                        class="border" style="display:none;"></canvas>
                                                    <div id="buttonContainer" class="d-flex justify-content-center" style="display:none; margin-top: 5px;">
                                                        <button type="button" class="btn btn-success btn-center" id="retakeButton" style="display:none; margin-right:5px">Retake Photo</button>
                                                    </div>
                                                    <input type="hidden" name="photo" id="capturedImageData">

                                                    @error('photo')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="col col-6">
                                                <div class="form-group">
                                                    <label for="sex">Sex</label>
                                                    <select class="form-control select2" name="sex"
                                                        style="width: 100%;">
                                                        <option selected disabled>Select sex...</option>
                                                        <option value="Male" @selected($student->sex == 'Male')>Male</option>
                                                        <option value="Female" @selected($student->sex == 'Female')>Female</option>
                                                    </select>
                                                    @error('sex')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="birthdate">Date of Birth</label>
                                                    <input type="date" class="form-control" name="birthdate" value="{{date('Y-m-d', strtotime($student->birthdate))}}">
                                                    @error('birthdate')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="yearLevel">Year Level</label>
                                                    <select class="form-control select2" name="yearLevelID"
                                                        style="width: 100%;">
                                                        <option selected disabled>Select year level...</option>
                                                        @foreach ($yearLevels as $yearLevel)
                                                            <option value="{{ $yearLevel->id }}"
                                                                @selected($student->yearLevelID == $yearLevel->id)>
                                                                {{ $yearLevel->yearLevel }}</option>
                                                        @endforeach
                                                    </select>
                                                    @error('yearLevelID')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="contactNo">Contact No.</label>
                                                    <input type="text" class="form-control" id="contactNo" name="contactNo" maxlength="11" pattern="[0-9]{11}"
                                                        placeholder="Enter contact number..."
                                                        value="0{{ $student->contactNo }}">
                                                    @error('contactNo')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="address">Address</label>
                                                    <textarea class="form-control" name="address" rows="3" placeholder="Enter address...">{{ $student->address }}</textarea>
                                                    @error('address')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    {{-- <input type="hidden" id="photo-path" name="photo" value=""> --}}
                                    <div class="card-footer">
                                        <button type="submit" class="btn btn-success">Update</button>
                                    </div>
                                </form>
                                <!-- /.card -->
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
        <x-footer />

    </div>
    <script>
        var video = document.getElementById('video');
        var canvas = document.getElementById('canvas');
        var captureButton = document.getElementById('captureButton');
        var retakeButton = document.getElementById('retakeButton');
        var studentNo = '';
        var saveImage = document.getElementById('saveImage');

        function trackChange(value) {
            studentNo = value.value;
        }

        if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
            navigator.mediaDevices.getUserMedia({
                    video: true,
                    audio: false
                })
                .then(function(stream) {
                    video.srcObject = stream;
                })
                .catch(function(error) {
                    console.error('Error accessing camera:', error);
                });
        }

        document.getElementById('captureButton').addEventListener('click', function() {
            var context = canvas.getContext('2d');
            var videoWidth = video.videoWidth;
            var videoHeight = video.videoHeight;
            var sourceWidth = 480;
            var sourceHeight = 240;
            var sourceX = (videoWidth - sourceWidth) / 4;
            var sourceY = (videoHeight - sourceHeight) / 4;
            console.log(videoWidth,videoHeight, sourceX,sourceY,sourceWidth,sourceHeight);
            context.drawImage(video,80,0, 480,480, 0, 0, 320, 320);            

            video.style.display = "none";
            canvas.style.display = "block";
            captureButton.style.display = "none";
            retakeButton.style.display = "block";

            var dataURL = canvas.toDataURL('image/png');
            document.getElementById('capturedImageData').value = dataURL;
        });

        document.getElementById('retakeButton').addEventListener('click', function() {
            video.style.display = "block";
            canvas.style.display = "none";
            captureButton.style.display = "block";
            retakeButton.style.display = "none";
        });
    </script>
    <!-- ./wrapper -->
    @include('partials.footer')
