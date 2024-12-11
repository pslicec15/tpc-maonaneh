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
                            <a href="/instructor" class="btn btn btn-secondary mt-3 mb-3">
                                <i class="fas fa-solid fa-arrow-left mr-1"></i> Back
                            </a>
                            <div class="card">
                                <form action="/instructor/{{ $instructor->id }}/edit" method="post">
                                    @method('PUT')
                                    @csrf
                                    <div class="card-body">
                                        <h4 class="pt-1">Edit Instructor</h4>
                                        <div class="row">
                                            <div class="col col-6">
                                                <div class="form-group">
                                                    <label for="instructorNo">Instructor No.</label>
                                                    <input type="text" class="form-control" name="instructorNo"
                                                        placeholder="Enter instructor number..."
                                                        value="{{ $instructor->instructorNo }}">
                                                    @error('instructorNo')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="firstName">First Name</label>
                                                    <input type="text" class="form-control" name="firstName"
                                                        placeholder="Enter first name..."
                                                        value="{{ $instructor->firstName }}">
                                                    @error('firstName')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="middleName">Middle Name</label>
                                                    <input type="text" class="form-control" name="middleName"
                                                        placeholder="Enter middle name..."
                                                        value="{{ $instructor->middleName }}">
                                                    @error('middleName')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastName">Last Name</label>
                                                    <input type="text" class="form-control" name="lastName"
                                                        placeholder="Enter last name..."
                                                        value="{{ $instructor->lastName }}">
                                                    @error('lastName')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="sex">Sex</label>
                                                    <select class="form-control select2" name="sex"
                                                        style="width: 100%;">
                                                        <option selected disabled>Select sex...</option>
                                                        <option value="Male" @selected($instructor->sex == 'Male')>Male</option>
                                                        <option value="Female" @selected($instructor->sex == 'Female')>Female</option>
                                                    </select>
                                                    @error('sex')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="birthdate">Date of Birth</label>
                                                    <input type="date" class="form-control" name="birthdate"
                                                        placeholder="Enter date of birth..."
                                                        value="{{date('Y-m-d', strtotime($instructor->birthdate))}}">
                                                    @error('birthdate')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                            </div>
                                            <div class="col col-6">
                                                <div class="form-group">
                                                    <label for="departmentID">Department</label>
                                                    <select class="form-control select2" name="departmentID"
                                                        style="width: 100%;">
                                                        <option selected disabled>Select Department...</option>
                                                        @foreach ($departments as $department)
                                                            <option value="{{ $department->id }}"
                                                                @selected($instructor->departmentID == $department->id)>
                                                                {{ $department->description }}</option>
                                                        @endforeach
                                                    </select>
                                                    @error('departmentID')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="position">Position</label>
                                                    <input type="text" class="form-control" name="position"
                                                        placeholder="Enter position..."
                                                        value="{{ $instructor->position }}">
                                                    @error('position')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="contactNo">Contact No.</label>
                                                    <input type="text" class="form-control" id="contactNo" name="contactNo" maxlength="11" pattern="[0-9]{11}"
                                                        placeholder="Enter contact number..."
                                                        value="0{{ $instructor->contactNo }}">
                                                    @error('contactNo')
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
                                        </div>
                                    </div>
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
