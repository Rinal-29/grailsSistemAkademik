<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/11/20
  Time: 11.30
--%>
<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

    <h1 class="mb-3">Daftar Jadwal</h1>
    <div class="col-md-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Tabel Jadwal</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
                <table id="myTable" class="table table-bordered display">
                    <thead>
                    <tr>
                        <th>Dosen</th>
                        <th>Matakuliah</th>
                        <th>Hari</th>
                        <th>Jam</th>
                        <th>Tahun Akademik</th>
                        <th>Ruangan</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${listJadwal}" var="jadwal">
                        <tr>
                            <td>${jadwal.dosen.nama}</td>
                            <td>${jadwal.mataKuliah.namaMatkul}</td>
                            <td>${jadwal.hari}</td>
                            <td>${jadwal.jam}</td>
                            <td>${jadwal.tahunAkademik.priode}</td>
                            <td>${jadwal.ruangan.namaRuangan}</td>
                            <td class="text-center">
                                <g:link action="edit"  id="${jadwal.id}" class="btn btn-success btn-sm"><i class="fas fa-edit"></i></g:link>
                                <g:link action="delete" id="${jadwal.id}" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i></g:link>
                            </td>
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
            <div class="card-footer clearfix">
                <g:link action="create" class="btn btn-primary float-right">Tambah Jadwal</g:link>
            </div>
        </div>
    </div>

<g:render template="/layouts/Footer"/>