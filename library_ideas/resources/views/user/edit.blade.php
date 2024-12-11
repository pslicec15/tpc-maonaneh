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
                            <a href="/user" class="btn btn btn-secondary mt-3 mb-3">
                                <i class="fas fa-solid fa-arrow-left mr-1"></i> Back
                            </a>
                            <div class="card">
                                <form action="/user/{{ $user->id }}/edit" method="post">
                                    @method('PUT')
                                    @csrf
                                    <div class="card-body">
                                        <h4 class="pt-1">Edit User</h4>
                                         <div class="row">
                                            <div class="col col-6">
                                              <div class="form-group">
                                                <label for="name">Name</label>
                                                <input type="text" class="form-control" name="name"
                                                    placeholder="Enter name..."
                                                    value="{{ $user->name }}">
                                                @error('name')
                                                    <p class="text-danger">{{ $message }}</p>
                                                @enderror
                                              </div>
                                              <div class="form-group">
                                                <label for="position">Position</label>
                                                <input type="text" class="form-control" name="position"
                                                    placeholder="Enter position..."
                                                    value="{{ $user->position }}">
                                                @error('position')
                                                    <p class="text-danger">{{ $message }}</p>
                                                @enderror
                                              </div>
                                              <div class="form-group">
                                                <label for="username">Username</label>
                                                <input type="text" class="form-control" name="username"
                                                    placeholder="Enter username..."
                                                    value="{{ $user->username }}">
                                                @error('username')
                                                    <p class="text-danger">{{ $message }}</p>
                                                @enderror
                                              </div>
                                              <div class="form-group">
                                                <label for="password">Password</label>
                                                <input type="password" class="form-control" name="password"
                                                    placeholder="Enter password...">
                                                @error('password')
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
