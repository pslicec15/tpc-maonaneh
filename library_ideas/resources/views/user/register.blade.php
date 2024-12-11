@include('partials.header')

<body class="hold-transition login-page">
    <div class="login-box">
        <!-- /.login-logo -->
        <div class="card card-outline card-success">
            <div class="card-header">
                <div class="row justify-content-center align-items-center">
                    <div class="col-3">
                        <img src="../../dist/img/tpc_logo.png" class="img-fluid" alt="TPC Logo">
                    </div>
                    <div class="col-8 pt-3">
                        <p class="text-md font-weight-bold"><span class="font-weight-light text-sm">Talibon Polytechnic
                                College</span><br>Library Management System</p>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <p class="login-box-msg">Register your account</p>

                <form action="/store" method="post">
                    @csrf
                    <div class="input-group mb-3">
                        <input type="text" name="name" class="form-control" placeholder="Name">
                        @error('name')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="input-group mb-3">
                        <input type="text" name="position" class="form-control" placeholder="Position">
                        @error('position')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="input-group mb-3">
                        <input type="text" name="username" class="form-control" placeholder="Username">
                        @error('username')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="input-group mb-3">
                        <input type="password" name="password" class="form-control" placeholder="Password">
                        @error('password')
                            <p class="text-danger">{{ $message }}</p>
                        @enderror
                    </div>
                    <div class="text-center mt-2 mb-3">
                        <button type="submit" class="btn btn-block btn-success">Create Account</a>
                    </div>
                </form>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
        <!-- /.login-box -->
        @include('partials.footer')
