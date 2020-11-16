<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 09/11/20
  Time: 12.32
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Data Mahasiswa</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3">Edit Data Mahasiswa</h1>

    <g:if test="${flash.message}">
        <div class="alert alert-warning alert-dismissible fade show col-md-10" role="alert">
            <div class="message">${flash.message}</div>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
    </g:if>

    <div class="card card-primary col-md-10">
    <!-- form start -->
        <g:form action="update" role="form" id="${mhs.id}">
            <div class="card-body">
                <div class="form-group">
                    <label>Nim</label>
                    <input required name="nim" class="form-control" value="${mhs.nim}"/>
                </div>
                <div class="form-group">
                    <label>Nama</label>
                    <input required name="nama" class="form-control" value="${mhs.nama}"/>
                </div>
                <div class="form-group">
                    <label>Alamat</label>
                    <input required name="alamat" class="form-control" value="${mhs.alamat}"/>
                </div>
                <div class="form-group">
                    <label>Tanggal Lahir</label>
                    <input required type="date" name="tanggalLahir" class="form-control" value="${mhs.tanggalLahir}"/>
                </div>
                <div class="form-group">
                    <label>No Telepon</label>
                    <input required name="noTelp" class="form-control" value="${mhs.noTelp}"/>
                </div>
                <div class="form-group">
                    <label>Jurusan</label>
                    <select name="jurusan" class="custom-select">
                        <g:each in="${jurusan}" var="jur">
                            <option value="${jur.id}">${jur.nama}</option>
                        </g:each>
                    </select>
                </div>
                <g:actionSubmit value="update" action="update" class="btn btn-primary" />
            </div>
            <!-- /.card-body -->
        </g:form>
    </div>
</body>
</html>