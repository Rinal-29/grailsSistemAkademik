<!doctype html>
<html class="no-js">
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
                <a  href="/dashboard" class="nav-link">
                    <i class="nav-icon fas fa-home"></i>
                    <g:message code="navbar.home.name"/>
                </a>
            </li>
        </ul>


    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
            <a class="nav-link" data-toggle="dropdown" href="#">
                <i class="nav-icon fas fa-language fa-lg"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                <span class="dropdown-item dropdown-header"><g:message code="navbar.language.list"/></span>
                <div class="dropdown-divider"></div>
                <g:link class="dropdown-item" mapping="languageId">
                    Indonesia
                </g:link>
                <div class="dropdown-divider"></div>
                <g:link mapping="languageEn" class="dropdown-item">
                    English
                </g:link>
            </div>
        </li>

        <li class="nav-item dropdown">
            <a class="nav-link" data-toggle="dropdown" href="#">
                <i class="nav-icon fas fa-list"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                <span class="dropdown-item dropdown-header">Menu</span>
                <div class="dropdown-divider"></div>
                <sec:ifAllGranted roles="ROLE_ADMIN">
                    <a href="/admin" class="dropdown-item">
                        <i class="nav-icon fas fa-user"></i> <g:message code="sidebar.account.name"/>
                    </a>
                </sec:ifAllGranted>
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

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="" class="brand-link text-center">
            <span class="brand-text font-weight-light"><g:message code="navbar.brand.name"/> </span>
        </a>
        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar Menu -->
            <nav class="mt-2" id="myTab">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                    <li class="nav-item">
                        <a href="/dashboard/index" class="nav-link">
                            <i class="nav-icon fas fa-columns"></i>
                            <p>
                                <g:message code="sidebar.dashboard.name"/>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/mahasiswa/index" class="nav-link">
                            <i class="nav-icon fas fa-users"></i>
                            <p>
                                <g:message code="sidebar.student.name"/>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/dosen" class="nav-link">
                            <i class="nav-icon fas fa-chalkboard-teacher"></i>
                            <p>
                                <g:message code="sidebar.lecture.name"/>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/matakuliah" class="nav-link">
                            <i class="nav-icon fas fa-book-open"></i>
                            <p>
                                <g:message code="sidebar.courses.name"/>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/ruangan" class="nav-link">
                            <i class="nav-icon fas fa-school"></i>
                            <p>
                                <g:message code="sidebar.room.name"/>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/jurusan" class="nav-link">
                            <i class="nav-icon fas fa-university"></i>
                            <p>
                                <g:message code="sidebar.major.name"/>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/penasehatAkademik" class="nav-link">
                            <i class= "nav-icon fas fa-address-book"></i>
                            <p>
                                <g:message code="sidebar.academic.name"/>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/jadwal" class="nav-link">
                            <i class="nav-icon fas fa-clipboard-list"></i>
                            <p>
                                <g:message code="sidebar.schedule.name"/>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/nilai" class="nav-link">
                            <i class="nav-icon fas fa-book-reader"></i>
                            <p>
                                <g:message code="sidebar.score.name"/>
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="/krs" class="nav-link">
                            <i class="nav-icon fas fa-clipboard"></i>
                            <p>
                                <g:message code="sidebar.krs.name"/>
                            </p>
                        </a>
                    </li>
                    <sec:ifAllGranted roles="ROLE_ADMIN">
                        <li class="nav-item">
                            <a href="/tahunAkademik" class="nav-link">
                                <i class="nav-icon fas fa-calendar-alt"></i>
                                <p>
                                    <g:message code="sidebar.year.name"/>
                                </p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="/user" class="nav-link">
                                <i class="nav-icon fas fa-user"></i>
                                <p>
                                    <g:message code="sidebar.account.name"/>
                                </p>
                            </a>
                        </li>
                    </sec:ifAllGranted>
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

<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<asset:javascript src="application.js"/>
</body>
</html>
