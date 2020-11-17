<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 11.58
--%>
<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

    <h1 class="mb-3">Daftar KRS</h1>
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
                    <th>Matakuliah</th>
                    <th>Tahun Akademik</th>
                    <th>Penasehat Akademik</th>
                    <sec:ifAllGranted roles="ROLE_ADMIN">
                        <th>Action</th>
                    </sec:ifAllGranted>
                </tr>
                </thead>
                <tbody>
                <g:each in="${lisKrs}" var="krs">
                    <tr>
                        <td>${krs.mahasiswa.nama}</td>
                        <td>${krs.mataKuliah.namaMatkul}</td>
                        <td>${krs.tahunAkademik.priode}</td>
                        <td>${krs.penasehatAkademik.dosen.nama}</td>
                        <sec:ifAllGranted roles="ROLE_ADMIN">
                            <td class="text-center">
                                <g:link action="edit"  id="${krs.id}" class="btn btn-success btn-sm"><i class="fas fa-edit"></i></g:link>
                                <g:link action="delete" id="${krs.id}" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></g:link>
                            </td>
                        </sec:ifAllGranted>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
        <!-- /.card-body -->
        <sec:ifAllGranted roles="ROLE_ADMIN">
            <div class="card-footer clearfix">
                <g:link action="create" class="btn btn-primary float-right">Tambah Daftar KRS</g:link>
            </div>
        </sec:ifAllGranted>
    </div>
</div>

<g:render template="/layouts/Footer"/>