<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 09/11/20
  Time: 09.22
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Daftar Akun</title>
    <meta name="layout"content="main">
</head>
<body>
    <h1>Daftar Akun</h1>
<div class="col-md-12">
    <div class="card">
        <div class="card-header">

        <!-- /.card-header -->
        <div class="card-body">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Username</th>
                    <th>Email</th>
                    <th>Tanggal Buat</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${listAkun}" var="akun">
                    <tr>
                        <td>${akun.name}</td>
                        <td>${akun.email}</td>
                        <td>${akun.date}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
    </div>
    </div>
</div>
</body>
</html>