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

    <title>Users list :: Come On Baby</title>

    <!-- Bootstrap -->
    <link href="/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" />
    <link href="/resources/css/bootstrap/bootstrap-select.min.css" rel="stylesheet" />
    <link href="/resources/css/bootstrap/bootstrap-fileinput.min.css" rel="stylesheet" />
    <link href="/resources/css/bootstrap/bootstrap-datetimepicker.min.css" rel="stylesheet" />
    <link href="/resources/css/bootstrap/bootstrap-awesome-checkbox.min.css" rel="stylesheet" />

    <!-- JQuery -->
    <link href="/resources/css/jquery/jquery.fancybox.min.css" rel="stylesheet" />
    <link href="/resources/css/jquery/jquery.sweet-alert.min.css" rel="stylesheet" />

    <!-- Font Awesome -->
    <link href="/resources/css/font-awesome/font-awesome.min.css" rel="stylesheet" />

    <!-- Data Tables -->
    <link href="/resources/css/dataTables/dataTables.bootstrap.min.css" rel="stylesheet" />
    <link href="/resources/css/dataTables/dataTables.responsive.min.css" rel="stylesheet" />

    <!-- Base -->
    <link href="/resources/css/style.css" rel="stylesheet" />
    <link href="/resources/css/responsive.css" rel="stylesheet" />

    <!--[if lt IE 9]>
    <script src="/resources/js/dataTables/html5shiv.js"></script>
    <script src="/resources/js/dataTables/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<!-- Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <div id="sidebar-wrapper">

        <aside class="sidebar-nav">
            <div class="left-top-line logo"><a href="/">ComeOnBaby</a></div>
            <ul>
                <li class="active"><a href="javascript:void(0);"><i class="fa fa-user" aria-hidden="true"></i> Users</a></li>
                <li>
                    <a href="javascript:void(0);"><i class="fa fa-file" aria-hidden="true"></i> Guide</a>
                    <ul class="sub-menu">
                        <li><a href="javascript:void(0);"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Featured recipes</a></li>
                        <li><a href="javascript:void(0);"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Fertilization guide</a></li>
                    </ul>
                </li>
                <li>
                    <a href="javascript:void(0);"><i class="fa fa-users" aria-hidden="true"></i> Community</a>
                    <ul class="sub-menu">
                        <li><a href="javascript:void(0);"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Notice / Event</a></li>
                        <li><a href="javascript:void(0);"><i class="fa fa-angle-double-right" aria-hidden="true"></i> My success story</a></li>
                        <li><a href="javascript:void(0);"><i class="fa fa-angle-double-right" aria-hidden="true"></i> My recipes</a></li>
                        <li><a href="javascript:void(0);"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Husband story</a></li>
                        <li><a href="javascript:void(0);"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Q &amp; A list</a></li>
                    </ul>
                </li>
                <li><a href="javascript:void(0);"><i class="fa fa-envelope" aria-hidden="true"></i> Push</a></li>
                <li><a href="javascript:void(0);"><i class="fa fa-bar-chart" aria-hidden="true"></i> Report</a></li>
                <li><a href="javascript:void(0);"><i class="fa fa-cogs" aria-hidden="true"></i> Settings</a></li>
            </ul>
            <div class="copyright">2017 &copy; ComeOnBaby</div>
        </aside>
    </div>
    <!-- #End Sidebar -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

        <!-- Top line -->
        <header class="container-fluid top-line">
            <div class="text-left top-switcher pull-left">
                <a href="javascript:void(0);" class="btn btn-toggle" id="menu-toggle"><i class="fa fa-bars" aria-hidden="true"></i></a>
            </div>
            <div class="text-right">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="javascript:void(0);" class="dropdown-toggle avatar" data-toggle="dropdown"><i class="fa fa-user-o"></i></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-menu-header text-center">Hello, Maxim!</li>
                            <li><a href="javascript:void(0);"><i class="fa fa-cog"></i> Settings</a></li>
                            <li><a href="javascript:void(0);"><i class="fa fa-sign-out"></i> Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </header>
        <!-- #End Top line -->

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
                    <td><a href="mailto:info@someserver.com"><%out.print(user.getEmail());%></a></td>
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
                <a href="javascript:void(0);" class="btn btn-default">Monthly report</a>
                <a href="javascript:void(0);" class="btn btn-default">Weekly report</a>
            </div>
            <div class="mt20 delimiter">
                <a href="index.html" class="btn btn-default">Back</a>
            </div>

        </section>
        <!-- Content section -->

    </div>
    <!-- #End Page-content -->

</div>
<!-- #End Wrapper -->

<!-- JQuery -->
<script src="/resources/js/jquery/jquery.min.js"></script>
<script src="/resources/js/jquery/jquery-ui.min.js"></script>
<script src="/resources/js/jquery/jquery.mousewheel.min.js"></script>
<script src="/resources/js/jquery/jquery.fancybox.min.js"></script>
<script src="/resources/js/jquery/jquery.sweet-alert.min.js"></script>
<script src="/resources/js/jquery/jquery.timeago.js"></script>
<script src="/resources/js/jquery/jquery.timeago.ko.js"></script>

<!-- Bootstrap -->
<script src="/resources/js/bootstrap/bootstrap.min.js"></script>
<script src="/resources/js/bootstrap/bootstrap-moment.min.js"></script>
<script src="/resources/js/bootstrap/bootstrap-datetimepicker.min.js"></script>
<script src="/resources/js/bootstrap/bootstrap-form-helpers.min.js"></script>
<script src="/resources/js/bootstrap/bootstrap-select.min.js"></script>
<script src="/resources/js/bootstrap/bootstrap.validator.min.js"></script>
<script src="/resources/js/bootstrap/bootstrap-fileinput.min.js"></script>

<!-- Data Tables -->
<script src="/resources/js/dataTables/dataTables.jquery.min.js"></script>
<script src="/resources/js/dataTables/dataTables.bootstrap.min.js"></script>
<script src="/resources/js/dataTables/dataTables.responsive.min.js"></script>

<!-- Others -->
<script src="/resources/js/other/sortable.min.js"></script>
<script src="/resources/js/other/form-validation.min.js"></script>
<script src="/resources/js/other/pagination.min.js"></script>

<!-- Ckeditor -->
<script src="/resources/js/ckeditor/ckeditor.js"></script>

<!-- Base -->
<script src="/resources/js/main.js"></script>
</body>
</html>