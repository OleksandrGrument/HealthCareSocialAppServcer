<%@ page import="com.ComeOnBaby.model.AppUser" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.ComeOnBaby.model.Preferences" %>
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

    <title>회원관리 :: 컴온베이비</title>

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
            <h3><i class="fa fa-user"></i>회원관리</h3>

            <div class="mb20">
                <a class="btn btn-primary" href="/users/download/"><i class="fa fa-file-excel-o mr10"></i>엑셀 다운로드</a>
            </div>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th width="20">ID</th>
                    <th>닉네임</th>
                    <th>이메일</th>
                    <th width="100">출생연도</th>
                    <th width="100">회원분류</th>
                    <th width="100">성별</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>닉네임</th>
                    <th>이메일</th>
                    <th>출생연도</th>
                    <th>회원분류</th>
                    <th>성별</th>
                </tr>
                </tfoot>

                <!-- Items list -->
                <tbody>


               <%
                   ArrayList<AppUser> users = (ArrayList<AppUser>) request.getAttribute("users");
                   Iterator<AppUser> appUserIterator = users.iterator();

                   while (appUserIterator.hasNext()) {
                        AppUser user = appUserIterator.next();
                        if (user.getId()!=1 && user.getPreferences().getGender()!=null){
                        Preferences preferences = user.getPreferences();
               %>
                        <tr>
                            <td align="center"><%out.print(user.getId());%></td>
                            <td><%if (preferences!=null) %><a href="<%out.print("/users/user-profile/"+user.getId());%>"><% out.print(preferences.getNickname());%></a></td>
                            <td><a href="mailto:<%out.print(user.getEmail());%>"><%out.print(user.getEmail());%></a></td>
                            <td align="center"><%if (preferences!=null) out.print(preferences.getBirth_year());%>년</td>
                            <td align="center"><%out.print(user.getLoginType());%></td>

                            <%if (preferences!=null) if(preferences.getGender()!= null) {
                                if(preferences.getGender().equals("true")){%>
                                    <td align="center"><i class="fa fa-mars"></i> <%out.print(" 남성");%></td>
                                <%}else if(preferences.getGender().equals("false")){%>
                                    <td align="center"><i class="fa fa-venus"></i> <%out.print(" 여성");%></td>
                                <%}%>
                            <%}else if (preferences.getGender()== null){%>
                                <td align="center"><i class="fa fa-venus"></i> <%out.print("");%></td> %>
                            <%}%>
                        </tr>
                    <%}%>
                <%}%>

                </tbody>
                <!-- #End Items list -->

            </table>

        </section>
        <!-- Content section -->

    </div>
    <!-- #End Page-content -->

</div>
<!-- #End Wrapper -->

<%@ include file="footerJavaScript.jsp" %>

</body>
</html>
