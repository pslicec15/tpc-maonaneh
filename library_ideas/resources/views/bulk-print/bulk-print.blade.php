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
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-12">
                            <div class="d-flex justify-content-between align-items-center">
                                <h1>Bulk Print</h1>
                            </div>
                        </div><!-- /.container-fluid -->
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                  <form action="/bulk-print/print" method="post">
                    @csrf
                    <div class="card">
                        <div class="card-header">
                            <h5 class="text-bold">Students</h5>
                        </div>
                        <div class="card-body">
                            <table id="dt-student-attedance" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                      <th></th>
                                        <th>Student No.</th>
                                        <th>Name</th>
                                        <th>Course</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($students as $student)
                                        <tr>
                                            <td><input type="checkbox" name="selected_students[]"
                                                    value="{{ $student->studentNo }}"></td>
                                            <td>{{ $student->studentNo }}</td>
                                            <td>{{ $student->firstName }}
                                                {{ $student->lastName }}</td>
                                            <td>{{ $student->course }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                    <div class="card">
                        <div class="card-header">
                            <h5 class="text-bold">Instructors</h5>
                        </div>
                        <div class="card-body">
                            <table id="dt-instructor" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Instructor No.</th>
                                        <th>Name</th>
                                        <th>Department</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($instructors as $instructor)
                                        <tr>
                                            <td><input type="checkbox" name="selected_instructors[]"
                                                    value="{{ $instructor->instructorNo }}"></td>
                                            <td>{{ $instructor->instructorNo }}</td>
                                            <td>{{ $instructor->firstName }}
                                                {{ $instructor->lastName }}</td>
                                            <td>{{ $instructor->department }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <button class="btn btn-success btn-block mt-3 mb-3">Print Library Pass</button>
                    <!-- /.card -->
                  </form>
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
