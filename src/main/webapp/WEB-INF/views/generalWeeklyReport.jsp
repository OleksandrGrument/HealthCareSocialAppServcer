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

    <title>Users weekly reports :: Come On Baby</title>

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
            <h3><i class="fa fa-bar-chart"></i>Users weekly reports</h3>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th width="20">ID</th>
                    <th>E-mail</th>
                    <th>Login</th>
                    <th width="100">Evaluation</th>
                    <th width="200">Generation week</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>E-mail</th>
                    <th>Login</th>
                    <th>Evaluation</th>
                    <th>Generation week</th>
                </tr>
                </tfoot>

                <!-- Items list -->
                <tbody>
                <tr>
                    <td align="center">10</td>
                    <td><a href="mailto:some@server.com.ua">some@server.com.ua</a></td>
                    <td><a href="userProfileShow.php">Tiger Nixon</a></td>
                    <td align="center" class="marker"><span class="good">Good</span></td>
                    <td align="center"><a href="generalWeeklyReportShow.php">01-01-2017 &mdash; 07-01-2017</a></td>
                </tr>
                <tr>
                    <td align="center">10</td>
                    <td><a href="mailto:some@server.com.ua">some@server.com.ua</a></td>
                    <td><a href="userProfileShow.php">Tiger Nixon</a></td>
                    <td align="center" class="marker"><span class="excellent">Excellent</span></td>
                    <td align="center"><a href="generalWeeklyReportShow.php">07-01-2017 &mdash; 14-01-2017</a></td>
                </tr>
                <tr>
                    <td align="center">10</td>
                    <td><a href="mailto:some@server.com.ua">some@server.com.ua</a></td>
                    <td><a href="userProfileShow.php">Tiger Nixon</a></td>
                    <td align="center" class="marker"><span class="bad">Bad</span></td>
                    <td align="center"><a href="generalWeeklyReportShow.php">14-01-2017 &mdash; 21-01-2017</a></td>
                </tr>
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