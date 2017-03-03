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

    <!-- Chart -->
    <link href="/resources/css/other/chartist.min.css" rel="stylesheet" />

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
            <h3><i class="fa fa-bar-chart"></i>Weekly for the: 01-01-2017 &mdash; 07-01-2017</h3>

            <!-- Show chart -->
            <div class="ct-chart"></div>
            <!-- #End Show chart -->

            <!-- User chart information -->
            <table class="user-profile-table">
                <tbody>
                <tr><td colspan="2" class="header pt0">Detailed information</td></tr>
                <tr>
                    <td class="title">Recommended food:</td>
                    <td>month 29 time intake</td>
                    <td class="marker"><span class="good">good</span></td>
                </tr>

                <tr>
                    <td class="title">Nuts:</td>
                    <td>month 17 ingestion</td>
                    <td class="marker"><span class="bad">bad</span></td>
                </tr>

                <tr>
                    <td class="title">Car:</td>
                    <td>month 9 ingestion</td>
                    <td class="marker"><span class="excellent">excellent</span></td>
                </tr>

                <tr>
                    <td class="title">Exercise:</td>
                    <td>month 15 time</td>
                    <td class="marker"><span class="bad">bad</span></td>
                </tr>

                <tr>
                    <td class="title">Sleep before midnight:</td>
                    <td>month 12 time</td>
                    <td class="marker"><span class="excellent">excellent</span></td>
                </tr>

                <tr>
                    <td class="title">Average sleep time:</td>
                    <td>month average 7 hours 16 minute</td>
                    <td class="marker"><span class="good">good</span></td>
                </tr>

                <tr>
                    <td class="title">Water ingestion:</td>
                    <td>average of 0.8 liters per month</td>
                    <td class="marker"><span class="bad">bad</span></td>
                </tr>

                <tr>
                    <td class="title">Eun-hoon / Slut:</td>
                    <td>month 19 times</td>
                    <td class="marker"><span class="good">good</span></td>
                </tr>

                <tr>
                    <td class="title">Vitamin:</td>
                    <td>month 15 times intake</td>
                    <td class="marker"><span class="bad">bad</span></td>
                </tr>

                <tr>
                    <td class="title">Folic acid:</td>
                    <td>month 10 Ingestion</td>
                    <td class="marker"><span class="excellent">excellent</span></td>
                </tr>

                <tr>
                    <td class="title">Less than one cup of coffee:</td>
                    <td>month 3 time</td>
                    <td class="marker"><span class="good">good</span></td>
                </tr>

                <tr>
                    <td class="title">Alcohol:</td>
                    <td>month 6 time Drinking / average 1.7 cups</td>
                    <td class="marker"><span class="excellent">excellent</span></td>
                </tr>

                <tr>
                    <td class="title">No smoking:</td>
                    <td>month 8 times</td>
                    <td class="marker"><span class="bad">bad</span></td>
                </tr>

                <tr><td class="delimiter" colspan="3"></td></tr>
                <tr>
                    <td class="title">Emotion:</td>
                    <td colspan="2">very good 5 times, good 3 times, usually 9 times, poor 7 times</td>
                </tr>

                <tr>
                    <td class="title">BMI (Body Mass Index):</td>
                    <td colspan="2">25 (normal)</td>
                </tr>

                </tbody>
            </table>
            <!-- #End User chart information -->

            <div class="mt10">
                <button class="btn btn-primary">Download Excel</button>
            </div>

            <div class="mt20 delimiter">
                <a href="weeklyReport.html" class="btn btn-default">Back</a>
                <button class="btn btn-primary">Confirm</button>
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

<!-- Chart -->
<script src="/resources/js/other/chartist.min.js"></script>

<!-- Ckeditor -->
<script src="/resources/js/ckeditor/ckeditor.js"></script>

<!-- Base -->
<script src="/resources/js/main.js"></script>
<script>
    new Chartist.Line('.ct-chart', {
        labels: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
        series: [[1, 9, 7, 8, 0, 15, 22]]
    }, {
        fullWidth: true,
        showArea: true
    });

</script>
</body>
</html>