<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 26/11/20
  Time: 11.28
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

<h1 class="mb-3">Daftar Matakuliah</h1>
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
            <h3 class="card-title mr-3">Daftar Mata Kuliah</h3>
            <div class="float-right form-inline">
                <g:form action="create">
                    <select name="semester" class="semester-select custom-select mr-3">
                        <option value="null">Pilih Semester</option>
                        <option value="ganjil">Semester Ganjil</option>
                        <option value="genap">Semester Genap</option>
                    </select>
                    <g:actionSubmit value="Submit" action="create" class="btn btn-outline-primary float-right"/>
                </g:form>
            </div>
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
                    <th>Aksi</th>
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
            <span class="matkulTot"><strong>Jumlah Matakuliah yang dipilih = </strong></span> <span><strong class="matkulNum">0</strong></span>
            <br>
            <span class="sksTot"><strong>Jumlah SKS yang diprogramkan = </strong></span> <span><strong class="sksNum">0</strong></span>
            <br>
            <span class="sksError text-danger"></span>
            </div>
            <!-- /.card-body -->
            <div class="card-footer clearfix">
                <g:actionSubmit value="Validasi" action="save" class="btn btn-primary float-right"/>
            </div>
    </div>
</div>
</g:form>

<g:render template="/layouts/Footer"/>