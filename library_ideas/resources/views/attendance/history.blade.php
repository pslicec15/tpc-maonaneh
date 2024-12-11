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
                                <h1>Attendance History</h1>
                            </div>
                        </div><!-- /.container-fluid -->
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="card">
                        <div class="card-header">
                            <h5 class="text-bold">Students</h5>
                        </div>
                        <div class="card-body">
                            <table id="dt-student-attedance" class="table table-bordered table-striped">
                                <thead>
                                    <tr>
                                        <th>Student No.</th>
                                        <th>Lastname</th>
                                        <th>Firstname</th>
                                        <th>Middlename</th>
                                        <th>Course</th>
                                        <th>Year</th>
                                        <th>Time-in</th>
                                        <th>Time-out</th>
                                        <th>Date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($studentAttendance as $studentAttendanceItem)
                                        @if ($studentAttendanceItem->studentId)
                                            <tr>
                                                <td>{{ $studentAttendanceItem->studentNo }}</td>
                                                <td>{{ $studentAttendanceItem->studentLastName }}</td>
                                                <td>{{ $studentAttendanceItem->studentFirstName }}</td>
                                                <td>{{ $studentAttendanceItem->studentmiddleName }}</td>
                                                <td>{{ $studentAttendanceItem->course }}</td>
                                                <td>{{ $studentAttendanceItem->yearLevel }}</td>
                                                <td>{{ $studentAttendanceItem->timedIn }}</td>
                                                <td>{{ $studentAttendanceItem->timedOut }}</td>
                                                <td>{{ $studentAttendanceItem->date }}</td>
                                            </tr>
                                        @endif
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
                                        
                                        <th>Instructor No.</th>
                                        <th>Lastname</th>
                                        <th>Firstname</th>
                                        <th>Middlename</th>
                                        <th>Department</th>
                                        <th>Timed In</th>
                                        <th>Timed Out</th>
                                        <th>Date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($instructorAttendance as $instructorAttendanceItem)
                                        @if ($instructorAttendanceItem->instructorId)
                                            <tr>
                                                <td>{{ $instructorAttendanceItem->instructorNo }}</td>
                                                <td>{{ $instructorAttendanceItem->instructorLastName }}</td>
                                                <td>{{ $instructorAttendanceItem->instructorFirstName }}</td>
                                                <td>{{ $instructorAttendanceItem->instructormiddleName }}</td>
                                                <td>{{ $instructorAttendanceItem->department }}</td>
                                                <td>{{ $instructorAttendanceItem->timedIn }}</td>
                                                <td>{{ $instructorAttendanceItem->timedOut }}</td>
                                                <td>{{ $instructorAttendanceItem->date }}</td>
                                            </tr>
                                        @endif
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->

                    <!-- /.container-fluid -->
            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->
        <x-footer />
    </div>
    <!-- ./wrapper -->
    @include('partials.footer')
