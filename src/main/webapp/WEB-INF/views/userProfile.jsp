<%@ page import="com.ComeOnBaby.model.AppUser" %>
<%@ page import="com.ComeOnBaby.model.Preferences" %>
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

    <title>User profile :: Come On Baby</title>

    <%@ include file="headerStyles.jsp" %>

</head>
<body>

<!-- Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <div id="sidebar-wrapper">

        <%@ include file="leftCategoriesMenu.jsp" %>

    </div>
    <!-- #End Sidebar -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

        <%@ include file="topLine.jsp" %>

        <!-- Content section -->
        <section class="container-fluid content">
            <h3><i class="fa fa-user"></i>User profile</h3>

            <table class="user-profile-table">

                <%AppUser user = (AppUser) request.getAttribute("user");%>
                <%Preferences preferences = user.getPreferences();%>
                <tbody>
                <!-- Base information -->
                <tr><td colspan="2" class="header pt0">Base information</td></tr>
                <tr>
                    <td class="title">Name:</td>
                    <td><%if (preferences!=null) out.print(preferences.getNickname());%></td>
                </tr>
                <tr>
                    <td class="title">E-mail:</td>
                    <td><a href="mailto:<%out.print(user.getEmail());%>"><%out.print(user.getEmail());%></a></td>
                </tr>

                <tr>
                    <td class="title">Sex:</td>
                    <%if (preferences!=null) if(preferences.getGender()!= null) {
                        if(preferences.getGender().equals("true")){%>
                    <td><i class="fa fa-mars"></i> <%out.print(" Man");%></td>
                    <%}else if(preferences.getGender().equals("false")){%>
                    <td><i class="fa fa-venus"></i> <%out.print(" Women");%></td>
                    <%}%>
                    <%}else if (preferences.getGender()== null){%>
                    <td><i class="fa fa-venus"></i> <%out.print("");%></td> %>
                    <%}%>
                </tr>
                <tr>
                    <td class="title">Birthday:</td>
                    <td><%out.print(preferences.getBirth_year());%></td>
                </tr>
                <tr>
                    <td class="title">City:</td>
                    <td><%--<%preferences.%>--%></td>
                </tr>
                <tr>
                    <td class="title">Address:</td>
                    <td><%out.print(preferences.getAddress());%></td>
                </tr>

                <!-- Personal information -->
                <tr><td colspan="2" class="header">Personal information</td></tr>
                <tr>
                    <td class="title">Menstrual cycle:</td>
                    <td><%out.print(preferences.getMenstrual_cycle());%></td>
                </tr>
                <tr>
                    <td class="title">Last menstrual date:</td>
                    <td><%out.print(preferences.getLast_cycle());%></td>
                </tr>
                <tr>
                    <td class="title">Height:</td>
                    <td><%out.print(preferences.getHeight());%></td>
                </tr>
                <tr>
                    <td class="title">Weight:</td>
                    <td><%out.print(preferences.getWeight());%></td>
                </tr>
                </tbody>
            </table>

            <div class="mt10">
                <a href="<%out.print("/cabinet/basic-questions/"+user.getId());%>" class="btn btn-default">Basic questions</a>
                <a href="<%out.print("/cabinet/monthly-report/"+user.getId());%>" class="btn btn-default">Monthly report</a>
                <a href="<%out.print("/cabinet/weekly-report/"+user.getId());%>" class="btn btn-default">Weekly report</a>
            </div>
            <div class="mt20 delimiter">
                <a href="<%out.print("/");%>" class="btn btn-default">Back</a>
            </div>

        </section>
        <!-- Content section -->

    </div>
    <!-- #End Page-content -->

</div>
<!-- #End Wrapper -->

<%@ include file="footerJavaScript.jsp" %>

</body>
</html>