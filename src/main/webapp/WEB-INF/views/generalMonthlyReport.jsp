<%@ page import="com.ComeOnBaby.model.Note" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="com.ComeOnBaby.model.AppUser" %>
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

    <title>Users monthly reports :: Come On Baby</title>

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

        <%List<Note> allAppUserNotes = (List<Note>) request.getAttribute("allAppUserNotes");%>
        <%List<AppUser> listUsersByNoteByMonth = (List<AppUser>) request.getAttribute("listUsersByNoteByMonth");%>

        <!-- Content section -->
        <section class="container-fluid content">
            <h3><i class="fa fa-bar-chart"></i>Users monthly reports</h3>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th width="20">ID</th>
                    <th>E-mail</th>
                    <th>Login</th>
                    <th width="100">Evaluation</th>
                    <th width="200">Generation month</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>E-mail</th>
                    <th>Login</th>
                    <th>Evaluation</th>
                    <th>Generation month</th>
                </tr>
                </tfoot>

                <%
                    SimpleDateFormat dateFormatOut = new SimpleDateFormat("MM-yyyy");
                    SimpleDateFormat dateFormatLink = new SimpleDateFormat("MM/yyyy");
                %>

                <!-- Items list -->
                <tbody>
                    <%for(int i = 0; i < allAppUserNotes.size(); i++){ %>
                        <tr>
                            <td align="center"><%out.print(allAppUserNotes.get(i).getUser_id());%></td>
                            <td><%out.print(listUsersByNoteByMonth.get(i).getEmail());%></td>
                            <td><a href="<%out.print("/users/user-profile/"+listUsersByNoteByMonth.get(i).getId());%>"><%out.print(listUsersByNoteByMonth.get(i).getPreferences().getNickname());%></a></td>
                            <td align="center" class="marker"><span class="good">Good</span></td>
                            <td align="center">
                                <a href="<%out.print("/report/generalMonthlyReportShow/"+listUsersByNoteByMonth.get(i).getId()+"/"+dateFormatLink.format(allAppUserNotes.get(i).getDate()));%>"><%out.print(dateFormatOut.format(allAppUserNotes.get(i).getDate()));%></a>
                            </td>
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