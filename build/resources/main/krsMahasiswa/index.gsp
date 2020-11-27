<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 25/11/20
  Time: 10.41
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

<h1 class="mb-3"><g:message code="krs.header.name"/>, <sec:username/></h1>
<div class="col-md-12">
    <div class="card">
        <div class="card-header bg-primary">
            <h3 class="card-title"><g:message code="krs.table.name"/> </h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table id="myTable" class="table table-bordered display">
                <thead>
                <tr>
                    <th>No</th>
                    <th><g:message code="table.filed.courses"/> </th>
                    <th>SKS</th>
                    <th>Semester</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${listKrs}" var="krs">
                    <tr>
                        <td class="text-center">1</td>
                        <td>${krs.mataKuliah.namaMatkul}</td>
                        <td>${krs.mataKuliah.sks}</td>
                        <td>${krs.mataKuliah.semester}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
        <!-- /.card-body -->
        <div class="card-footer clearfix">
            <g:link action="create" params="[lang: params.lang]" class="btn btn-primary float-right">Tambah</g:link>
%{--            <g:link action="edit" params="[lang: params.lang]" class="btn btn-warning float-right mr-3">Edit KRS</g:link>--}%
        </div>
    </div>
</div>

<g:render template="/layouts/Footer"/>