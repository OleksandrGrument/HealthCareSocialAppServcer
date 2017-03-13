<%@ page import="com.ComeOnBaby.model.AppUser" %>
<%@ page import="com.ComeOnBaby.model.Note" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
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

    <title>Monthly reports :: Come On Baby</title>

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
            <h3><i class="fa fa-bar-chart"></i>Monthly report</h3>

            <% AppUser user = (AppUser) request.getAttribute("user"); %>
            <% List<Note> notices = (List<Note>) request.getAttribute("notices"); %>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <%--<th>ID</th>--%>
                    <th>Generation month</th>
                    <th>Evaluation</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <%--<th>ID</th>--%>
                    <th>Generation month</th>
                    <th>Evaluation</th>
                </tr>
                </tfoot>

                <!-- Items list -->
                <tbody>
                <%
                    Date date = notices.get(0).getDate();
                    SimpleDateFormat dateFormat = new SimpleDateFormat("MM.yyyy");
                    SimpleDateFormat dateFormat1 = new SimpleDateFormat("MM/yyyy");
                %>

                <%for(Note note: notices){
                    if(!dateFormat.format(note.getDate()).equals(dateFormat.format(date))){%>
                        <tr>
                            <td><a href="<%out.print("/users/monthlyReportShow/"+user.getId()+"/"+dateFormat1.format(date));%>"><%out.print(dateFormat.format(date));%></a></td>
                            <td>Good</td>
                        </tr>
                        <%date = note.getDate();%>
                    <%}%>
                <%}%>
                </tbody>
                <!-- #End Items list -->

            </table>

            <div class="mt20 delimiter">
                <a href="<% out.print("/users/user-profile/" + user.getId()); %>" class="btn btn-default">Back</a>
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