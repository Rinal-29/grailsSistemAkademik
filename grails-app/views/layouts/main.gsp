<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>


    <g:link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"/>
    <g:link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400,700" rel="stylesheet"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>
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
                <a href="/mahasiswa" class="nav-link">Home</a>
            </li>
        </ul>

        <!-- SEARCH FORM -->
        <form class="form-inline ml-3">
            <div class="input-group input-group-sm">
                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-navbar" type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                </div>
            </div>
        </form>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="" class="brand-link text-center">
            <span class="brand-text font-weight-light">AdminLTE</span>
        </a>
        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                    <li class="nav-item">
                        <a href="/mahasiswa/index" class="nav-link">
                            <i class="nav-icon fas fa-users"></i>
                            <p>
                                Mahasiswa
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/dosen" class="nav-link">
                            <i class="nav-icon fas fa-chalkboard-teacher"></i>
                            <p>
                                Dosen
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/matakuliah" class="nav-link">
                            <i class="nav-icon fas fa-book-open"></i>
                            <p>
                                Mata Kuliah
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/ruangan" class="nav-link">
                            <i class="nav-icon fas fa-school"></i>
                            <p>
                                Ruangan
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/jurusan" class="nav-link">
                            <i class="nav-icon fas fa-university"></i>
                            <p>
                                Jurusan
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/penasehatAkademik" class="nav-link">
                            <i class="nav-icon fas fa-th"></i>
                            <p>
                                Penasehat Akademik
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/jadwal" class="nav-link">
                            <i class="nav-icon fas fa-th"></i>
                            <p>
                                Jadwal
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/tahunAkademik" class="nav-link">
                            <i class="nav-icon fas fa-th"></i>
                            <p>
                                Tahun Akademik
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/nilai" class="nav-link">
                            <i class="nav-icon fas fa-th"></i>
                            <p>
                                Nilai
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/krs" class="nav-link">
                            <i class="nav-icon fas fa-th"></i>
                            <p>
                                KRS
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fas fa-th"></i>
                            <p>
                                Akun
                            </p>
                        </a>
                    </li>
                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                    <main role="main">
                        <g:layoutBody/>
                    </main>
            </div><!-- /.container-fluid -->
        </section>
    </div>
    <!-- /.content-wrapper -->

    <footer class="main-footer">
        <div class="float-right d-none d-sm-block">
            <b>Version</b> 3.0.5
        </div>
        <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong> All rights
    reserved.
    </footer>
</div>

    <asset:javascript src="application.js"/>

</body>
</html>
