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
    <link href="/resources/css/signin.css" rel="stylesheet" />

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
            <h3><i class="fa fa-question-circle-o"></i>Basic questions</h3>

            <form action="" method="post">
                <!-- Question 1 -->
                <section class="question">
                    <h4>How many years have you not been able to be pregnant?</h4>

                    <div class="mt15 mb10 clearfix">
                        <div class="radio radio-inline">
                            <input type="radio" name="question1" id="question1_1" value="1" checked>
                            <label for="question1_1">None</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question1" id="question1_2" value="2">
                            <label for="question1_2">1 year ~ 2 years</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question1" id="question1_3" value="3">
                            <label for="question1_3">2 years ~ 3 years</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question1" id="question1_4" value="4">
                            <label for="question1_4">3 years ~ 5 years</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question1" id="question1_5" value="5">
                            <label for="question1_5">5 years or more</label>
                        </div>
                    </div>
                </section>
                <!-- #End Question 1 -->

                <!-- Question 2 -->
                <section class="question">
                    <h4>Do you currently have children?</h4>

                    <div class="mt15 mb10 clearfix">
                        <div class="radio radio-inline">
                            <input type="radio" name="question2" id="question2_1" value="1" checked>
                            <label for="question2_1">None</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question2" id="question2_2" value="2">
                            <label for="question2_2">One child</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question2" id="question2_3" value="3">
                            <label for="question2_3">Two children</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question2" id="question2_4" value="4">
                            <label for="question2_4">Three children</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question2" id="question2_5" value="5">
                            <label for="question2_5">Four or more children</label>
                        </div>
                    </div>
                </section>
                <!-- #End Question 2 -->

                <!-- Question 3 -->
                <section class="question">
                    <h4>What treatment did you experience? <small>(Duplicate checkable)</small></h4>

                    <div class="mt10 mb10 clearfix">
                        <div class="checkbox">
                            <input type="checkbox" name="question3_1" id="question3_1" value="1">
                            <label for="question3_1" style="display: inline-block; width: 170px;">Induce natural pregnancy</label>
                            <input type="text" name="question3_1_1" class="ml5 mr5" />time
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_2" id="question3_2" value="2">
                            <label for="question3_2" style="display: inline-block; width: 170px;">Induction of ovulation</label>
                            <input type="text" name="question3_2_1" class="ml5 mr5" />time
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_3" id="question3_3" value="3">
                            <label for="question3_3" style="display: inline-block; width: 170px;">Artificial insemination</label>
                            <input type="text" name="question3_3_1" class="ml5 mr5" />time
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_4" id="question3_4" value="4">
                            <label for="question3_4" style="display: inline-block; width: 170px;">In Vitro Fertilization</label>
                            <input type="text" name="question3_4_1" class="ml5 mr5" />time
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_5" id="question3_5" value="5">
                            <label for="question3_5" style="display: inline-block; width: 170px;">Operation</label>
                            <input type="text" name="question3_5_1" class="ml5 mr5" />time
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_6" id="question3_6" value="6">
                            <label for="question3_6" style="display: inline-block; width: 170px;">Endoscopy</label>
                            <input type="text" name="question3_6_1" class="ml5 mr5" />time
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_7" id="question3_7" value="7">
                            <label for="question3_7" style="display: inline-block; width: 170px;">Laparoscopic procedure</label>
                            <input type="text" name="question3_7_1" class="ml5 mr5" />time
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_8" id="question3_8" value="7">
                            <label for="question3_8" style="display: inline-block; width: 170px;">Endometrial stimulation</label>
                            <input type="text" name="question3_8_1" class="ml5 mr5" />time
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_9" id="question3_9" value="7">
                            <label for="question3_9" style="display: inline-block; width: 170px;">Inspection</label>
                            <input type="text" name="question3_9_1" class="ml5 mr5" />time
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_10" id="question3_10" value="7">
                            <label for="question3_10" style="display: inline-block; width: 170px;">Other</label>
                            <input type="text" name="question3_10_1" class="ml5 mr5" />time
                        </div>

                    </div>
                </section>
                <!-- #End Question 3 -->

                <!-- Question 4 -->
                <section class="question">
                    <h4>What causes your infertility? <small>(Duplicate checkable)</small></h4>

                    <!-- Female -->
                    <h4 class="mt10"><i class="fa fa-venus"></i> Female</h4>

                    <div class="mt15 mb5 clearfix">
                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_1_1" value="1" checked>
                            <label for="question4_1_1">Ovarian dysfunction</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_1_2" value="2">
                            <label for="question4_1_2">Uterine myoma</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_1_3" value="3">
                            <label for="question4_1_3">Adenomyosis</label>
                        </div>
                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_1_4" value="4">
                            <label for="question4_1_4">Hormone factor</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_1_5" value="5">
                            <label for="question4_1_5">Habitual (mooring) abortion</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_1_6" value="6">
                            <label for="question4_1_6">Unknown cause</label>
                        </div>
                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_1_7" value="7">
                            <label for="question4_1_7">Polycystic ovary syndrome</label>
                        </div>
                    </div>

                    <div class="mt5 mb5 clearfix">
                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_1_8" value="8">
                            <label for="question4_1_8">Menstrual disorder</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_1_9" value="9">
                            <label for="question4_1_9">Endometriosis</label>
                        </div>
                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_1_10" value="10">
                            <label for="question4_1_10">Fallopian tube abnormality</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_1_11" value="11">
                            <label for="question4_1_11">Ovulation disorder</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_1_12" value="12">
                            <label for="question4_1_12">Pregnancy Preparation</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_1_13" value="13">
                            <label for="question4_1_13">Blood circulation disorder</label>
                        </div>
                    </div>

                    <div class="mt5 mb5 clearfix">
                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_1_14" value="14">
                            <label for="question4_1_14" style="display: inline-block;">Other</label>
                            <input type="text" name="question4_1_14_1" class="ml5 mr5" />
                        </div>
                    </div>
                    <!-- #End Female -->

                    <!-- Male -->
                    <h4 class="mt20"><i class="fa fa-mars"></i> Male</h4>

                    <div class="mt15 mb5 clearfix">
                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_2_1" value="1" checked>
                            <label for="question4_2_1">Infertility (number of sperm counts, motility, shape deformity, etc.)</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_2_2" value="2">
                            <label for="question4_2_2">Hormone factor</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_2_3" value="3">
                            <label for="question4_2_3">Amenorrhea (obstructive, non-obstructive)</label>
                        </div>
                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_2_4" value="4">
                            <label for="question4_2_4">Vein</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_2_5" value="5">
                            <label for="question4_2_5">Unknown cause</label>
                        </div>
                    </div>
                    <div class="mt5 mb5 clearfix">
                        <div class="radio radio-inline">
                            <input type="radio" name="question4" id="question4_2_6" value="6">
                            <label for="question4_2_6" style="display: inline-block;">Other</label>
                            <input type="text" name="question4_2_6_1" class="ml5 mr5" />
                        </div>
                    </div>
                    <!-- #End Male -->

                </section>
                <!-- #End Question 4 -->

                <!-- Question 5 -->
                <section class="question">
                    <h4>What help do you need? Are you struggling with something? <small>(Duplicate checkable)</small></h4>

                    <div class="mt15 mb5 clearfix">
                        <div class="radio radio-inline">
                            <input type="radio" name="question5" id="question5_1" value="1" checked>
                            <label for="question5_1">Psychological (discomfort, anxiety, depression, mood disorder)</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question5" id="question5_2" value="2">
                            <label for="question5_2">Relationship with family. Solutions (spouse, family, home)</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question5" id="question5_3" value="3">
                            <label for="question5_3">Hospitals. Medical Information</label>
                        </div>
                    </div>
                    <div class="mt5 mb5 clearfix">
                        <div class="radio radio-inline">
                            <input type="radio" name="question5" id="question5_4" value="4">
                            <label for="question5_4">Support system</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question5" id="question5_5" value="5">
                            <label for="question5_5">Relationship with others. Solutions (religion, neighbor, friend, work colleague, colleagues, etc.)</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question5" id="question5_6" value="6">
                            <label for="question5_6">Financial problem</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question5" id="question5_7" value="7">
                            <label for="question5_7">Nutrition consultation (eating habit)</label>
                        </div>
                    </div>
                    <div class="mt5 mb5 clearfix">
                        <div class="radio radio-inline">
                            <input type="radio" name="question5" id="question5_8" value="8">
                            <label for="question5_8" style="display: inline-block;">Other</label>
                            <input type="text" name="question5_8_1" class="ml5 mr5" />
                        </div>
                    </div>

                </section>
                <!-- #End Question 5 -->

                <!-- Question 6 -->
                <section class="question">
                    <h4>What are your plans for your family structure? <small>(Duplicate checkable)</small></h4>

                    <div class="mt15 mb5 clearfix">
                        <div class="radio radio-inline">
                            <input type="radio" name="question6" id="question6_1" value="1" checked>
                            <label for="question6_1">Couple only</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question6" id="question6_2" value="2">
                            <label for="question6_2">Adoption</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question6" id="question6_3" value="3">
                            <label for="question6_3">Experience foster parent</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question6" id="question6_4" value="4">
                            <label for="question6_4">Divorce</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question6" id="question6_6" value="6">
                            <label for="question6_6">I never thought of it</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question6" id="question6_7" value="7">
                            <label for="question6_7">Surrogate mother</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question6" id="question6_8" value="8">
                            <label for="question6_8">Sperm donation</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question6" id="question6_9" value="9">
                            <label for="question6_9">Egg donation</label>
                        </div>
                    </div>
                    <div class="mt5 mb5 clearfix">
                        <div class="radio radio-inline">
                            <input type="radio" name="question6" id="question6_10" value="10">
                            <label for="question6_10" style="display: inline-block;">Other</label>
                            <input type="text" name="question6_10_1" class="ml5 mr5" />
                        </div>
                    </div>
                </section>
                <!-- #End Question 6 -->

                <div class="mt20">
                    <a href="userProfile.html" class="btn btn-default">Back</a>
                    <button class="btn btn-primary">Confirm</button>
                </div>
            </form>

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