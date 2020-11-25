<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 09.33
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Dashboard</title>
    <meta name="layout" content="main">
</head>

<body>
    <h1 class="mb-2"><g:message code="header.dashboard.name"/> </h1>
    <sec:ifLoggedIn>
        <h5 class="mb-5"><g:message code="header.welcome.name"/>, <sec:username/></h5>
    </sec:ifLoggedIn>

    <sec:ifAllGranted roles="ROLE_ADMIN">
        <div class="row">
            <div class="col-lg-3 col-6">
                <!-- small card -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <p><g:message code="sidebar.student.name"/> </p>

                        <h3>${mahasiswa}</h3>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fas fa-users"></i>
                    </div>
                    <a href="${createLink(controller: "mahasiswa", action: "list", params: [lang: params.lang ?: null])}" class="small-box-footer">
                        <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                    </a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small card -->
                <div class="small-box bg-success">
                    <div class="inner">
                        <p><g:message code="sidebar.lecture.name"/> </p>

                        <h3>${dosen}</h3>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fas fa-chalkboard-teacher"></i>
                    </div>
                    <a href="${createLink(controller: "dosen", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                        <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                    </a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small card -->
                <div class="small-box bg-warning">
                    <div class="inner">
                        <p><g:message code="sidebar.courses.name"/> </p>

                        <h3>${matkul}</h3>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fas fa-book-open"></i>
                    </div>
                    <a href="${createLink(controller: "matakuliah", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                        <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                    </a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small card -->
                <div class="small-box bg-danger">
                    <div class="inner">
                        <p><g:message code="sidebar.room.name"/> </p>

                        <h3>${ruangan}</h3>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fas fa-school"></i>
                    </div>
                    <a href="${createLink(controller: "ruangan", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                        <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                    </a>
                </div>
            </div>
            <!-- ./col -->
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small card -->
                <div class="small-box bg-danger">
                    <div class="inner">
                        <p><g:message code="sidebar.major.name"/> </p>

                        <h3>${jurusan}</h3>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fas fa-university"></i>
                    </div>
                    <a href="${createLink(controller: "jurusan", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                        <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                    </a>
                </div>
            </div>
            <!-- ./col -->
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small card -->
                <div class="small-box bg-warning">
                    <div class="inner">
                        <p><g:message code="sidebar.academic.name"/> </p>

                        <h3>${penasehat}</h3>
                    </div>
                    <div class="icon">
                        <i class= "nav-icon fas fa-address-book"></i>
                    </div>
                    <a href="${createLink(controller: "penasehatAkademik", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                        <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                    </a>
                </div>
            </div>
            <!-- ./col -->
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small card -->
                <div class="small-box bg-success">
                    <div class="inner">
                        <p><g:message code="sidebar.schedule.name"/> </p>

                        <h3>${jadwal}</h3>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fas fa-clipboard-list"></i>
                    </div>
                    <a href="${createLink(controller: "jadwal", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                        <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                    </a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small card -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <p><g:message code="sidebar.year.name"/> </p>

                        <h3>${ta}</h3>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fas fa-calendar-alt"></i>
                    </div>
                    <a href="${createLink(controller: "tahunAkademik", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                        <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-6">
                <!-- small card -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <p><g:message code="sidebar.score.name"/> </p>

                        <h3>${nilai}</h3>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fas fa-book-reader"></i>
                    </div>
                    <a href="${createLink(controller: "nilai", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                        <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                    </a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small card -->
                <div class="small-box bg-success">
                    <div class="inner">
                        <p><g:message code="sidebar.krs.name"/> </p>

                        <h3>${krs}</h3>
                    </div>
                    <div class="icon">
                        <i class="nav-icon fas fa-clipboard"></i>
                    </div>
                    <a href="${createLink(controller: "krsMahasiswa", action: "index", params: [lang: params.lang ?: null])}" class="small-box-footer">
                        <g:message code="card.see.name"/> <i class="fas fa-arrow-circle-right"></i>
                    </a>
                </div>
            </div>
        </div>
    </sec:ifAllGranted>

    <sec:ifAllGranted roles="ROLE_USER">
        <div class="row">

            <div class="col-md-3 offset-1">
                <!-- Profile Image -->
                <div class="card card-primary card-outline">
                    <div class="card-body box-profile">
                        <div class="text-center">
                            <i class="fas fa-user-graduate fa-4x"></i>
                        </div>

                        <h3 class="profile-username text-center">${mhs.nama}</h3>

                        <ul class="list-group list-group-unbordered mb-3">
                            <li class="list-group-item">
                                <b><g:message code="sidebar.krs.name"/></b>
                                <a href="${createLink(controller: "krsMahasiswa", action: "index", params: [lang: params.lang ?: null])}" class="badge badge-pill badge-primary float-right">
                                    ${krsMahasiswa}
                                </a>
                            </li>
                            <li class="list-group-item">
                                <b>Nilai</b>
                                <a href="${createLink(controller: "khsMahasiswa", action: "index", params: [lang: params.lang ?: null])}" class="badge badge-pill badge-warning float-right">
                                    ${khsMahasiswa}
                                </a>
                            </li>
                            <li class="list-group-item">
                                <b>Jadwal</b>
                                <a href="${createLink(controller: "jadwalMahasiswa", action: "index", params: [lang: params.lang ?: null])}" class="badge badge-pill badge-success float-right">
                                    ${jadwalMahasiswa}
                                </a>
                            </li>
                        </ul>

                        <button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#exampleModal">
                            Edit Profile
                        </button>
                    </div>
                    <!-- /.card-body -->
                </div>
            </div>

            <div class="col-md-7">
                <!-- About Me Box -->
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Profile</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <strong><i class="fas fa-book mr-1"></i> Nim</strong>

                        <p class="text-muted">
                            ${mhs.nim}
                        </p>

                        <hr>

                        <strong><i class="fas fa-map-marker-alt mr-1"></i> Alamat</strong>

                        <p class="text-muted">${mhs.alamat}</p>

                        <hr>

                        <strong><i class="fas fa-pencil-alt mr-1"></i> Tanggal Lahir</strong>

                        <p class="text-muted">
                            ${mhs.tanggalLahir}
                        </p>

                        <hr>

                        <strong><i class="fas fa-university mr-1"></i> No Telephone</strong>

                        <p class="text-muted">${mhs.noTelp}</p>

                        <hr>

                        <strong><i class="far fa-file-alt mr-1"></i> Jurusan</strong>

                        <p class="text-muted">${mhs.jurusan.nama}</p>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
        </div>


        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Edit Profile</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <g:form action="update" role="form" id="${mhs.id}">
                            <div class="card-body">
                                <div class="form-group">
                                    <label>Nim</label>
                                    <input required name="nim" class="form-control" value="${mhs.nim}"/>
                                </div>
                                <div class="form-group">
                                    <label><g:message code="table.field.name"/> </label>
                                    <input disabled name="nama" class="form-control" value="${mhs.nama}"/>
                                </div>
                                <div class="form-group">
                                    <label><g:message code="table.field.address"/> </label>
                                    <input required name="alamat" class="form-control" value="${mhs.alamat}"/>
                                </div>
                                <div class="form-group">
                                    <label><g:message code="table.field.date"/> </label>
                                    <input required type="date" name="tanggalLahir" class="form-control" value="${mhs.tanggalLahir}"/>
                                </div>
                                <div class="form-group">
                                    <label><g:message code="table.field.phone"/> </label>
                                    <input required name="noTelp" class="form-control" value="${mhs.noTelp}"/>
                                </div>
                                <div class="form-group">
                                    <label><g:message code="table.field.major"/> </label>
                                    <select name="jurusan" class="custom-select">
                                        <g:each in="${jurusanMahasiswa}" var="jur">
                                            <option value=${jur.id}>${jur.nama}</option>
                                        </g:each>
                                    </select>
                                </div>
                                <g:actionSubmit value="${message(code: "button.update")}" action="update" class="btn btn-primary float-right" />
                            </div>
                            <!-- /.card-body -->
                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </sec:ifAllGranted>

</body>
</html>