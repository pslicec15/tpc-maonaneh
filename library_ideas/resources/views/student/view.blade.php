@include('partials.header')
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed">
    <div class="wrapper">
        <!-- Navbar -->
        <x-nav />
        <!-- Main Sidebar Container -->
        <x-sidebar />
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">

            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <a href="/student" class="btn btn btn-secondary mt-5">
                        <i class="fas fa-solid fa-arrow-left mr-1"></i> Back
                    </a>
                    <div class="row mt-3">
                        <div class="col-md-3">
                          <div class="card card-success card-outline">
                            <div class="card-body box-profile">
                              <div class="text-center">
                                <img class="profile-user-img img-fluid img-circle"
                                     src="{{ !empty($student->photo) ? '/img/student/'.$student->studentNo.'.png' : '/dist/img/avatar.png' }}"
                                     alt="student">
                              </div>
                              <h3 class="profile-username text-center">{{ $student->firstName }} {{ $student->middleName }} {{ $student->lastName }}</h3>
                              <p class="text-muted text-center">{{ $student->studentNo }}</p>
                              <div class="library-pass">
                                <div>{!! QrCode::format('svg')->generate($student->studentNo.'/student') !!}</div>
                             </div>
                             <a class="btn btn-success btn-block mt-3" href="/print-pass/student/{{ $student->id }}">Print Library Pass</a>
                            </div>
                            <!-- /.card-body -->
                          </div>
                          <!-- /.card -->
                        </div>
                        <div class="col-md-9">
                            <div class="card card-success">
                                <!-- /.card-header -->
                                <div class="card-body">
                                  <strong><i class="fas fa-book mr-1"></i>Course</strong>
                                  <p class="text-muted"> {{ $student->courseName }} </p>
                                  <hr>
                                  <strong><i class="fas fa-graduation-cap mr-1"></i>Year Level</strong>
                                  <p class="text-muted">{{ $student->yearLevel }}</p>
                                  <hr>
                                  <strong><i class="fas fa-solid fa-user mr-1"></i>Sex</strong>
                                  <p class="text-muted">{{ $student->sex }}</p>
                                  <hr>
                                  <strong><i class="fas fa-solid fa-user mr-1"></i>Age</strong>
                                  <p class="text-muted">{{$age}}</p>
                                  <hr>
                                  <strong><i class="fas fa-birthday-cake mr-1"></i>Birthday</strong>
                                  <p class="text-muted">{{$student->birthdate->format('F d, Y')}}</p>
                                  <hr>
                                  <strong><i class="fas fa-phone-alt mr-1"></i> Contact Number</strong>
                                  <p class="text-muted">{{ $student->contactNo }}</p>
                                  <hr>
                                  <strong><i class="fas fa-map-marker-alt mr-1"></i> Address</strong>
                                  <p class="text-muted">{{ $student->address }}</p>
                                </div>
                                <!-- /.card-body -->
                              </div>
                              <!-- /.card -->
                        </div>
                    </row>
                </div>
                <!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
        <x-footer />
    </div>
    <!-- ./wrapper -->
@include('partials.footer')
