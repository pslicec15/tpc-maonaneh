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
                                <h1>Instructors</h1>
                                <a class="btn btn btn-success" href="/instructor/add">
                                    <i class="fas fa-plus mr-1"></i> Add New Instructor
                                </a>
                            </div>
                        </div><!-- /.container-fluid -->
            </section>
            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <table id="dt-default" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Instructor No.</th>
                                                <th>Name</th>
                                                <th>Age</th>
                                                <th>Department</th>
                                                <th>Position</th>
                                                <th>Contact No</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($instructors as $instructor)
                                                <tr>
                                                    <td>{{ $instructor->id }}</td>
                                                    <td>{{ $instructor->instructorNo }}</td>
                                                    <td>{{ $instructor->firstName }} {{ $instructor->middleName }}
                                                        {{ $instructor->lastName }}</td>
                                                    <td>{{ $instructor->age }}</td>
                                                    <td>{{ $instructor->department }}</td>
                                                    <td>{{ $instructor->position }}</td>
                                                    <td>{{ $instructor->contactNo }}</td>
                                                    <td>
                                                        <div class="btn-group" role="group" aria-label="action group">
                                                            <form class="btn btn-primary btn-sm">
                                                                <a class="btn btn-primary btn-sm "
                                                                    href="/instructor/{{ $instructor->id }}"><i
                                                                        class="fas fa-eye"></i></a>
                                                            </form>
                                                            <form class="btn btn-info btn-sm">
                                                                <a class="btn btn-info btn-sm"
                                                                    href="/instructor/{{ $instructor->id }}/edit"><i
                                                                        class="fas fa-edit"></i></a>
                                                            </form>
                                                            @if (auth()->user()->position == 'Administrator' || auth()->user()->position == 'Librarian')
                                                                <form class="btn btn-danger btn-sm">
                                                                    <button class="btn btn-danger btn-sm" type="button"
                                                                        class="btn btn-success" data-toggle="modal"
                                                                        data-target="#confirmationModal{{ $instructor->id }}"><i
                                                                            class="fas fa-trash"></i></button>
                                                                </form>
                                                            @endif
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- Confirmation Modal -->
                                                <div class="modal fade" id="confirmationModal{{ $instructor->id }}"
                                                    role="dialog" aria-labelledby="confirmationModalTitle"
                                                    aria-hidden="true">
                                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h5 class="modal-title text-center"
                                                                    id="confirmationModalTitle">Delete Instructor</h5>
                                                                <button type="button" class="close"
                                                                    data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body text-center">
                                                                <p>You are about to delete the instructor record of
                                                                    <span
                                                                        class="text-bold">{{ $instructor->firstName }}
                                                                        {{ $instructor->lastName }}</span>.
                                                                    This action cannot be undone.
                                                                    Please click <span
                                                                        class="text-bold text-danger">Delete</span> to
                                                                    continue.
                                                                </p>
                                                            </div>
                                                            <div class="modal-footer text-center">
                                                                <button type="button" class="btn btn-secondary"
                                                                    data-dismiss="modal">Cancel</button>
                                                                <form action="/instructor/{{ $instructor->id }}"
                                                                    method="post">
                                                                    @method('DELETE')
                                                                    @csrf
                                                                    <button type="submit"
                                                                        class="btn btn-danger">Delete</button>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.card-body -->
                            </div>
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
