<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 14.37
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Data Dosen</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3">Edit Data Dosen</h1>
    <div class="card card-primary col-md-10">
    <!-- form start -->
        <g:form action="update" role="form" id="${dosen.id}">
            <div class="card-body">
                <div class="form-group">
                    <label>Nip</label>
                    <g:textField name="nim" class="form-control" value="${dosen.nip}"/>
                </div>
                <div class="form-group">
                    <label>Nama</label>
                    <g:textField name="nama" class="form-control" value="${dosen.nama}"/>
                </div>
                <div class="form-group">
                    <label>Alamat</label>
                    <g:textField name="alamat" class="form-control" value="${dosen.alamat}"/>
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