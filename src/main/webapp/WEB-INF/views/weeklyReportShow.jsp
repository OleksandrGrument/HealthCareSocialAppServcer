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

    <title>Weekly report :: Come On Baby</title>

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

<%@ include file="footerJavaScript.jsp" %>

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