<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 17.32
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Tambah Daftar Ruangan</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3">Tambah Daftar Ruangan</h1>
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
        <g:form action="save" role="form">
            <div class="card-body">
                <div class="form-group">
                    <label>Nama Ruangan</label>
                    <g:textField name="namaRuangan" class="form-control" placeholder="Masukkan Nama Ruangan"/>
                </div>
                <div class="form-group">
                    <label>Nama Matakuliah</label>
                    <select name="mataKuliah" class="custom-select">
                        <g:each in="${matkul}" var="kul">
                            <option value="${kul.id}">${kul.namaMatkul}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label>Nama Jurusan</label>
                    <select name="jurusan" class="custom-select">
                        <g:each in="${jurusan}" var="jur">
                            <option value="${jur.id}">${jur.nama}</option>
                        </g:each>
                    </select>
                </div>
                <g:actionSubmit value="Tambah Matakuliah" action="save" class="btn btn-primary"/>
            </div>
            <!-- /.card-body -->
        </g:form>
    </div>
</body>
</html>