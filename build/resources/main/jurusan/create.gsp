<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/11/20
  Time: 15.33
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Tambah Daftar Jurusan</title>
    <meta name="layout" content="main">
</head>
<body>
    <h1><g:message code="major.header.add"/></h1>
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
                    <label><g:message code="table.field.major"/></label>
                    <g:textField name="nama" class="form-control" placeholder="${message(code: "placeholder.major")}"/>
                </div>
                <div class="form-group">
                    <label><g:message code="table.field.faculty"/></label>
                    <g:textField name="fakultas" class="form-control" placeholder="${message(code: "placeholder.faculty")}"/>
                </div>
                <g:actionSubmit value="${message(code: "button.add")}" action="save" class="btn btn-primary"/>
            </div>
            <!-- /.card-body -->
        </g:form>
    </div>
</body>
</html>