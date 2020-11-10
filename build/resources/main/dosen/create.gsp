<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 09/11/20
  Time: 15.41
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Tambahkan Dosen</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3">Tambah Dosen</h1>
    <div class="card card-primary col-md-10">
    <!-- form start -->
        <g:form action="save" role="form" controller="dosen">
            <div class="card-body">
                <div class="form-group">
                    <label>Nip</label>
                    <g:textField name="nip" class="form-control" placeholder="Masukkan nip"/>
                </div>
                <div class="form-group">
                    <label>Nama</label>
                    <g:textField name="nama" class="form-control" placeholder="Masukkan Nama"/>
                </div>
                <div class="form-group">
                    <label>Alamat</label>
                    <g:textField name="alamat" class="form-control" placeholder="Masukkan Alamat"/>
                </div>
                <div class="form-group">
                    <label>Jurusan</label>
                    <select name="jurusan" class="custom-select">
                        <g:each in="${jurusan}" var="jur">
                            <option value="${jur.id}">${jur.nama}</option>
                        </g:each>
                    </select>
                </div>
                <g:actionSubmit value="Tambah" action="save" class="btn btn-primary"/>
            </div>
            <!-- /.card-body -->
        </g:form>
    </div>
</body>
</html>