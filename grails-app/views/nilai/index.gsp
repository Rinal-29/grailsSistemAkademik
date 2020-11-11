<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 10.25
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Daftar Nilai</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3">Daftar Nilai</h1>
        <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Tabel Mahasiswa</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Nama</th>
                        <th>Nim</th>
                        <th>Matakuliah</th>
                        <th>Nilai UTS</th>
                        <th>Nilai UAS</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${listNilai}" var="nilaiMhs">
                        <tr>
                            <td>${nilaiMhs.nama}</td>
                            <td>${nilaiMhs.nim}</td>
                            <td>${nilaiMhs.mataKuliah.namaMatkul}</td>
                            <td>${nilaiMhs.uts}</td>
                            <td>${nilaiMhs.uas}</td>
                            <td class="text-center">
                                <g:link action="edit"  id="${nilaiMhs.id}" class="btn btn-success">Edit</g:link>
                                <g:link action="delete" id="${nilaiMhs.id}" class="btn btn-danger">Delete</g:link>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
            <div class="card-footer clearfix">
                <g:link action="create" class="btn btn-primary float-right">Tambah Nilai</g:link>
            </div>
        </div>
    </div>
</body>
</html>