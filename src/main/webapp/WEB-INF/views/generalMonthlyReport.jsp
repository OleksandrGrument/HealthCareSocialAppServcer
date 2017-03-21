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

        <%List<Note> notices = (List<Note>) request.getAttribute("allAppUserNotesByMonth");%>
        <%List<String> generalStatus = (List<String>) request.getAttribute("generalStatus");%>

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
                    <% int count = 0;
                    for(Note note : notices){
                        if(note.getAppUser().getId()!=1 && generalStatus.size()==notices.size()){%>
                            <tr>
                                <td align="center"><%out.print(note.getAppUser().getId());%></td>
                                    <td><%out.print(note.getAppUser().getEmail());%></td>
                                    <td><a href="<%out.print("/users/user-profile/"+note.getAppUser().getId());%>"><%out.print(note.getAppUser().getPreferences().getNickname());%></a></td>
                                    <td align="center" class="marker"><%out.print(generalStatus.get(count));%></td>
                                    <td align="center">
                                    <a href="<%out.print("/report/generalMonthlyReportShow/"+note.getAppUser().getId()+"/"+dateFormatLink.format(note.getDate()));%>"><%out.print(dateFormatOut.format(note.getDate()));%></a>
                                </td>
                            </tr>
                            <%count++;%>
                        <%}
                    }%>
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