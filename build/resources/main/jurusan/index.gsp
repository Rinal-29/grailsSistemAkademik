<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 15.27
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Daftar Jurusan</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3">Daftar Jurusan</h1>
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Tabel Jurusan</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Nama</th>
                        <th>Fakultas</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${listJurusan}" var="jurusan">
                        <tr>
                            <td>
                                <g:link action="detail" id="${jurusan.id}" class="btn btn-link">${jurusan.nama}</g:link>
                            </td>
                            <td>${jurusan.fakultas}</td>
                            <td class="text-center">
                                <g:link action="edit"  id="${jurusan.id}" class="btn btn-success">Edit</g:link>
                                <g:link action="delete" id="${jurusan.id}" class="btn btn-danger">Delete</g:link>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
            <div class="card-footer clearfix">
                <g:link action="create" class="btn btn-primary float-right">Tambah Jurusan</g:link>
            </div>
        </div>
    </div>
</body>
</html>