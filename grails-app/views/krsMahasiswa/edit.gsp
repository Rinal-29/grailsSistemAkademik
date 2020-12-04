<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 27/11/20
  Time: 11.09
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>


<div class="col-md-12">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Edit Krs</h3>
        </div>
        <!-- /.card-header -->
    <div class="card-body">
        <h4 class="text-center mb-3 text-bold">Daftar KRS yang Telah Dipilih</h4>
        <g:form action="save">
            <table id="myTable" class="table table-bordered display">
                <thead>
                <tr>
                    <th>No</th>
                    <th><g:message code="table.filed.courses"/> </th>
                    <th>SKS</th>
                    <th>Semester</th>
                    <th><g:message code="table.field.action"/> </th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${krsMahasiswa}" var="matkul">
                    <tr>
                        <td class="text-center">1</td>
                        <td>${matkul.mataKuliah.namaMatkul}</td>
                        <td class="rowSks">${matkul.mataKuliah.sks}</td>
                        <td>${matkul.mataKuliah.semester}</td>
                        <td class="text-center">
                            <g:link onclick="return confirm('${message(code: "message.delete")}')" action="delete" id="${matkul.id}" params="[lang: params.lang]" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></g:link>
                            <input hidden checked class="sks" type="checkbox" name="mataKuliah" value="${matkul.mataKuliah.id}" data-sks="${matkul.mataKuliah.sks}">
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
                <g:actionSubmit value="Validasi" action="index" class="btn btn-primary float-right"/>
            </div>
        </g:form>
    </div>
</div>

<g:render template="/layouts/Footer"/>