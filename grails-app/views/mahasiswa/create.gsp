<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 10.13
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Masukkan Data Mahasiswa</title>
    <meta name="layout" content="main">
</head>

<body>
        <h1 class="mb-3">Masukkan Data Mahasiswa</h1>
        <div class="card card-primary col-md-10">
            <!-- form start -->
            <g:form action="save" role="form" controller="mahasiswa">
                <div class="card-body">
                    <div class="form-group">
                        <label>Nim</label>
                        <g:textField name="nim" class="form-control" placeholder="Masukkan Nim"/>
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
                        <label>Tanggal lahir</label>
                        <g:textField name="tanggalLahir" class="form-control" placeholder="Masukkan Tanggal Lahir"/>
                    </div>
                    <div class="form-group">
                        <label>No Telepon</label>
                        <g:textField name="noTelp" class="form-control" placeholder="Masukkan Nomor Telepon"/>
                    </div>
                    <div class="form-group">
                        <label>Jurusan</label>
                        <select name="jurusan" class="custom-select">
                            <g:each in="${jurusan}" var="jur">
                                <option value="${jur.id}">${jur.nama}</option>
                            </g:each>
                        </select>
                    </div>
                    <g:actionSubmit value="save" class="btn btn-primary"/>
                </div>
                <!-- /.card-body -->
            </g:form>
        </div>
</body>
</html>