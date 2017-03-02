<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no, minimal-ui" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="format-detection" content="address=no" />

    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <title>Users list :: Come On Baby</title>

    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="/resources/css/bootstrap/bootstrap-select.min.css" rel="stylesheet" />
    <link href="/resources/css/bootstrap/bootstrap-fileinput.min.css" rel="stylesheet" />
    <link href="/resources/css/bootstrap/bootstrap-datetimepicker.min.css" rel="stylesheet" />
    <link href="/resources/css/bootstrap/bootstrap-awesome-checkbox.min.css" rel="stylesheet" />

    <!-- JQuery -->
    <link href="/resources/css/jquery/jquery.fancybox.min.css" rel="stylesheet" />
    <link href="/resources/css/jquery/jquery.sweet-alert.min.css" rel="stylesheet" />

    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome/font-awesome.min.css" rel="stylesheet" />

    <!-- Data Tables -->
    <link href="/resources/css/dataTables/dataTables.bootstrap.min.css" rel="stylesheet" />
    <link href="/resources/css/dataTables/dataTables.responsive.min.css" rel="stylesheet" />

    <!-- Base -->
    <link href="/resources/css/signin.css" rel="stylesheet" />

    <!--[if lt IE 9]>
    <script src="/resources/js/dataTables/html5shiv.js"></script>
    <script src="/resources/js/dataTables/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<!-- Sign In -->
<c:url var="loginUrl" value="/login?${_csrf.parameterName}=${_csrf.token}"/>
<div class="container">
    <div class="card card-container">
        <img id="profile-img" class="profile-img-card" src="/resources/images/logo-big.png" />
        <p id="profile-name" class="profile-name-card"></p>
        <form class="form-signin" action="${loginUrl}" method="post">

            <input type="text" id="inputId" class="form-control" placeholder="ID" name="ssoId" required autofocus>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required>

            <button class="btn btn-block btn-signin" type="submit">Sign in</button>
        </form>
    <%--    <a href="javascript:void(0);" class="forgot-password">Forgot the password?</a>--%>
    </div>
</div>
<!-- #End Sign In -->

<!-- JQuery -->
<script src="/resources/js/jquery/jquery.min.js"></script>
<script src="/resources/js/jquery/jquery-ui.min.js"></script>
<script src="/resources/js/jquery/jquery.mousewheel.min.js"></script>
<script src="/resources/js/jquery/jquery.fancybox.min.js"></script>
<script src="/resources/js/jquery/jquery.sweet-alert.min.js"></script>
<script src="/resources/js/jquery/jquery.timeago.js"></script>
<script src="/resources/js/jquery/jquery.timeago.ko.js"></script>

<!-- Bootstrap -->
<script src="/resources/js/bootstrap/bootstrap.min.js"></script>
<script src="/resources/js/bootstrap/bootstrap-moment.min.js"></script>
<script src="/resources/js/bootstrap/bootstrap-datetimepicker.min.js"></script>
<script src="/resources/js/bootstrap/bootstrap-form-helpers.min.js"></script>
<script src="/resources/js/bootstrap/bootstrap-select.min.js"></script>
<script src="/resources/js/bootstrap/bootstrap.validator.min.js"></script>
<script src="/resources/js/bootstrap/bootstrap-fileinput.min.js"></script>

<!-- Data Tables -->
<script src="/resources/js/dataTables/dataTables.jquery.min.js"></script>
<script src="/resources/js/dataTables/dataTables.bootstrap.min.js"></script>
<script src="/resources/js/dataTables/dataTables.responsive.min.js"></script>

<!-- Others -->
<script src="/resources/js/other/sortable.min.js"></script>
<script src="/resources/js/other/form-validation.min.js"></script>
<script src="/resources/js/other/pagination.min.js"></script>

<!-- Ckeditor -->
<script src="/resources/js/ckeditor/ckeditor.js"></script>

<!-- Base -->
<script src="/resources/js/main.js"></script>
</body>
</html>