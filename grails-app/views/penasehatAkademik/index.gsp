<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 10.50
--%>
<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>


    <h1 class="mb-3">Daftar Penasehat Akademik</h1>
    <div class="col-md-12">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Penasehat Akademik</h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table id="myTable" class="table table-bordered display">
                <thead>
                <tr>
                    <th>Mahasiswa</th>
                    <th>Dosen Penasehat</th>
                    <th>Tahun Akademik</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${penasehat}" var="pa">
                    <tr>
                        <td>${pa.mahasiswa.nama}</td>
                        <td>${pa.dosen.nama}</td>
                        <td>${pa.tahunAkademik.priode}</td>
                        <td class="text-center">
                            <g:link action="edit"  id="${pa.id}" class="btn btn-success">Edit</g:link>
                            <g:link action="delete" id="${pa.id}" class="btn btn-danger">Delete</g:link>
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
        <!-- /.card-body -->
        <div class="card-footer clearfix">
            <g:link action="create" class="btn btn-primary float-right">Tambah Penasehat Akademik</g:link>
        </div>
    </div>
    </div>

<g:render template="/layouts/Footer"/>