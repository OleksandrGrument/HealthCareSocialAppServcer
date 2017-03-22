<%@ page import="com.ComeOnBaby.model.Notice" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>
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

    <title>공지 / 이벤트 리스트 :: 컴온베이비</title>

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
            <h3><i class="fa fa-calendar"></i>공지 / 이벤트 리스트</h3>

            <div class="mb20">
                <a href="/notice/add-notice" class="btn btn-primary"><i class="fa fa-plus-circle mr10"></i>새로운 알림 / 이벤트 추가</a>
            </div>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th width="20">ID</th>
                    <th>표제</th>
                    <th width="150">날짜</th>
                    <th width="170">동작</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>표제</th>
                    <th>날짜</th>
                    <th>동작</th>
                </tr>
                </tfoot>

                <!-- Items list -->
                <tbody>

                <%
                    ArrayList<Notice> noticeArrayList = (ArrayList<Notice>) request.getAttribute("notices");

                    Iterator<Notice> noticeIterator = noticeArrayList.iterator();

                    while (noticeIterator.hasNext()) {
                        Notice notice = noticeIterator.next();
                        String editNoticeUrl = "/notice/edit-notice/"+notice.getId();
                %>
                <tr>
                    <td align="center"><%out.print(notice.getId());%></td>
                    <td><a href="<%out.print(editNoticeUrl);%>"><%out.print(notice.getTitle());%></a></td>
                    <td align="center"><%out.print(notice.getDate().toString().substring(0, 19));%></td>
                    <td align="center">
                        <a href="<%out.print(editNoticeUrl);%>" data-toggle="tooltip" title="편집하다"><i class="fa fa-edit"></i> 편집하다</a>&nbsp; |&nbsp;
                        <a href="<%out.print("/notice/delete-notice/"+notice.getId());%>" data-toggle="tooltip" title="지우다" class="deleteConfirm"><i class="fa fa-trash"></i> 지우다</a>
                    </td>
                </tr>
                <%}%>
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