<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 09.34
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Daftar Tahun Akademik</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3">Daftar Tahun Akademik</h1>
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Tabel Daftar Tahun Akademik</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <th>Tahun Akademik</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${listTA}" var="ta">
                        <tr>
                            <td>${ta.priode}</td>
                            <td class="text-center">
                                <g:link action="edit"  id="${ta.id}" class="btn btn-success">Edit</g:link>
                                <g:link action="delete" id="${ta.id}" class="btn btn-danger">Delete</g:link>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
            <div class="card-footer clearfix">
                <g:link action="create" class="btn btn-primary float-right">Tambah Tahun Akademik</g:link>
            </div>
        </div>
    </div>
</body>
</html>