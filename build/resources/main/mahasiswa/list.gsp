<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 09.25
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Daftar Mahasiswa</title>
    <meta name="layout" content="main">
</head>

<body>
    <h1 class="mb-3">Daftar Mahasiswa</h1>
    <div class="col-md-12">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Tabel Mahasiswa</h3>
        </div>

        <table id="myTable" class="display">
            <thead>
            <tr>
                <th>Column 1</th>
                <th>Column 2</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Row 1 Data 1</td>
                <td>Row 1 Data 2</td>
            </tr>
            <tr>
                <td>Row 2 Data 1</td>
                <td>Row 2 Data 2</td>
            </tr>
            </tbody>
        </table>

        <!-- /.card-header -->
        <div class="card-body">
            <table id="" class="table table-bordered display">
                <thead>
                <tr>
                    <th>Nim</th>
                    <th>Nama</th>
                    <th>Alamat</th>
                    <th>Tanggal Lahir</th>
                    <th>No Telepon</th>
                    <th>Jurusan</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                    <g:each in="${mahasiswa}" var="mhs">
                        <tr>
                            <td>${mhs.nim}</td>
                            <td>${mhs.nama}</td>
                            <td>${mhs.alamat}</td>
                            <td>${mhs.tanggalLahir}</td>
                            <td>${mhs.noTelp}</td>
                            <td>${mhs.jurusan.nama}</td>
                            <td class="text-center">
                                <g:link action="edit"  id="${mhs.id}" class="btn btn-success">Edit</g:link>
                                <g:link action="delete" id="${mhs.id}" class="btn btn-danger">Delete</g:link>
                            </td>
                        </tr>
                    </g:each>
                </tbody>
            </table>
        </div>
        <!-- /.card-body -->
        <div class="card-footer clearfix">
            <g:link action="create" class="btn btn-primary float-right">Tambah Mahasiswa</g:link>
        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
</body>
</html>