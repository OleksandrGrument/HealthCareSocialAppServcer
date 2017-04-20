<%@ page import="com.ComeOnBaby.model.AppUser" %>
<%@ page import="com.ComeOnBaby.model.Note" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no, minimal-ui"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="format-detection" content="address=no"/>

    <meta name="description" content=""/>
    <meta name="keywords" content=""/>

    <title>월 간 리 포 트 :: 컴온베이비</title>

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
            <h3><i class="fa fa-bar-chart"></i>월 간 리 포 트</h3>

            <% AppUser user = (AppUser) request.getAttribute("user"); %>
            <% List<Note> notices = (List<Note>) request.getAttribute("notices"); %>
            <%List<String> generalStatus = (List<String>) request.getAttribute("generalStatus");%>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th width="20">ID</th>
                    <th>창조 월</th>
                    <th width="100">평가</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>창조 월</th>
                    <th>평가</th>
                </tr>
                </tfoot>

                <!-- Items list -->
                <tbody>
                <%
                    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM");
                    SimpleDateFormat dateFormat1 = new SimpleDateFormat("MM/yyyy");
                %>
                <%
                    int count = 1;
                    if (notices.size() > 0) {
                        Date date = notices.get(0).getDate();
                %>
                <tr>
                    <td align="center"><%out.print(notices.get(0).getAppUser().getId());%></td>
                    <td>
                        <a href="<%out.print("/users/monthlyReportShow/"+notices.get(0).getAppUser().getId()+"/"+dateFormat1.format(date));%>"><%
                            out.print(dateFormat.format(date));%></a></td>
                    <td align="center" class="marker"><%out.print(generalStatus.get(0));%></td>
                </tr>
                <%
                    for (Note note : notices) {
                        if (!dateFormat.format(note.getDate()).equals(dateFormat.format(date))) {
                %>
                <tr>
                    <td align="center"><%out.print(note.getAppUser().getId());%></td>
                    <td>
                        <a href="<%out.print("/users/monthlyReportShow/"+note.getAppUser().getId()+"/"+dateFormat1.format(note.getDate()));%>"><%
                            out.print(dateFormat.format(note.getDate()));%></a></td>
                    <td align="center" class="marker"><%out.print(generalStatus.get(count));%></td>
                </tr>
                <%
                                date = note.getDate();
                                count++;
                            }
                        }
                    }
                %>
                </tbody>
                <!-- #End Items list -->

            </table>

            <div class="mt20 delimiter">
                <a href="<% out.print("/users/user-profile/" + user.getId()); %>" class="btn btn-default">뒤로</a>
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