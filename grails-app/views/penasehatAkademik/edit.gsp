<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 11.17
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Penasehat Akademik</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3">Edit Penasehat Akademik</h1>
    <div class="card card-primary col-md-10">
    <!-- form start -->
        <g:form action="update" role="form" id="${penasehat.id}">
            <div class="card-body">
                <div class="form-group">
                    <label>Mahasiswa</label>
                    <select name="mahasiswa" class="custom-select">
                        <g:each in="${mahasiswa}" var="mhs">
                            <option value="${mhs.id}">${mhs.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label>Dosen</label>
                    <select name="dosen" class="custom-select">
                        <g:each in="${dosen}" var="dsn">
                            <option value="${dsn.id}">${dsn.nama}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label>Tahun Akademik</label>
                    <select name="tahunAkademik" class="custom-select">
                        <g:each in="${tahunAkademik}" var="ta">
                            <option value="${ta.id}">${ta.priode}</option>
                        </g:each>
                    </select>
                </div>
                <g:actionSubmit value="update" class="btn btn-primary"/>
            </div>
            <!-- /.card-body -->
        </g:form>
    </div>
</body>
</html>