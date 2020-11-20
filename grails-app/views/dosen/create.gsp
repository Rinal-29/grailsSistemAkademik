<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 09/11/20
  Time: 15.41
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Tambahkan Dosen</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1 class="mb-3"><g:message code="lecturer.header.add"/> </h1>

    <g:if test="${flash.message}">
        <div class="alert alert-warning alert-dismissible fade show col-md-10" role="alert">
            <div class="message">${flash.message} </div>
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
                    <label>Nip</label>
                    <g:textField name="nip" class="form-control" placeholder="Masukkan nip"/>
                </div>
                <div class="form-group">
                    <label><g:message code="table.field.name"/> </label>
                    <g:textField name="nama" class="form-control" placeholder="Masukkan Nama"/>
                </div>
                <div class="form-group">
                    <label><g:message code="table.field.address"/> </label>
                    <g:textField name="alamat" class="form-control" placeholder="Masukkan Alamat"/>
                </div>
                <div class="form-group">
                    <label><g:message code="table.field.major"/> </label>
                    <select name="jurusan" class="custom-select">
                        <g:each in="${jurusan}" var="jur">
                            <option value="${jur.id}">${jur.nama}</option>
                        </g:each>
                    </select>
                </div>
                <g:actionSubmit value="Tambah" action="save" class="btn btn-primary"/>
            </div>
            <!-- /.card-body -->
        </g:form>
    </div>
</body>
</html>