<%@ page import="java.util.List" %>
<%@ page import="com.ComeOnBaby.util.WeekReportInformation" %>
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

        <% List<WeekReportInformation> weekReportInformations = (List<WeekReportInformation>)request.getAttribute("weekReportInformationAllUsers"); %>
        <%List<String> generalStatus = (List<String>) request.getAttribute("generalStatus");%>

        <!-- Content section -->
        <section class="container-fluid content">
            <h3><i class="fa fa-bar-chart"></i>주 간  리 포 트</h3>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th width="20">ID</th>
                    <th>이메일</th>
                    <th>닉네임</th>
                    <th width="100">평가</th>
                    <th width="200">생성주간</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>이메일</th>
                    <th>닉네임</th>
                    <th>평가</th>
                    <th>생성주간</th>
                </tr>
                </tfoot>

                <!-- Items list -->
                <tbody>
                <%  int count = 0;
                    for (WeekReportInformation weekReportInformation : weekReportInformations){
                        if(weekReportInformation.getNote().getAppUser().getId()!=1 &&(!weekReportInformation.getStartOfWeek().equals(weekReportInformation.getEndOfWeek()))){%>
                            <tr>
                                <td align="center"><%out.print(weekReportInformation.getNote().getAppUser().getId());%></td>
                                <td><a href="mailto:<%out.print(weekReportInformation.getNote().getAppUser().getEmail());%>"><%out.print(weekReportInformation.getNote().getAppUser().getEmail());%></a></td>
                                <td><a href="<%out.print("/users/user-profile/"+weekReportInformation.getNote().getAppUser().getId());%>"><%out.print(weekReportInformation.getNote().getAppUser().getPreferences().getNickname());%></a></td>
                                <td align="center" class="marker"><%out.print(generalStatus.get(count));%></td>
                                <td align="center"><a href="<%out.print("/report/generalWeeklyReportShow/"+weekReportInformation.getNote().getAppUser().getId()+"/"+weekReportInformation.getCountWeekOfYear());%>"><%out.print(weekReportInformation.getStartOfWeek()+"-"+weekReportInformation.getEndOfWeek());%></a></td>
                            </tr>
                <%      count++;
                        }
                    }%>
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