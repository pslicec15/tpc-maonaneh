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
                    <a href="/department" class="btn btn btn-secondary mt-5">
                        <i class="fas fa-solid fa-arrow-left mr-1"></i> Back
                    </a>
                    <div class="row mt-2">
                        <div class="col-9">
                            <div class="card">
                                <form action="/department/{{ $department->id }}/edit" method="post">
                                    @method('PUT')
                                    @csrf
                                    <div class="card-body">
                                        <h4 class="pt-1">Edit Department</h4>
                                        <div class="row">
                                            <div class="col col-6">
                                                <div class="form-group">
                                                    <label for="departmentName">Department</label>
                                                    <input type="text" class="form-control" name="departmentName"
                                                        placeholder="Enter course..."
                                                        value="{{ $department->departmentName }}">
                                                    @error('departmentName')
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
    <!-- ./wrapper -->
    @include('partials.footer')
