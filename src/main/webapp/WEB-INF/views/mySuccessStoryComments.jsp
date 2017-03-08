<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ComeOnBaby.model.Comment" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.ComeOnBaby.model.AppUser" %>
<%@ page import="com.ComeOnBaby.model.Blog" %>
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

    <title>Story comments :: Come On Baby</title>

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

        <%
            ArrayList<Comment> comments = (ArrayList<Comment>) request.getAttribute("comments");
            Blog blog = (Blog) request.getAttribute("blog");
        %>


        <!-- Content section -->
        <section class="container-fluid content">
            <h3><i class="fa fa-comments-o"></i>Story comments</h3>

                <div class="row">
                    <div class="col-md-6">

                        <%
                            Iterator<Comment> commentIterator = comments.iterator();
                            String actionUrl = "/my/write-comment";


                            while (commentIterator.hasNext()) {
                                Comment comment = commentIterator.next();
                                String deleteCommentUrl = "/my/delete-comment/"+comment.getId()+"/"+blog.getId();
                                AppUser appUser = comment.getAppUser();
                            if(appUser.getId()!=1){
                        %>
                            <div class="comment">
                                <div class="clearfix pb10">
                                    <span class="pull-left"><a href="<%out.print("/users/user-profile/"+appUser.getId());%>"><%out.print(appUser.getPreferences().getNickname());%> (ID: <%out.print(appUser.getId());%>)</a></span>
                                    <span class="pull-right"><a href="<%out.print(deleteCommentUrl);%>" data-toggle="tooltip" title="Delete" class="deleteConfirm"><i class="fa fa-remove"></i></a></span>
                                    <div class="pull-right mr20"><%out.print(comment.getDatetime().toString().substring(0, 19));%></div>
                                </div>
                                <div class="delimiter"> <%out.print(comment.getText());%> </div>
                            </div>

                                <%} else { %>

                            <div class="comment alert-warning">
                                <div class="clearfix pb10">
                                    <span class="pull-left"><b>Administrator</b></span>
                                    <span class="pull-right"><a href="<%out.print(deleteCommentUrl);%>" data-toggle="tooltip" title="Delete" class="deleteConfirm"><i class="fa fa-remove"></i></a></span>
                                    <div class="pull-right mr20"><%out.print(comment.getDatetime().toString().substring(0, 19));%></div>
                                </div>
                                <div class="delimiter"><%out.print(comment.getText());%></div>
                            </div>
                            <%}%>
                        <%}%>

                        <form action="<%out.print(actionUrl);%>" method="post">

                            <input type="hidden" name="id" value="<%out.print(blog.getId());%>">

                            <div class="form-group delimiter">
                                <label class="control-label">Administrator comment</label>
                                <textarea class="form-control" name="text" id="editor"></textarea>
                            </div>

                            <div class="text-right">
                                <button type="submit" class="btn btn-primary">Send</button>
                            </div>
                        </form>
                    </div>
                </div>
            </form>
            <div class="mt20 delimiter">
                <a href="<%out.print("/my/edit/"+blog.getId());%>" class="btn btn-default">Back</a>
            </div>
        </section>
        <!-- Content section -->

    </div>
    <!-- #End Page-content -->

</div>
<!-- #End Wrapper -->

<%@ include file="footerJavaScript.jsp" %>

</body>
</html>