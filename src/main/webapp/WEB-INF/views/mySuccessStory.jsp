<%@ page import="java.util.ArrayList" %>
<%@ page import="com.HealthCareSocialAppServer.model.Blog" %>
<%@ page import="java.util.Iterator" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no, minimal-ui"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="format-detection" content="address=no"/>

    <meta name="description" content=""/>
    <meta name="keywords" content=""/>

    <%String title = (String) request.getAttribute("title");%>
    <%Integer type = (Integer) request.getAttribute("type");%>

    <title><%out.print(title);%> :: 컴온베이비</title>

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

            <h3><i class="fa fa-file-text-o"></i><%out.print(title);%></h3>

            <div class="mb20">
                <a href="<%out.print("/my/new/"+type);%>" class="btn btn-primary"><i class="fa fa-plus-circle mr10"></i>새로운</a>
            </div>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th width="20">ID</th>
                    <th>표제</th>
                    <th width="90">좋은</th>
                    <th width="90">논평</th>
                    <th width="150">날짜</th>
                    <th width="170">동작</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>표제</th>
                    <th>좋은</th>
                    <th>논평</th>
                    <th>날짜</th>
                    <th>동작</th>
                </tr>
                </tfoot>

                <!-- Items list -->
                <tbody>

                <%
                    ArrayList<Blog> blogs = (ArrayList<Blog>) request.getAttribute("blogs");

                    Iterator<Blog> blogIterator = blogs.iterator();

                    while (blogIterator.hasNext()) {
                        Blog blog = blogIterator.next();
                        String editStoryUrl = "/my/edit/" + blog.getId();
                %>

                <tr>
                    <td align="center"><%out.print(blog.getId());%></td>
                    <td><a href="<%out.print(editStoryUrl);%>"><%out.print(blog.getTitle());%></a></td>
                    <td align="center"><%out.print(blog.getLikes().size());%></td>
                    <%--likes--%>
                    <td align="center"><%out.print(blog.getComments().size());%></td>
                    <td align="center"><%out.print(blog.getDatetime().toString().substring(0, 19));%></td>
                    <td align="center">
                        <a href="<%out.print(editStoryUrl);%>" data-toggle="tooltip" title="편집하다"><i
                                class="fa fa-edit"></i> 편집하다</a>&nbsp; |&nbsp;
                        <a href="<%out.print("/my/delete/"+blog.getId());%>" data-toggle="tooltip" title="지우다"
                           class="deleteConfirm"><i class="fa fa-trash"></i> 지우다</a>
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