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
                            <a href="/category" class="btn btn btn-secondary mt-3 mb-3">
                                <i class="fas fa-solid fa-arrow-left mr-1"></i> Back
                            </a>
                            <div class="card">
                                <form action="/category/{{ $category->id }}/edit" method="post">
                                    @method('PUT')
                                    @csrf
                                    <div class="card-body">
                                        <h4 class="pt-1">Edit Category</h4>
                                        <div class="row">
                                            <div class="col col-6">
                                                <div class="form-group">
                                                    <label for="categoryCode">Category Code</label>
                                                    <input type="text" class="form-control" name="categoryCode"
                                                        placeholder="Enter course..."
                                                        value="{{ $category->categoryCode }}">
                                                    @error('categoryCode')
                                                        <p class="text-danger">{{ $message }}</p>
                                                    @enderror
                                                </div>
                                                <div class="form-group">
                                                  <label for="categoryDesc">Category Description</label>
                                                  <input type="text" class="form-control" name="categoryDesc"
                                                      placeholder="Enter course..."
                                                      value="{{ $category->categoryDesc }}">
                                                  @error('categoryDesc')
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
