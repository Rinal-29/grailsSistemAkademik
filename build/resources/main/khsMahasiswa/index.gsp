<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 25/11/20
  Time: 10.42
--%>
<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>


<h1 class="mb-3"><g:message code="score.header.name"/></h1>
<div class="col-md-12">
    <div class="card">
        <div class="card-header bg-primary">
            <h3 class="card-title"><g:message code="score.table.name"/></h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table id="myTable" class="table table-bordered display">
                <thead>
                <tr>
                    <th>No</th>
                    <th>Mata Kuliah</th>
                    <th>SKS</th>
                    <th>Nilai UTS</th>
                    <th>Nilai UAS</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${listKhs}" var="khs">
                    <tr>
                        <td class="text-center">1</td>
                        <td>${khs.mataKuliah.namaMatkul}</td>
                        <td>${khs.mataKuliah.sks}</td>
                        <td>${khs.uts}</td>
                        <td>${khs.uas}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
        <!-- /.card-body -->
    </div>
</div>

<g:render template="/layouts/Footer"/>