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
                <div class="container-fluid ">
                    <div class="row mt-2 justify-content-center">
                        <div class="col-9">
                            <a href="/user" class="btn btn btn-secondary mt-3 mb-3">
                                <i class="fas fa-solid fa-arrow-left mr-1"></i> Back
                            </a>
                            <div class="card">
                                <form action="/user/save" method="post">
                                    @csrf
                                    <div class="card-body">
                                        <h4 class="pt-1">Add New User</h4>
                                        <div class="row">
                                            <div class="col col-6">
                                                <div class="form-group">
                                                  <label for="name">Name</label>
                                                  <input type="text" class="form-control" name="name"
                                                      placeholder="Enter name...">
                                                  @error('name')
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
                                                  <label for="username">Username</label>
                                                  <input type="text" class="form-control" name="username"
                                                      placeholder="Enter username...">
                                                  @error('username')
                                                      <p class="text-danger">{{ $message }}</p>
                                                  @enderror
                                                </div>
                                                <div class="form-group">
                                                  <label for="password">Password</label>
                                                  <input type="text" class="form-control" name="password"
                                                      placeholder="Enter password...">
                                                  @error('password')
                                                      <p class="text-danger">{{ $message }}</p>
                                                  @enderror
                                                </div>
                                              </div>
                                        </div>
                                        <button type="button" class="btn btn-success" data-toggle="modal"
                                            data-target="#confirmationModal">
                                            Proceed
                                        </button>

                                        <!-- Confirmation Modal -->
                                        <div class="modal fade" id="confirmationModal" tabindex="-1" role="dialog"
                                            aria-labelledby="confirmationModalTitle" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title text-center" id="confirmationModalTitle">
                                                            Add New User</h5>
                                                        <button type="button" class="close" data-dismiss="modal"
                                                            aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body text-center">
                                                        <p>You are about to add new user.
                                                            Make sure the field is filled-out correctly.
                                                            Please click <span
                                                                class="text-bold text-success">Save</span> to continue.
                                                        </p>
                                                    </div>
                                                    <div class="modal-footer text-center">
                                                        <button type="button" class="btn btn-secondary"
                                                            data-dismiss="modal">Cancel</button>
                                                        <button type="submit" class="btn btn-success"
                                                            id="confirmAddStudent">Save</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                </form>
                            </div>
                        </div>
                    </div>
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