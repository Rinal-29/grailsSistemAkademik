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
                    <th><g:message code="table.field.academic"/> </th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${listKrs}" var="krs">
                    <tr>
                        <td class="text-center">1</td>
                        <td>${krs.mataKuliah.namaMatkul}</td>
                        <td>${krs.mataKuliah.sks}</td>
                        <td>${krs.mataKuliah.semester}</td>
                        <td>${krs.tahunAkademik.priode}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
        <!-- /.card-body -->
        <div class="card-footer clearfix">
            <button type="button" class="btn btn-primary float-right" data-toggle="modal" data-target="#exampleModalLong">
                Tambah
            </button>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Tambah Data</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

            </div>
        </div>
    </div>
</div>

<g:render template="/layouts/Footer"/>