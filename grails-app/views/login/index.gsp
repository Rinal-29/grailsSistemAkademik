<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 09/11/20
  Time: 09.58
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login Page</title>

    <asset:stylesheet src="application.css"/>

</head>

<body class="hold-transition login-pagehold-transition login-page">

<div class="login-box">
    <div class="login-logo">
        <a href=""><b>Login</b> Page</a>
    </div>
    <!-- /.login-logo -->
    <div class="card">
        <div class="card-body login-card-body">
            <p class="login-box-msg">Masuk dengan akun anda</p>
            <g:form action="account" method="post" controller="login">
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

                <g:if test="${flash.message}">
                    <div class="message">${flash.message}</div>
                </g:if>

                <div class="social-auth-links text-center mb-3">
                    <g:actionSubmit value="Masuk" action="account" class="btn btn-block btn-primary mb-3"/>
                    <p>- Atau -</p>
                    <a href="../register/index" class="btn btn-block btn-danger">
                        Daftar!
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
</html>