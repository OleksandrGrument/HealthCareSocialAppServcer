<%@ page import="com.ComeOnBaby.util.WeekReportInformation" %>
<%@ page import="com.ComeOnBaby.util.DataNoteByMonthWeek" %>
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
    <% AppUser user = (AppUser) request.getAttribute("user"); %>
    <% WeekReportInformation weekReport = (WeekReportInformation)request.getAttribute("weekReportInformation"); %>
    <% DataNoteByMonthWeek dataNoteByWeek = (DataNoteByMonthWeek)request.getAttribute("dataNoteByWeek"); %>

    <!-- Page Content -->
    <div id="page-content-wrapper">

        <%@ include file="topLine.jsp" %>

        <!-- Content section -->
        <section class="container-fluid content">
            <h3><i class="fa fa-bar-chart"></i>Weekly for the: <%out.print(weekReport.getStartOfWeek()+ " - "+weekReport.getEndOfWeek());%></h3>


            <!-- Show chart -->
            <div class="ct-chart"></div>
            <!-- #End Show chart -->

            <!-- User chart information -->
            <table class="user-profile-table">
                <tbody>
                <tr><td colspan="2" class="header pt0">Detailed information</td></tr>
                <tr>
                    <td class="title">Recommended food:</td>
                    <td>month <%out.print(dataNoteByWeek.recommendedFood());%> time intake</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.recommendedFood()));%></td>
                </tr>

                <tr>
                    <td class="title">Nuts:</td>
                    <td>month <%out.print(dataNoteByWeek.nuts());%> ingestion</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.nuts()));%></td>
                </tr>

                <tr>
                    <td class="title">Car:</td>
                    <td>month <%out.print("@@@@");%> ingestion</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(0));%></td>
                </tr>

                <tr>
                    <td class="title">Exercise:</td>
                    <td>month <%out.print(dataNoteByWeek.exercise());%> time</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.exercise()));%></td>
                </tr>

                <tr>
                    <td class="title">Sleep before midnight:</td>
                    <td>month <%out.print("@@@@");%> time</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(0));%></td>
                </tr>

                <tr>
                    <td class="title">Average sleep time:</td>
                    <td>month average <%out.print("@@@@");%></td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(0));%></td>
                </tr>

                <tr>
                    <td class="title">Water ingestion:</td>
                    <td>average of <%out.print(dataNoteByWeek.waterIngestion());%> liters per month</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionStateWater(dataNoteByWeek.waterIngestion()));%></td>
                </tr>

                <tr>
                    <td class="title">Eun-hoon / Slut:</td>
                    <td>month <%out.print("@@@@");%> times</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(0));%></td>
                </tr>

                <tr>
                    <td class="title">Vitamin:</td>
                    <td>month <%out.print(dataNoteByWeek.vitamin());%> times intake</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.vitamin()));%></td>
                </tr>

                <tr>
                    <td class="title">Folic acid:</td>
                    <td>month <%out.print(dataNoteByWeek.folicAcid());%> Ingestion</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.folicAcid()));%></td>
                </tr>

                <tr>
                    <td class="title">Less than one cup of coffee:</td>
                    <td>month <%out.print(dataNoteByWeek.coffee());%> time</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.coffee()));%></td>
                </tr>

                <tr>
                    <td class="title">Alcohol:</td>
                    <td>month <%out.print(dataNoteByWeek.alcohol());%> time Drinking / average 0 cups</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionStateAlcohol(dataNoteByWeek.alcohol()));%></td>
                </tr>

                <tr>
                    <td class="title">No smoking:</td>
                    <td>month <%out.print(dataNoteByWeek.smoking());%> times</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.smoking()));%></td>
                </tr>

                <tr><td class="delimiter" colspan="3"></td></tr>
                <tr>
                    <td class="title">Emotion:</td>
                    <td colspan="2"><%out.print(dataNoteByWeek.emotion());%></td>
                </tr>

                <tr>
                    <td class="title">BMI (Body Mass Index):</td>
                    <td colspan="2"><%out.print(dataNoteByWeek.bodyMassIndex());%></td>
                </tr>

                </tbody>
            </table>
            <!-- #End User chart information -->

            <div class="mt10">
                <a class="btn btn-primary" href="<%out.print("/users/downloadWeeklyReport/"+user.getId()+"/"+weekReport.getCountWeekOfYear());%>">Download Excel</a>
            </div>

            <div class="mt20 delimiter">
                <a href="<%out.print("/users/weekly-report/"+user.getId());%>" class="btn btn-default">Back</a>
            </div>

        </section>
        <!-- Content section -->

    </div>
    <!-- #End Page-content -->

</div>
<!-- #End Wrapper -->

<%@ include file="footerJavaScript.jsp" %>

<% String daysInWeekString = (String) request.getAttribute("daysInWeekString"); %>
<% String valueInWeekString = (String) request.getAttribute("valueInWeekString"); %>

<script>
    new Chartist.Line('.ct-chart', {
        labels: [<%out.print(daysInWeekString);%>],
        series: [[<%out.print(valueInWeekString);%>]]
    }, {
        fullWidth: true,
        showArea: true
    });
</script>

</body>
</html>