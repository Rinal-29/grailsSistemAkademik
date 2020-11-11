<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 11.42
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Jadwal</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1>Edit daftar jadwal</h1>
    <div class="card card-primary col-md-10">
<!-- form start -->
    <g:form action="update" role="form" id="${jadwal.id}">
        <div class="card-body">
            <div class="form-group">
                <label>Dosen</label>
                <select name="dosen" class="custom-select">
                    <g:each in="${dosen}" var="dsn">
                        <option value="${dsn.id}">${dsn.nama}</option>
                    </g:each>
                </select>
            </div>
            <div class="form-group">
                <label>MataKuliah</label>
                <select name="mataKuliah" class="custom-select">
                    <g:each in="${matkul}" var="kuliah">
                        <option value="${kuliah.id}">${kuliah.namaMatkul}</option>
                    </g:each>
                </select>
            </div>
            <div class="form-group">
                <label>Hari</label>
                <input type="date" name="hari" class="form-control" value="${jadwal.hari}"/>
            </div>
            <div class="form-group">
                <label>Jam</label>
                <input type="time" name="jam" class="form-control" value="${jadwal.jam}"/>
            </div>
            <div class="form-group">
                <label>Tahun Akademik</label>
                <select name="tahunAkademik" class="custom-select">
                    <g:each in="${tahunAkademik}" var="ta">
                        <option value="${ta.id}">${ta.priode}</option>
                    </g:each>
                </select>
            </div>
            <div class="form-group">
                <label>Ruangan</label>
                <select name="ruangan" class="custom-select">
                    <g:each in="${ruangan}" var="kelas">
                        <option value="${kelas.id}">${kelas.namaRuangan}</option>
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