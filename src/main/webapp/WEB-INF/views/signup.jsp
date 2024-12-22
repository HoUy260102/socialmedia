<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/9/2024
  Time: 4:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/common/taglib.jsp"%>	

<html>
<head>
    <title>Title</title>
    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Major+Mono+Display" rel="stylesheet">
    <link href='https://cdn.jsdelivr.net/npm/boxicons@1.9.2/css/boxicons.min.css' rel='stylesheet'>

    <!-- Styles -->
    <link href="assets/css/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/components.css" rel="stylesheet">
    <link href="assets/css/auth.css" rel="stylesheet">
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
            <form action="/signupcheck" method="POST" id="formsignup" class="pt-5">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="firstName" value="${userSignUp.firstName}" class="form-control" placeholder="First Name">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <input type="text" name="lastName" value="${userSignUp.lastName}" class="form-control" placeholder="Last Name">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="email" class="form-control" name="email" value="${userSignUp.email}" placeholder="Email Address">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="form-group">
                            <input type="text" class="form-control" name="phoneNumber" value="${userSignUp.phoneNumber}" placeholder="Phone Number">
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <div class="form-group" style="margin-left: -15px;">
                                <input  class="form-control" type="date" name="dateOfBirth">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <input  type="password" class="form-control" name="password" value="${userSignUp.password}" placeholder="Password">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <input name="comfimePassword" type="password" class="form-control" placeholder="Confirm Password">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <p>${mes}</p>
                    </div>
                    <div class="col-md-12">
                        <p class="agree-privacy">By clicking the Sign Up button below you agreed to our privacy policy and terms of use of our website.</p>
                    </div>
                    <div class="col-md-6">
                        <span class="go-login">Already a member? <a href="/login">Sign In</a></span>
                    </div>
                    <div class="col-md-6 text-right">
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary sign-up">Sign Up</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="col-md-6 auth-bg-image d-flex justify-content-center align-items-center">
        <div class="auth-left-content mt-5 mb-5 text-center">
            <div class="text-white mt-5 mb-5">
                <h2 class="create-account mb-3">Create Account</h2>
                <p>Enter your personal details and start journey with us.</p>
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
