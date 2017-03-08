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
            <h3><i class="fa fa-user"></i>Users list</h3>

            <div class="mb20">
                <a class="btn btn-primary" href="/users/download/">Download Excel</a>
            </div>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Login</th>
                    <th>E-mail</th>
                    <th>Birthday</th>
                    <th>Classification</th>
                    <th>Sex</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>Login</th>
                    <th>E-mail</th>
                    <th>Birthday</th>
                    <th>Classification</th>
                    <th>Sex</th>
                </tr>
                </tfoot>

                <!-- Items list -->
                <tbody>


               <%
                   ArrayList<AppUser> users = (ArrayList<AppUser>) request.getAttribute("users");
                   Iterator<AppUser> appUserIterator = users.iterator();

                   while (appUserIterator.hasNext()) {
                        AppUser user = appUserIterator.next();
                        Preferences preferences = user.getPreferences();
               %>
                    <tr>
                        <td><%out.print(user.getId());%></td>
                        <td><%if (preferences!=null) %><a href="<%out.print("/users/user-profile/"+user.getId());%>">   <% out.print(preferences.getNickname());%></a></td>
                        <td><%out.print(user.getEmail());%></td>
                        <td><%if (preferences!=null) out.print(preferences.getBirth_year());%></td>
                        <td><%out.print(user.getLoginType());%></td>

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
