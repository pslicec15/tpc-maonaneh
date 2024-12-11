@include('partials.header')  
<body class="hold-transition login-page" style="background-image: url('{{ asset('https://scontent.xx.fbcdn.net/v/t1.15752-9/459538900_861411086139340_3399122342212788212_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=0024fc&_nc_eui2=AeEn3dKJhHjhpV6nE-xF68PBEb3WH6j7BfQRvdYfqPsF9MCZmjMNKXz26h_sCGNzBRjexrL0kEaFfRsm-PY6OHr9&_nc_ohc=hn3bHXVgL30Q7kNvgHUWzfM&_nc_ad=z-m&_nc_cid=0&_nc_zt=23&_nc_ht=scontent.xx&oh=03_Q7cD1QEbpU2DRd0XpLwm5tH2Sx8-VSs883NdyAaDuYK5WW20aw&oe=676A880D') }}'); background-size: cover; background-position: center;">
    <div class="login-box">
        <!-- /.login-logo -->
        <div class="card card-outline card-success">
            <div class="card-header">
                <div class="row justify-content-center align-items-center">
                    <div class="col-3">
                        <img src="../../dist/img/tpc_logo.png" class="img-fluid" alt="TPC Logo">
                    </div>
                    <div class="col-8 pt-3">
                        <p class="text-md font-weight-bold">
                            <span class="font-weight-light text-sm">Talibon Polytechnic College</span><br>Library Management System
                        </p>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <p class="login-box-msg">Sign in to your account</p>
                <form action="/login/process" method="post" id="login-form">
                    @csrf
                    <div class="form-group">
                        <div class="input-group mb-3">
                            <input type="text" name="username" class="form-control" placeholder="Username">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-user"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="input-group mb-3">
                            <input type="password" name="password" class="form-control" placeholder="Password">
                            <div class="input-group-append">
                                <div class="input-group-text">
                                    <span class="fas fa-lock"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center mt-2 mb-3" id="sign-in-button">
                        <button type="submit" class="btn btn-block btn-success">Sign in</button>
                    </div>
                </form>
                <!-- /.card-body -->
            </div>
            <!-- /.card -->
        </div>
        <!-- /.login-box -->
    @include('partials.footer')
</body>
