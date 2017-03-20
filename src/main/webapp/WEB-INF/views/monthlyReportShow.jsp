<%@ page import="com.ComeOnBaby.model.AppUser" %>
<%@ page import="com.ComeOnBaby.util.DataNoteByMonthWeek" %>
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

    <title>사용자 월간 리포트 :: 컴온베이비</title>

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
    <% DataNoteByMonthWeek dataNoteByMonthWeek = (DataNoteByMonthWeek) request.getAttribute("dataNoteByMonth"); %>
    <% int month = (int) request.getAttribute("month"); %>
    <% int year = (int) request.getAttribute("year"); %>

    <!-- Page Content -->
    <div id="page-content-wrapper">

        <%@ include file="topLine.jsp" %>

        <!-- Content section -->
        <section class="container-fluid content">
            <h3><i class="fa fa-bar-chart"></i>월간 리포트: <%out.print(year+"-"+month);%></h3>

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
                    <td>월 <%out.print(dataNoteByMonthWeek.recommendedFood());%>회 섭취</td>
                    <td class="marker"><%out.print(dataNoteByMonthWeek.evolitionState(dataNoteByMonthWeek.recommendedFood()));%></td>
                </tr>

                <tr>
                    <td class="title">견과류:</td>
                    <td>월 <%out.print(dataNoteByMonthWeek.nuts());%>회 섭취</td>
                    <td class="marker"><%out.print(dataNoteByMonthWeek.evolitionState(dataNoteByMonthWeek.nuts()));%></td>
                </tr>

                <%--<tr>
                    <td class="title">차:</td>
                    <td>월 <%out.print("@@@@");%>회 섭취</td>
                    <td class="marker"><%out.print(dataNoteByMonthWeek.evolitionState(0));%></td>
                </tr>--%>

                <tr>
                    <td class="title">운동:</td>
                    <td>월 <%out.print(dataNoteByMonthWeek.exercise());%>회</td>
                    <td class="marker"><%out.print(dataNoteByMonthWeek.evolitionState(dataNoteByMonthWeek.exercise()));%></td>
                </tr>

                <%--<tr>
                    <td class="title">자정 전 취침:</td>
                    <td>월 <%out.print("@@@@");%>회</td>
                    <td class="marker"><%out.print(dataNoteByMonthWeek.evolitionState(0));%></td>
                </tr>--%>

                <%--<tr>
                    <td class="title">평균 수면시간:</td>
                    <td>월 평균 <%out.print("@@@@");%>시간 16분</td>
                    <td class="marker"><%out.print(dataNoteByMonthWeek.evolitionState(0));%></td>
                </tr>--%>

                <tr>
                    <td class="title">물 섭취:</td>
                    <td>월 평균 <%out.print(dataNoteByMonthWeek.waterIngestion());%> 리터</td>
                    <td class="marker"><%out.print(dataNoteByMonthWeek.evolitionStateWater(dataNoteByMonthWeek.waterIngestion()));%></td>
                </tr>

                <%--<tr>
                    <td class="title">좌훈 / 좌욕:</td>
                    <td>월 <%out.print("@@@@");%>회</td>
                    <td class="marker"><%out.print(dataNoteByMonthWeek.evolitionState(0));%></td>
                </tr>--%>

                <tr>
                    <td class="title">비타민:</td>
                    <td>월 <%out.print(dataNoteByMonthWeek.vitamin());%>회 섭취</td>
                    <td class="marker"><%out.print(dataNoteByMonthWeek.evolitionState(dataNoteByMonthWeek.vitamin()));%></td>
                </tr>

                <tr>
                    <td class="title">엽산:</td>
                    <td>월 <%out.print(dataNoteByMonthWeek.folicAcid());%>회 섭취</td>
                    <td class="marker"><%out.print(dataNoteByMonthWeek.evolitionState(dataNoteByMonthWeek.folicAcid()));%></td>
                </tr>

                <tr>
                    <td class="title">커피 1잔 이하:</td>
                    <td>월 <%out.print(dataNoteByMonthWeek.coffee());%>회</td>
                    <td class="marker"><%out.print(dataNoteByMonthWeek.evolitionState(dataNoteByMonthWeek.coffee()));%></td>
                </tr>

                <tr>
                    <td class="title">알코올:</td>
                    <td>월 <%out.print(dataNoteByMonthWeek.alcohol());%>회 음주 / 평균 1.7잔</td>
                    <td class="marker"><%out.print(dataNoteByMonthWeek.evolitionStateAlcohol(dataNoteByMonthWeek.alcohol()));%></td>
                </tr>

                <tr>
                    <td class="title">금연:</td>
                    <td>월 <%out.print(dataNoteByMonthWeek.smoking());%>회</td>
                    <td class="marker"><%out.print(dataNoteByMonthWeek.evolitionState(dataNoteByMonthWeek.smoking()));%></td>
                </tr>

                <tr><td class="delimiter" colspan="3"></td></tr>
                <tr>
                    <td class="title">감정:</td>
                    <td colspan="2"><%out.print(dataNoteByMonthWeek.emotion());%></td>
                </tr>

                <tr>
                    <td class="title">BMI (신체질량지수):</td>
                    <td colspan="2"><%out.print(dataNoteByMonthWeek.bodyMassIndex());%></td>
                </tr>

                </tbody>
            </table>
            <!-- #End User chart information -->

            <div class="mt10">

                <a class="btn btn-primary" href="<%out.print("/users/downloadMonthlyReport/"+user.getId()+"/"+month+"/"+year);%>"><i class="fa fa-file-excel-o mr10"></i>엑셀 다운로드</a>
            </div>

            <div class="mt20 delimiter">
                <a href="<%out.print("/users/monthly-report/"+user.getId());%>" class="btn btn-default">뒤로</a>
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