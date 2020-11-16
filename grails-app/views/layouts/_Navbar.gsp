<body class="hold-transition sidebar-mini">

<!-- Site wrapper -->
<div class="wrapper">

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a  href="/dashboard/index" class="nav-link">Home</a>
            </li>
        </ul>

        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">
                    <i class="nav-icon fas fa-users"></i>
                </a>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                    <span class="dropdown-item dropdown-header">Menu</span>
                    <div class="dropdown-divider"></div>
                    <a href="/admin" class="dropdown-item">
                        <i class="nav-icon fas fa-user"></i> Akun
                    </a>
                    <div class="dropdown-divider"></div>
                    <sec:ifLoggedIn>
                        <g:link controller="logout" class="dropdown-item bg-red">
                            <i class="fas fa-sign-out-alt"></i> LogOut
                        </g:link>
                    </sec:ifLoggedIn>
                    <div class="dropdown-divider"></div>
                    <a href="/dashboard" class="dropdown-item dropdown-footer">Lihat Semua</a>
                </div>
            </li>
        </ul>
    </nav>
    <!-- /.navbar -->