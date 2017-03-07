<%@ page import="com.ComeOnBaby.model.AppUser" %>
<%@ page import="com.ComeOnBaby.util.DataNoteByMonth" %>
<%@ page import="java.util.Date" %>
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

    <title>Monthly report :: Come On Baby</title>

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
    <% DataNoteByMonth dataNoteByMonth = (DataNoteByMonth) request.getAttribute("dataNoteByMonth"); %>
    <% int month = (int) request.getAttribute("month"); %>
    <% int year = (int) request.getAttribute("year"); %>

    <!-- Page Content -->
    <div id="page-content-wrapper">

        <%@ include file="topLine.jsp" %>

        <!-- Content section -->
        <section class="container-fluid content">
            <h3><i class="fa fa-bar-chart"></i>Report for the: <%out.print(month+"-"+year);%></h3>

            <!-- Show chart -->
            <div class="ct-chart"></div>
            <!-- #End Show chart -->

            <!-- User chart information -->
            <table class="user-profile-table">
                <tbody>
                <tr><td colspan="2" class="header pt0">Detailed information</td></tr>
                <tr>
                    <td class="title">Recommended food:</td>
                    <td>month <%out.print(dataNoteByMonth.recommendedFood());%> time intake</td>
                    <td class="marker"><span class="good">good</span></td>
                </tr>

                <tr>
                    <td class="title">Nuts:</td>
                    <td>month <%out.print(dataNoteByMonth.nuts());%> ingestion</td>
                    <td class="marker"><span class="bad">bad</span></td>
                </tr>

                <tr>
                    <td class="title">Car:</td>
                    <td>month <%out.print("@@@@");%> ingestion</td>
                    <td class="marker"><span class="excellent">excellent</span></td>
                </tr>

                <tr>
                    <td class="title">Exercise:</td>
                    <td>month <%out.print(dataNoteByMonth.exercise());%> time</td>
                    <td class="marker"><span class="bad">bad</span></td>
                </tr>

                <tr>
                    <td class="title">Sleep before midnight:</td>
                    <td>month <%out.print("@@@@");%> time</td>
                    <td class="marker"><span class="excellent">excellent</span></td>
                </tr>

                <tr>
                    <td class="title">Average sleep time:</td>
                    <td>month average <%out.print("@@@@");%></td>
                    <td class="marker"><span class="good">good</span></td>
                </tr>

                <tr>
                    <td class="title">Water ingestion:</td>
                    <td>average of <%out.print(dataNoteByMonth.waterIngestion());%> liters per month</td>
                    <td class="marker"><span class="bad">bad</span></td>
                </tr>

                <tr>
                    <td class="title">Eun-hoon / Slut:</td>
                    <td>month <%out.print("@@@@");%> times</td>
                    <td class="marker"><span class="good">good</span></td>
                </tr>

                <tr>
                    <td class="title">Vitamin:</td>
                    <td>month <%out.print(dataNoteByMonth.vitamin());%> times intake</td>
                    <td class="marker"><span class="bad">bad</span></td>
                </tr>

                <tr>
                    <td class="title">Folic acid:</td>
                    <td>month <%out.print(dataNoteByMonth.folicAcid());%> Ingestion</td>
                    <td class="marker"><span class="excellent">excellent</span></td>
                </tr>

                <tr>
                    <td class="title">Less than one cup of coffee:</td>
                    <td>month <%out.print(dataNoteByMonth.coffee());%> time</td>
                    <td class="marker"><span class="good">good</span></td>
                </tr>

                <tr>
                    <td class="title">Alcohol:</td>
                    <td>month <%out.print(dataNoteByMonth.alcohol());%> time Drinking / average 0 cups</td>
                    <td class="marker"><span class="excellent">excellent</span></td>
                </tr>

                <tr>
                    <td class="title">No smoking:</td>
                    <td>month <%out.print(dataNoteByMonth.smoking());%> times</td>
                    <td class="marker"><span class="bad">bad</span></td>
                </tr>

                <tr><td class="delimiter" colspan="3"></td></tr>
                <tr>
                    <td class="title">Emotion:</td>
                    <td colspan="2"><%out.print(dataNoteByMonth.emotion());%></td>
                </tr>

                <tr>
                    <td class="title">BMI (Body Mass Index):</td>
                    <td colspan="2"><%out.print(dataNoteByMonth.bodyMassIndex());%></td>
                </tr>

                </tbody>
            </table>
            <!-- #End User chart information -->

            <div class="mt10">

                <a class="btn btn-primary" href="<%out.print("/cabinet/downloadMonthlyReport/"+user.getId()+"/"+month+"/"+year);%>">Download Excel</a>
            </div>

            <div class="mt20 delimiter">
                <a href="monthlyReport.html" class="btn btn-default">Back</a>
                <button class="btn btn-primary">Confirm</button>
            </div>

        </section>
        <!-- Content section -->

    </div>
    <!-- #End Page-content -->

</div>
<!-- #End Wrapper -->

<%@ include file="footerJavaScript.jsp" %>

<% String daysInMonthsString = (String) request.getAttribute("daysInMonthsString"); %>
<% String valueInMonthsString = (String) request.getAttribute("valueInMonthsString"); %>

<script>
    new Chartist.Line('.ct-chart', {
       labels: [<%out.print(daysInMonthsString);%>],
       series: [[<%out.print(valueInMonthsString);%>]]
    }, {
        fullWidth: true,
        showArea: true
    });
</script>

</body>
</html>