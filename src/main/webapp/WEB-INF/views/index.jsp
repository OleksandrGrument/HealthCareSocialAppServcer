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

    <title>Welcome to Administration :: Come On Baby</title>

    <%@ include file="headerStyles.jsp" %>

    <!-- SignIn page -->
    <link href="/resources/css/signin.css" rel="stylesheet" />

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

<%@ include file="footerJavaScript.jsp" %>

</body>
</html>