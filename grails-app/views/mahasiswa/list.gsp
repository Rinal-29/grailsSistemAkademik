<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 06/11/20
  Time: 09.25
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

<h1 class="mb-3">Daftar Mahasiswa</h1>
<div class="col-md-12">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Tabel Mahasiswa</h3>
        </div>

        <!-- /.card-header -->
        <div class="card-body">
            <table id="myTable" class="table table-bordered display">
                <thead>
                <tr>
                    <th>Nim</th>
                    <th>Nama</th>
                    <th>Alamat</th>
                    <th>Tanggal Lahir</th>
                    <th>No Telepon</th>
                    <th>Jurusan</th>
                    <sec:ifAllGranted roles="ROLE_ADMIN">
                        <th>Action</th>
                    </sec:ifAllGranted>
                </tr>
                </thead>
                <tbody>
                    <g:each in="${mahasiswa}" var="mhs">
                        <tr>
                            <td>${mhs.nim}</td>
                            <td>${mhs.nama}</td>
                            <td>${mhs.alamat}</td>
                            <td>${mhs.tanggalLahir}</td>
                            <td>${mhs.noTelp}</td>
                            <td>${mhs.jurusan.nama}</td>
                            <sec:ifAllGranted roles="ROLE_ADMIN">
                                <td class="text-center">
                                    <g:link action="edit"  id="${mhs.id}" class="btn btn-success btn-sm"><i class="far fa-edit"></i></g:link>
                                    <g:link action="delete" id="${mhs.id}" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></g:link>
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
                <g:link action="create" class="btn btn-primary float-right">Tambah Mahasiswa</g:link>
            </div>
        </sec:ifAllGranted>
    </div>
</div>

<g:render template="/layouts/Footer"/>