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

    <title>Page not found :: Come On Baby</title>

    <%@ include file="headerStyles.jsp" %>

    <!-- 404 error -->
    <link href="/resources/css/404.css" rel="stylesheet" />

</head>
<body>

<!-- 404 error page -->
<div class="container text-center error-404">
    <div><a href="/"><img src="/resources/images/logo-big.png" /></a></div>

    <%String error = (String) request.getAttribute("error");%>
    <%if(error==null){%>
    <div class="hit-the-floor">404</div>
    <h3>Page not found!</h3>
    <p>The page you are looking for could have been deleted or never have existed :( <br />We are sorry about it...</p>
    <a href="/" class="btn btn-primary">Go back to our homepage</a>
    <%} else {%>
    <div class="hit-the-floor">Error</div>
    <h3>Some error!</h3>
    <p><%out.print(error);%></p>
    <a href="/" class="btn btn-primary">Go back to our homepage</a>
    <%}%>


</div>
<!-- #End 404 error page -->

<%@ include file="footerJavaScript.jsp" %>

</body>
</html>