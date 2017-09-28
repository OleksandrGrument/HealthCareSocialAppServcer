<%@ page import="com.HealthCareSocialAppServer.util.WeekReportInformation" %>
<%@ page import="com.HealthCareSocialAppServer.util.DataNoteByMonthWeek" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no, minimal-ui" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="format-detection" content="address=no" />

    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <title>주 간  리 포 트 :: 컴온베이비</title>

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

        <% WeekReportInformation weekReport = (WeekReportInformation)request.getAttribute("weekReportInformation"); %>
        <% DataNoteByMonthWeek dataNoteByWeek = (DataNoteByMonthWeek)request.getAttribute("dataNoteByWeek"); %>

        <!-- Content section -->
        <section class="container-fluid content">
            <h3><i class="fa fa-bar-chart"></i>주 간  리 포 트: <%out.print(weekReport.getStartOfWeek()+ " - "+weekReport.getEndOfWeek());%></h3>

            <!-- Show chart -->
            <h4>기초체온 그래프</h4>
            <div class="ct-chart"></div>
            <!-- #End Show chart -->

            <!-- User chart information -->
            <table class="user-profile-table">
                <tbody>
                <tr><td colspan="2" class="header pt0">자세한 정보</td></tr>
                <tr>
                    <td class="title">추천음식:</td>
                    <td>월 <%out.print(dataNoteByWeek.recommendedFood());%>회 섭취</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.recommendedFood()));%></td>
                </tr>

                <tr>
                    <td class="title">견과류:</td>
                    <td>월 <%out.print(dataNoteByWeek.nuts());%>회 섭취</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.nuts()));%></td>
                </tr>

                <tr>
                    <td class="title">차:</td>
                    <td>월 <%out.print(dataNoteByWeek.typeOfTea());%>회 섭취</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.typeOfTea()));%></td>
                </tr>

                <tr>
                    <td class="title">운동:</td>
                    <td>월 <%out.print(dataNoteByWeek.exercise());%>회</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.exercise()));%></td>
                </tr>

                <tr>
                    <td class="title">자정 전 취침:</td>
                    <td>월 <%out.print(dataNoteByWeek.sleepBeforeMidnight());%>회</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.sleepBeforeMidnight()));%></td>
                </tr>

                <tr>
                    <td class="title">평균 수면시간:</td>
                    <td>월 평균 <%out.print(dataNoteByWeek.averageSleepTime());%>시간 16분</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.averageSleepTime()));%></td>
                </tr>

                <tr>
                    <td class="title">물 섭취:</td>
                    <td>월 평균 <%out.print(dataNoteByWeek.waterIngestion());%> 리터</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionStateWater(dataNoteByWeek.waterIngestion()));%></td>
                </tr>

                <%--<tr>
                    <td class="title">좌훈 / 좌욕:</td>
                    <td>월 <%out.print("@@@@");%>회</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(0));%></td>
                </tr>--%>

                <tr>
                    <td class="title">비타민:</td>
                    <td>월 <%out.print(dataNoteByWeek.vitamin());%>회 섭취</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.vitamin()));%></td>
                </tr>

                <tr>
                    <td class="title">엽산:</td>
                    <td>월 <%out.print(dataNoteByWeek.folicAcid());%>회 섭취</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.folicAcid()));%></td>
                </tr>

                <tr>
                    <td class="title">커피 1잔 이하:</td>
                    <td>월 <%out.print(dataNoteByWeek.coffee());%>회</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.coffee()));%></td>
                </tr>

                <tr>
                    <td class="title">알코올:</td>
                    <td>월 <%out.print(dataNoteByWeek.alcohol());%>회 음주 / 평균 1.7잔</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionStateAlcohol(dataNoteByWeek.alcohol()));%></td>
                </tr>

                <tr>
                    <td class="title">금연:</td>
                    <td>월 <%out.print(dataNoteByWeek.smoking());%>회</td>
                    <td class="marker"><%out.print(dataNoteByWeek.evolitionState(dataNoteByWeek.smoking()));%></td>
                </tr>

                <tr><td class="delimiter" colspan="3"></td></tr>
                <tr>
                    <td class="title">감정:</td>
                    <td colspan="2"><%out.print(dataNoteByWeek.emotion());%></td>
                </tr>

                <tr>
                    <td class="title">BMI (신체질량지수):</td>
                    <td colspan="2"><%out.print(dataNoteByWeek.bodyMassIndex());%></td>
                </tr>

                </tbody>
            </table>
            <!-- #End User chart information -->

            <div class="mt10">
                <a class="btn btn-primary" href="<%out.print("/users/downloadWeeklyReport/"+weekReport.getNote().getAppUser().getId()+"/"+weekReport.getCountWeekOfYear());%>">엑셀 다운로드</a>
            </div>

            <div class="mt20 delimiter">
                <a href="<%out.print("/report/generalWeeklyReport");%>" class="btn btn-default">뒤로</a>
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
        showArea: true,
        chartPadding: {
            right: 40
        },
    });
</script>
</body>
</html>