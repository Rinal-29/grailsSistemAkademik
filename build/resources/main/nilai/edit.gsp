<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 10.45
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Edit Nilai Mahasiswa</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1>Edit Nilai Mahasiswa</h1>
    <div class="card card-primary col-md-10">
    <!-- form start -->
        <g:form action="update" role="form" id="${nilaiMhs.id}">
            <div class="card-body">
                <div class="form-group">
                    <label>Nama</label>
                    <g:textField name="nama" class="form-control" value="${nilaiMhs.nama}"/>
                </div>
                <div class="form-group">
                    <label>Nim</label>
                    <g:textField name="nim" class="form-control" value="${nilaiMhs.nim}"/>
                </div>
                <div class="form-group">
                    <label>Matakuliah</label>
                    <select name="mataKuliah" class="custom-select">
                        <g:each in="${listMatkul}" var="matkul">
                            <option value="${matkul.id}">${matkul.namaMatkul}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group">
                    <label>Nilai UTS</label>
                    <g:textField name="uts" class="form-control" value="${nilaiMhs.uts}"/>
                </div>
                <div class="form-group">
                    <label>Nilai UAS</label>
                    <g:textField name="uas" class="form-control" value="${nilaiMhs.uas}"/>
                </div>
                <g:actionSubmit value="update" class="btn btn-primary"/>
            </div>
            <!-- /.card-body -->
        </g:form>
    </div>
</body>
</html>