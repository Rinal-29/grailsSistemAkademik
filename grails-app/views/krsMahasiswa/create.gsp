<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 26/11/20
  Time: 11.28
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

<h1 class="mb-3"><g:message code="courses.header.name"/> </h1>
<g:if test="${flash.message}">
    <div class="alert alert-warning alert-dismissible fade show col-md-12" role="alert">
        <div class="message">${flash.message}</div>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
</g:if>

<g:form action="save" class="row">
<div class="col-md-12">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title mr-3"><g:message code="courses.header.name"/> </h3>
            <div class="float-right form-inline">
                <g:form action="create">
                    <select name="semester" class="semester-select custom-select mr-3">
                        <option value="null"><g:message code="semester.chose"/> </option>
                        <option value="ganjil"><g:message code="semester.odd"/> </option>
                        <option value="genap"><g:message code="semester.even"/> </option>
                    </select>
                    <g:actionSubmit value="${message(code: "button.choose")}" action="create" class="btn btn-outline-primary float-right"/>
                </g:form>
            </div>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <h4 class="text-bold text-center"><g:message code="header.table.krs"/></h4>
            <table id="myTable" class="table table-bordered display">
                <thead>
                <tr>
                    <th>No</th>
                    <th><g:message code="table.filed.courses"/> </th>
                    <th>SKS</th>
                    <th>Semester</th>
                    <th>Pilih Matakuliah</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${listMatkul}" var="matkul">
                    <tr>
                        <td class="text-center">1</td>
                        <td>${matkul.namaMatkul}</td>
                        <td class="rowSks">${matkul.sks}</td>
                        <td>${matkul.semester}</td>
                        <td class="text-center">
                            <input id="checkedMatkul" class="sks" type="checkbox" name="mataKuliah" value="${matkul.id}" data-sks="${matkul.sks}">
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>
            <span class="matkulTot"><strong><g:message code="total.course"/> = </strong></span> <span><strong class="matkulNum">0</strong></span>
            <br>
            <span class="sksTot"><strong><g:message code="total.sks"/> = </strong></span> <span><strong class="sksNum">0</strong></span>
            <br>
            <span class="sksError text-danger"></span>
            </div>
            <!-- /.card-body -->
            <div class="card-footer clearfix">
                <g:actionSubmit onClick="return confirm('${message(code: "message.validation")}')" value="${message(code: "button.validation")}" action="save" class="btn btn-primary float-right"/>
            </div>
    </div>
</div>
</g:form>

<g:render template="/layouts/Footer"/>