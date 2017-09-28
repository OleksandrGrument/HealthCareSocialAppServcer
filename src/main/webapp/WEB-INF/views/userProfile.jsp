<%@ page import="com.HealthCareSocialAppServer.model.AppUser" %>
<%@ page import="com.HealthCareSocialAppServer.model.Preferences" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no, minimal-ui" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="format-detection" content="address=no" />

    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <title>프로필 :: 컴온베이비</title>

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
            <h3><i class="fa fa-user"></i>프로필</h3>

            <table class="user-profile-table">

                <%AppUser user = (AppUser) request.getAttribute("user");%>
                <%Preferences preferences = user.getPreferences();%>
                <tbody>
                <!-- Base information -->
                <tr><td colspan="2" class="header pt0">기본 정보</td></tr>
                <tr>
                    <td class="title">닉네임:</td>
                    <td><%if (preferences!=null) out.print(preferences.getNickname());%></td>
                </tr>
                <tr>
                    <td class="title">이메일:</td>
                    <td><a href="mailto:<%out.print(user.getEmail());%>"><%out.print(user.getEmail());%></a></td>
                </tr>

                <tr>
                    <td class="title">성별:</td>
                    <%if (preferences!=null) if(preferences.getGender()!= null) {
                        if(preferences.getGender().equals("true")){%>
                            <td><i class="fa fa-mars"></i> <%out.print(" 남성");%></td>
                        <%}else if(preferences.getGender().equals("false")){%>
                            <td><i class="fa fa-venus"></i> <%out.print(" 여성");%></td>
                        <%}%>
                    <%}else if (preferences.getGender()== null){%>
                        <td><i class="fa fa-venus"></i> <%out.print("");%></td> %>
                    <%}%>
                </tr>
                <tr>
                    <td class="title">출생연도:</td>
                    <td><%out.print(preferences.getBirth_year());%></td>
                </tr>
                <tr>
                    <td class="title">거주지역:</td>
                    <td><%--<%preferences.%>--%></td>
                </tr>
                <tr>
                    <td class="title">주소:</td>
                    <td><%out.print(preferences.getAddress());%></td>
                </tr>

                <!-- Personal information -->
                <tr><td colspan="2" class="header">개인 정보</td></tr>
                <tr>
                    <td class="title">생리주기:</td>
                    <td><%out.print(preferences.getMenstrual_cycle());%></td>
                </tr>
                <tr>
                    <td class="title">마지막 생리시작일:</td>
                    <td><%out.print(preferences.getLast_cycle());%></td>
                </tr>
                <tr>
                    <td class="title">키:</td>
                    <td><%out.print(preferences.getHeight());%></td>
                </tr>
                <tr>
                    <td class="title">몸무게:</td>
                    <td><%out.print(preferences.getWeight());%></td>
                </tr>
                </tbody>
            </table>

            <div class="mt10">
                <a href="<%out.print("/users/basic-questions/"+user.getId());%>" class="btn btn-default"><i class="fa fa-question-circle-o"></i> 기초질문사항</a>
                <a href="<%out.print("/users/monthly-report/"+user.getId());%>" class="btn btn-default"><i class="fa fa-bar-chart"></i> 월 간  리 포 트</a>
                <a href="<%out.print("/users/weekly-report/"+user.getId());%>" class="btn btn-default"><i class="fa fa-bar-chart"></i> 주 간  리 포 트</a>
            </div>
            <div class="mt20 delimiter">
                <a href="/" class="btn btn-default">뒤로</a>
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