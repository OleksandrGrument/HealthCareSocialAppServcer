<%@ page import="com.ComeOnBaby.model.RecipeGuide" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

    <title>추천레시피 리스트 :: 컴온베이비</title>

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
            <h3><i class="fa fa-list-ul"></i>추천레시피 리스트</h3>

            <div class="mb20">
                <a href="/guide/add-recipe" class="btn btn-primary"><i class="fa fa-plus-circle mr10"></i>새 가이드 추가</a>
            </div>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">


                <thead>
                <tr>
                    <th width="20">ID</th>
                    <th>표제</th>
                    <th>URL</th>
                    <th width="150">날짜</th>
                    <th width="170">동작</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>표제</th>
                    <th>URL</th>
                    <th>날짜</th>
                    <th>동작</th>
                </tr>
                </tfoot>

                <!-- Items list -->

                <tbody>
                <%
                    ArrayList<RecipeGuide> recipeGuides = (ArrayList<RecipeGuide>) request.getAttribute("recipeGuide");

                    Iterator<RecipeGuide> recipeGuideIterator = recipeGuides.iterator();

                    while (recipeGuideIterator.hasNext()) {
                        RecipeGuide recipeGuide = recipeGuideIterator.next();
                        String editGuideUrl = "/guide/edit-recipe/"+recipeGuide.getId();
                   %>
                <tr>
                    <td align="center"><%out.print(recipeGuide.getId());%></td>
                    <td><a href="<%out.print(editGuideUrl);%>"><%out.print(recipeGuide.getTitle());%></a></td>
                    <td><a href="<%out.print(recipeGuide.getUrlNaver());%>" target="_blank"><%out.print(recipeGuide.getUrlNaver());%></a></td>
                    <td align="center"><%out.print(recipeGuide.getDate().toString().substring(0, 19));%></td>
                    <td align="center">
                        <input type="hidden" value="<%%>">
                        <a href="<%out.print(editGuideUrl);%>" data-toggle="tooltip" title="편집하다"><i class="fa fa-edit"></i> 편집하다</a>&nbsp; |&nbsp;
                        <a href="<%out.print("/guide/delete-recipe/"+recipeGuide.getId());%>" data-toggle="tooltip" title="지우다" class="deleteConfirm"><i class="fa fa-trash"></i> 지우다</a>
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