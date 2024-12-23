<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/9/2024
  Time: 4:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/common/taglib.jsp"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css?family=Major+Mono+Display" rel="stylesheet">
    <link href='https://cdn.jsdelivr.net/npm/boxicons@1.9.2/css/boxicons.min.css' rel='stylesheet'>
    <!-- Styles -->
    <link href="assets/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/components.css" rel="stylesheet">
    <link href="assets/css/auth.css" rel="stylesheet">
    <link href="assets/css/forms.css" rel="stylesheet">
    <link href="assets/css/media.css" rel="stylesheet">

</head>
<body>
    <div class="row ht-100v flex-row-reverse no-gutters">
        <div class="col-md-6 d-flex justify-content-center align-items-center">
            <div class="signup-form">
                <div class="auth-logo text-center mb-5">
                    <div class="row">
                        <div class="col-md-2">
                            <img src="assets/images/logo-64x64.png" class="logo-img" alt="Logo">
                        </div>
                        <div class="col-md-10">
                            <p>Argon Social Network</p>
                            <span>Design System</span>
                        </div>
                    </div>
                </div>
                <form:form action="/j_spring_security_check" method="post">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="form-group">
                                <input type="text" class="form-control" name="username" value="${username}" placeholder="Email Address">
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <input type="password" class="form-control" name="password" placeholder="Password">
                            </div>
                        </div>
                        <div class="col-md-12 mb-3">
                            <a href="forgot-password.html">Forgot password?</a>
                        </div>
                        <div class="col-md-6">
                            <label class="custom-control material-checkbox">
                                <input type="checkbox" class="material-control-input">
                                <span class="material-control-indicator"></span>
                                <span class="material-control-description">Remember Me</span>
                            </label>
                        </div>
                        <div class="col-md-12">
                            <span class="material-control-description" style="color: red">${mes}</span>
                        </div>
                        <div class="col-md-12 text-right">
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary sign-up">Sign In</button>
                            </div>
                        </div>
                        <div class="col-md-12 text-center mt-5">
                            <span class="go-login">Not yet a member? <a href="/signup">Sign Up</a></span>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
        <div class="col-md-6 auth-bg-image d-flex justify-content-center align-items-center">
            <div class="auth-left-content mt-5 mb-5 text-center">
                <div class="text-white mt-5 mb-5">
                    <h2 class="create-account mb-3">Welcome Back</h2>
                    <p>Thank you for joining. Updates and new features are released daily.</p>
                </div>
                <div class="auth-quick-links">
                    <a href="#" class="btn btn-outline-primary">Purchase template</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Core -->
    <script src="assets/js/jquery/jquery-3.3.1.min.js"></script>
    <script src="assets/js/popper/popper.min.js"></script>
    <script src="assets/js/bootstrap/bootstrap.min.js"></script>
    <!-- Optional -->
    <script src="assets/js/app.js"></script>

</body>
</html>
