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
                                <h1>Return Book List</h1>
                            </div>
                        </div><!-- /.container-fluid -->
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h5 class="text-bold">Students</h5>
                                </div>
                                <div class="card-body">
                                    <table id="dt-student-attedance" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Student ID</th>
                                                <th>Borrower</th>
                                                <th>Book Borrowed</th>
                                                <th>Date Borrowed</th>
                                                <th>Date Returned</th>
                                                <th>Issued By</th>
                                                <th>Returned To</th>
                                                <th>Status</th>
                                                <th>Remarks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($borrowed as $borrow)
                                                @if ($borrow->status == 'Returned' && $borrow->studentId != null)
                                                    <tr>
                                                        <td>
                                                            @if ($borrow->studentId != null)
                                                                {{ $borrow->student->studentNo }}
                                                            @endif
                                                        </td>
                                                        <td>
                                                            @if ($borrow->studentId != null)
                                                                {{ $borrow->student->firstName }}
                                                                {{ $borrow->student->middleName }}
                                                                {{ $borrow->student->lastName }}
                                                            @endif
                                                        </td>
                                                        <td>{{ $borrow->book->bookTitle }}</td>
                                                        <td>{{ $borrow->dateBorrowed }}</td>
                                                        <td>
                                                            @if ($borrow->dateReturned)
                                                                {{ $borrow->dateReturned }}
                                                            @else
                                                                <p class="text-center">--:--</p>
                                                            @endif
                                                        <td>
                                                            @if ($borrow->issuedByUser)
                                                                {{ $borrow->issuedByUser->name }}
                                                            @else
                                                                <p class="text-center">--:--</p>
                                                            @endif
                                                        </td>
                                                        <td>
                                                            @if ($borrow->returnedToUser != null)
                                                                {{ $borrow->returnedToUser->name }}
                                                            @else
                                                                <p class="text-center">--:--</p>
                                                            @endif
                                                        </td>
                                                        <td>{{ $borrow->status }}</td>
                                                        <td>{{ $borrow->remarks }}</td>
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
                                                <th>Instructor ID</th>
                                                <th>Borrower</th>
                                                <th>Book Borrowed</th>
                                                <th>Date Borrowed</th>
                                                <th>Date Returned</th>
                                                <th>Issued By</th>
                                                <th>Returned To</th>
                                                <th>Status</th>
                                                <th>Remarks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($borrowed as $borrow)
                                                @if ($borrow->status == 'Returned' && $borrow->instructorId != null)
                                                    <tr>
                                                        <td>
                                                            @if ($borrow->instructorId != null)
                                                                {{ $borrow->instructor->instructorNo }}
                                                            @endif
                                                        </td>
                                                        <td>
                                                            @if ($borrow->instructorId != null)
                                                                {{ $borrow->instructor->firstName }}
                                                                {{ $borrow->instructor->middleName }}
                                                                {{ $borrow->instructor->lastName }}
                                                            @endif
                                                        </td>
                                                        <td>{{ $borrow->book->bookTitle }}</td>
                                                        <td>{{ $borrow->dateBorrowed }}</td>
                                                        <td>
                                                            @if ($borrow->dateReturned)
                                                                {{ $borrow->dateReturned }}
                                                            @else
                                                                <p class="text-center">--:--</p>
                                                            @endif
                                                        <td>
                                                            @if ($borrow->issuedByUser)
                                                                {{ $borrow->issuedByUser->name }}
                                                            @else
                                                                <p class="text-center">--:--</p>
                                                            @endif
                                                        </td>
                                                        <td>
                                                            @if ($borrow->returnedToUser != null)
                                                                {{ $borrow->returnedToUser->name }}
                                                            @else
                                                                <p class="text-center">--:--</p>
                                                            @endif
                                                        </td>
                                                        <td>{{ $borrow->status }}</td>
                                                        <td>{{ $borrow->remarks }}</td>
                                                    </tr>
                                                @endif
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
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
    <!-- ./wrapper -->
    @include('partials.footer')
