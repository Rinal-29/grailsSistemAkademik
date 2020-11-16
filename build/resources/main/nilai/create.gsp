<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 10.30
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Masukkan Nilai</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3">Masukkan Nilai</h1>
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
                    <label>Nama</label>
                    <g:textField name="nama" class="form-control" placeholder="Masukkan Nama"/>
                </div>
                <div class="form-group">
                    <label>Nim</label>
                    <g:textField name="nim" class="form-control" placeholder="Masukkan Nim"/>
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
                    <g:textField name="uts" class="form-control" placeholder="Masukkan Nilai UTS"/>
                </div>
                <div class="form-group">
                    <label>Nilai UAS</label>
                    <g:textField name="uas" class="form-control" placeholder="Masukkan Nilai UAS"/>
                </div>
                <g:actionSubmit value="save" class="btn btn-primary"/>
            </div>
            <!-- /.card-body -->
        </g:form>
    </div>
</body>
</html>