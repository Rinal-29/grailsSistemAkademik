<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 15.33
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Tambah Daftar Jurusan</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1>Tambah Daftar Jurusan</h1>
    <div class="card card-primary col-md-10">
    <!-- form start -->
        <g:form action="save" role="form">
            <div class="card-body">
                <div class="form-group">
                    <label>Nama Jurusan</label>
                    <g:textField name="nama" class="form-control" placeholder="Masukkan Nama Jurusan"/>
                </div>
                <div class="form-group">
                    <label>Fakultas</label>
                    <g:textField name="fakultas" class="form-control" placeholder="Masukkan Nama Fakultas"/>
                </div>
                <g:actionSubmit value="Tambah" action="save" class="btn btn-primary"/>
            </div>
            <!-- /.card-body -->
        </g:form>
    </div>
</body>
</html>