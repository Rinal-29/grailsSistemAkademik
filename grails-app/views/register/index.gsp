<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 09/11/20
  Time: 10.14
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Buat Akun</title>

    <asset:stylesheet src="application.css"/>
</head>

<body>
<body class="hold-transition login-pagehold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href=""><b>Register</b> Page</a>
    </div>
    <!-- /.login-logo -->
    <div class="card">
        <div class="card-body login-card-body">
            <p class="login-box-msg">Buat Akun Anda</p>

            <g:form action="save">
                <div class="input-group mb-3">
                    <g:textField name="name" type="text" class="form-control" placeholder="Username"/>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-person-booth"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <g:textField name="email" type="email" class="form-control" placeholder="Email"/>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <g:passwordField name="password" type="password" class="form-control" placeholder="Password"/>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>


                <div class="social-auth-links text-center mb-3">
                    <g:actionSubmit action="save" value="Daftar" class="btn btn-block btn-danger mb-3"/>
                    <a href="../login/index" class="btn btn-block btn-primary">
                        kembali
                    </a>
                </div>
            </g:form>
            <!-- /.social-auth-links -->
        </div>
        <!-- /.login-card-body -->
    </div>
</div>


<asset:javascript src="application.js"/>
</body>
</body>
</html>