<aside class="main-sidebar sidebar-light-success elevation-4">
    <!-- Brand Logo -->
    <div class="brand-link">
        <img src="/dist/img/tpc_logo.png" alt="TPC Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-bold text-sm">Library Management System</span>
    </div>
    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <li class="nav-item">
                    <a href="/" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                @if (auth()->user()->position == 'Administrator' || auth()->user()->position == 'Librarian')
                    <li class="nav-item">
                        <a href="/user" class="nav-link">
                            <i class="nav-icon fas fa-user"></i>
                            <p>User Management</p>
                        </a>
                    </li>
                @endif
                <li class="nav-item">
                    <a href="/course" class="nav-link">
                        <i class="nav-icon fas fa-user"></i>
                        <p>Manage Courses</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-book"></i>
                        <p>
                            Books
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="/book" class="nav-link">
                                <i class="nav-icon fas fa-book"></i>
                                <p>Manage Books</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/category" class="nav-link">
                                <i class="nav-icon fas fa-list"></i>
                                <p>Manage Categories</p>
                            </a>
                        </li>
                        
                        <li class="nav-item">
                            <a href="/qr-scanner" class="nav-link">
                                <i class="nav-icon fas fa-qrcode"></i>
                                <p>QR Book Scanner</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-user-plus"></i>
                        <p>
                            Borrowers
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="/student" class="nav-link">
                                <i class="far fa-user nav-icon"></i>
                                <p>Student</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/instructor" class="nav-link">
                                <i class="far fa-user nav-icon"></i>
                                <p>Instructor</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li cl
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-list"></i>
                        <p>
                            Transactions
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="/borrowers-form" class="nav-link">
                                <i class="far fa-file-alt nav-icon"></i>
                                <p>Borrowers Form</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/borrowers-list" class="nav-link">
                                <i class="fas fa-list nav-icon"></i>
                                <p>Borrowers List</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/return-book-list" class="nav-link">
                                <i class="fas fa-list nav-icon"></i>
                                <p>Return Book List</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="fas fa-clipboard-list nav-icon"></i>
                        <p>
                            Attendance
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="/tap-in-tap-out" class="nav-link">
                                <i class="far fa-clock nav-icon"></i>
                                <p>Tap-in/Tap-out</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/history" class="nav-link">
                                <i class="fas fa-list nav-icon"></i>
                                <p>View History</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="/bulk-print" class="nav-link">
                        <i class="nav-icon fas fa-print"></i>
                        <p>Library Pass Bulk Print</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="/user-manual/TPC LIBRARY MANAGEMENT SYSTEM USER MANUAL.pdf" class="nav-link">
                        <i class="nav-icon fas fa-file"></i>
                        <p>User Manual</p>
                    </a>
                </li>
                
                <!-- Advanced Search Section -->
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-search"></i>
                        <p>
                            Advanced Search
                            <i class="fas fa-angle-left right"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="/advanced-search" class="nav-link">
                                <i class="fas fa-search nav-icon"></i>
                                <p>Search Books</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/search-student" class="nav-link">
                                <i class="fas fa-users nav-icon"></i>
                                <p>Search Students</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/search-borrowers" class="nav-link">
                                <i class="fas fa-hand-holding-heart nav-icon"></i>
                                <p>Search Borrowers</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- End of Advanced Search Section -->
                
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
