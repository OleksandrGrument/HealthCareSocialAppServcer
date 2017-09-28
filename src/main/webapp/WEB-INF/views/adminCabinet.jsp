<%@ page import="com.HealthCareSocialAppServer.model.User" %>
<%@ page import="java.util.List" %>
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

    <title>관리자 목록 :: 컴온베이비</title>

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
            <h3><i class="fa fa-user-secret"></i>관리자 목록</h3>

            <div class="mb20">
                <a href="<%out.print("/admin/addNewManager");%>" class="btn btn-primary"><i class="fa fa-plus-circle mr10"></i>새 관리자 추가</a>
            </div>

            <%List<User> managerList = (List<User>) request.getAttribute("managerList");%>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th width="20">ID</th>
                    <th>이름</th>
                    <th>이메일</th>
                    <th width="170">동작</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>이름</th>
                    <th>이메일</th>
                    <th>동작</th>
                </tr>
                </tfoot>

                <!-- Items list -->
                <tbody>

                <%if (managerList.size()>0){
                    for (User manager : managerList){%>
                        <tr>
                            <td align="center"><%out.print(manager.getId());%></td>
                            <td><a href="<%out.print("/admin/managerEdit/"+manager.getId());%>"><%out.print(manager.getSsoId());%></a></td>
                            <td><a href="mailto:<%out.print(manager.getEmail());%>"><%out.print(manager.getEmail());%></a></td>
                            <td align="center">
                                <a href="<%out.print("/admin/managerEdit/"+manager.getId());%>" data-toggle="tooltip" title="편집하다"><i class="fa fa-edit"></i> 편집하다</a>&nbsp; |&nbsp;
                                <a href="<%out.print("/admin/managerDelete/"+manager.getId());%>" data-toggle="tooltip" title="지우다" class="deleteConfirm"><i class="fa fa-trash"></i> 지우다</a>
                            </td>
                        </tr>
                <%  }
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