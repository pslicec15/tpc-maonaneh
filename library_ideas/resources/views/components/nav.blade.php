<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
    </ul>
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown user-menu">
            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                <span>{{ auth()->user()->name }}</span>
                <i class="fas fa-angle-down ml-1 mr-2"></i>
                <img src='/dist/img/avatar.png' class="user-image img-circle border border-success"
                    alt="User Image">
            </a>
            <ul class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                <!-- User image -->
                <li class="user-header bg-success">
                    <img src='/dist/img/avatar.png' class="img-circle elevation-2" alt="User Image">
                    <p class="text-lg font-weight-bold">{{ auth()->user()->name }}</p>
                    <p class="text-md">{{ auth()->user()->position }}</p>
                </li>
                <!-- Menu Footer-->
                <li class="user-footer">
                    <form action="/logout" method="POST">
                        @csrf
                        <button type="submit" class="btn btn-default btn-flat float-right">
                            Sign out
                            <i class="fas fa-sign-out-alt"></i>
                        </button>
                    </form>
                </li>
            </ul>
        </li>
    </ul>
</nav>
