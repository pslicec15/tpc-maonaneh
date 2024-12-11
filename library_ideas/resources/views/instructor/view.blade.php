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
                    <a href="/instructor" class="btn btn btn-secondary mt-5">
                        <i class="fas fa-solid fa-arrow-left mr-1"></i> Back
                    </a>
                    <div class="row mt-3">
                        <div class="col-md-3">
                          <div class="card card-success card-outline">
                            <div class="card-body box-profile">
                              <div class="text-center">
                                <img class="profile-user-img img-fluid img-circle"
                                     src="{{ !empty($instructor->photo) ? '/img/instructor/'.$instructor->instructorNo.'.png' : '/dist/img/avatar.png' }}"
                                     alt="student">
                              </div>
                              <h3 class="profile-username text-center">{{ $instructor->firstName }} {{ $instructor->middleName }} {{ $instructor->lastName }}</h3>
                              <p class="text-muted text-center">{{ $instructor->instructorNo }}</p>
                              <div class="library-pass">
                                <div>{!! QrCode::format('svg')->generate($instructor->instructorNo.'/instructor') !!}</div>
                             </div>
                             <a class="btn btn-success btn-block mt-3" href="/print-pass/instructor/{{ $instructor->id }}">Print Library Pass</a>
                            </div>
                            <!-- /.card-body -->
                          </div>
                          <!-- /.card -->
                        </div>
                        <div class="col-md-9">
                            <div class="card card-success">
                                <!-- /.card-header -->
                                <div class="card-body">
                                  <strong><i class="fas fa-book mr-1"></i>Department</strong>
                                  <p class="text-muted"> {{ $instructor->department }} </p>
                                  <hr>
                                  <strong><i class="fas fa-solid fa-user mr-1"></i>Position</strong>
                                  <p class="text-muted">{{ $instructor->position }}</p>
                                  <hr>
                                  <strong><i class="fas fa-solid fa-user mr-1"></i>Sex</strong>
                                  <p class="text-muted">{{ $instructor->sex }}</p>
                                  <hr>
                                  <strong><i class="fas fa-solid fa-user mr-1"></i>Age</strong>
                                  <p class="text-muted">{{$age}}</p>
                                  <hr>
                                  <strong><i class="fas fa-birthday-cake mr-1"></i>Birthday</strong>
                                  <p class="text-muted">{{$instructor->birthdate->format('F d, Y')}}</p>
                                  <hr>
                                  <strong><i class="fas fa-phone-alt mr-1"></i> Contact Number</strong>
                                  <p class="text-muted">{{ $instructor->contactNo }}</p>
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
