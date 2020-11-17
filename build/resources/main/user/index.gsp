<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 16/11/20
  Time: 17.22
--%>

<g:render template="/layouts/Header"/>
<g:render template="/layouts/Navbar"/>
<g:render template="/layouts/Sidebar"/>

<h1 class="mb-3">Daftar User</h1>
<div class="col-md-6 offset-3">
    <div class="card">
        <div class="card-header">
            <h3 class="card-title">Tabel User Akun</h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
            <table id="myTable" class="table table-bordered display">
                <thead>
                <tr>
                    <th>Akun</th>
                </tr>
                </thead>
                <tbody>
                <g:each in="${users}" var="user">
                    <tr>
                        <td>${user.username}</td>
                    </tr>
                </g:each>
                </tbody>
            </table>
        </div>
        <!-- /.card-body -->
        <sec:ifAllGranted roles="ROLE_ADMIN">
            <div class="card-footer clearfix">
                <g:link action="create" class="btn btn-primary float-right">Tambah User</g:link>
            </div>
        </sec:ifAllGranted>
    </div>
</div>

<g:render template="/layouts/Footer"/>