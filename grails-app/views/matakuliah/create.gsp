<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 09/11/20
  Time: 16.19
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Tambah MataKuliah</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3">Tambah Matakuliah</h1>
    <div class="card card-primary col-md-10">
<!-- form start -->
    <g:form action="save" role="form">
        <div class="card-body">
            <div class="form-group">
                <label>Nama Matakuliah</label>
                <g:textField name="namaMatkul" class="form-control" placeholder="Masukkan Nama Matakuliah"/>
            </div>
            <div class="form-group">
                <label>SKS</label>
                <g:textField name="sks" class="form-control" placeholder="Masukkan jumlah sks"/>
            </div>
            <div class="form-group">
                <label>Semester</label>
                <g:textField name="semester" class="form-control" placeholder="Masukkan Semester"/>
            </div>
            <g:actionSubmit value="Tambah Matakuliah" action="save" class="btn btn-primary"/>
        </div>
        <!-- /.card-body -->
    </g:form>
</div>
</body>
</html>