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
                        <div class="col-md-9">
                            <a href="/instructor" class="btn btn-secondary mt-3 mb-3">
                                <i class="fas fa-arrow-left mr-1"></i> Back
                            </a>

                            <div class="card">
                                <form action="/instructor/add" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="card-body">
                                        <h4 class="pt-1">Add New Instructor</h4>
                                        <div class="row">
                                            <!-- Left Column -->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="instructorNo">Instructor No.</label>
                                                    <input type="text" class="form-control" name="instructorNo"
                                                           placeholder="Enter instructor number...">
                                                    @error('instructorNo')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="firstName">First Name</label>
                                                    <input type="text" class="form-control" name="firstName"
                                                           placeholder="Enter first name...">
                                                    @error('firstName')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="middleName">Middle Name</label>
                                                    <input type="text" class="form-control" name="middleName"
                                                           placeholder="Enter middle name...">
                                                    @error('middleName')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="lastName">Last Name</label>
                                                    <input type="text" class="form-control" name="lastName"
                                                           placeholder="Enter last name...">
                                                    @error('lastName')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="sex">Sex</label>
                                                    <select class="form-control select2" name="sex" style="width: 100%;">
                                                        <option selected disabled>Select sex...</option>
                                                        <option value="Male">Male</option>
                                                        <option value="Female">Female</option>
                                                    </select>
                                                    @error('sex')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="birthdate">Date of Birth</label>
                                                    <input type="date" class="form-control" name="birthdate"
                                                           placeholder="Enter date of birth...">
                                                    @error('birthdate')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                            </div>

                                            <!-- Right Column -->
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label for="departmentID">Department</label>
                                                    <select class="form-control select2" name="departmentID" style="width: 100%;">
                                                        <option selected disabled>Select Department...</option>
                                                        @foreach ($departments as $department)
                                                            <option value="{{ $department->id }}">
                                                                {{ $department->description }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @error('departmentID')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="position">Position</label>
                                                    <input type="text" class="form-control" name="position"
                                                           placeholder="Enter position...">
                                                    @error('position')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="contactNo">Contact No.</label>
                                                    <input type="tel" id="contactNo" class="form-control" name="contactNo" maxlength="11"
                                                           pattern="[0-9]{11}" placeholder="Enter contact number...">
                                                    @error('contactNo')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                    <label for="photo">Photo</label>

                                                    <!-- Webcam Capture Section -->
                                                    <video class="border" id="video" width="320" height="320" autoplay style="object-fit: cover;"></video>
                                                    <div id="buttonContainer" class="d-flex justify-content-center" style="display:none; margin-top: 5px;">
                                                        <button type="button" class="btn btn-success" id="captureButton">Capture Photo</button>
                                                    </div>
                                                    <canvas id="canvas" width="320" height="320" class="border" style="display:none;"></canvas>
                                                    <div id="buttonContainer" class="d-flex justify-content-center" style="display:none; margin-top: 5px;">
                                                        <button type="button" class="btn btn-success" id="retakeButton" style="display:none;">Retake Photo</button>
                                                    </div>

                                                    <!-- File Upload Section -->
                                                    <input type="file" class="form-control mt-3" name="photo" id="photo" accept="image/*" onchange="previewImage(event)">
                                                    <small class="form-text text-muted">Or upload a photo from your device.</small>

                                                    <!-- Preview Image Section -->
                                                    <div id="imagePreviewContainer" style="display: none; margin-top: 10px;">
                                                        <img id="imagePreview" src="" alt="Uploaded Image Preview" style="width: 320px; height: 320px; object-fit: cover;">
                                                    </div>

                                                    <input type="hidden" name="photo" id="capturedImageData">
                                                    
                                                    @error('photo')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Proceed Button -->
                                        <div class="form-group text-center mt-3">
                                            <button type="button" class="btn btn-success" data-toggle="modal" data-target="#confirmationModal">
                                                Proceed
                                            </button>
                                        </div>

                                        <!-- Confirmation Modal -->
                                        <div class="modal fade" id="confirmationModal" tabindex="-1" role="dialog" aria-labelledby="confirmationModalTitle" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title text-center" id="confirmationModalTitle">Add New Instructor</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body text-center">
                                                        <p>You are about to add a new instructor. Ensure all fields are filled correctly. Click <strong class="text-success">Save</strong> to continue.</p>
                                                    </div>
                                                    <div class="modal-footer text-center">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                                        <button type="submit" class="btn btn-success">Save</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <!-- Footer -->
        <x-footer />
    </div>
    <script>
        var video = document.getElementById('video');
        var canvas = document.getElementById('canvas');
        var captureButton = document.getElementById('captureButton');
        var retakeButton = document.getElementById('retakeButton');
        var studentNo = '';
        var saveImage = document.getElementById('saveImage');
        
        // JavaScript for image upload preview
        function previewImage(event) {
            var file = event.target.files[0];
            var reader = new FileReader();

            reader.onload = function() {
                var output = document.getElementById('imagePreview');
                var previewContainer = document.getElementById('imagePreviewContainer');
                output.src = reader.result;
                previewContainer.style.display = "block";
                
                // Hide webcam capture area and show uploaded image preview
                document.getElementById('video').style.display = "none";
                document.getElementById('canvas').style.display = "none";
                document.getElementById('captureButton').style.display = "none";
                document.getElementById('retakeButton').style.display = "none";
            }

            if (file) {
                reader.readAsDataURL(file);
            }
        }

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
            saveImage.style.display = "none";
        });
    </script>
    <!-- ./wrapper -->
    @include('partials.footer')