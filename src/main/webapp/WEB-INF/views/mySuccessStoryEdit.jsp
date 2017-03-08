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

    <title>Edit story :: Come On Baby</title>

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


        <%Blog blog = (Blog) request.getAttribute("blog");%>
        <%boolean isNew = (boolean) request.getAttribute("isNew");%>
        <%String formAction = "/my/save-new";%>
        <!-- Content section -->
        <section class="container-fluid content">

            <%String headTitle ="New "; if (!isNew) headTitle = "Edit information";%>
            <h3><i class="fa fa-file-text-o"></i><%out.print(headTitle);%></h3>



            <!-- Edit form -->
            <form action="<%out.print(formAction);%>" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-md-6">

                        <input type="hidden" name="id" value="<%if (!isNew)out.print(blog.getId());%>">

                        <%String blogTitle =""; if (!isNew) blogTitle = blog.getTitle();%>
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" class="form-control" name="title" id="title" value="<%out.print(blogTitle);%>" placeholder="Story title" required />
                        </div>

                    <%--    <% if(!isNew){
                        /*    String urlPic = blog.; */%>
                        <div class="form-group form-img-thumbnail">
                            <a data-fancybox="gallery" href="<%%>"><img src="images/story.jpg" alt="Stand up from the last pain" class="img-thumbnail"></a>
                        </div>
                        <%}%>

                        <div class="form-group">
                            <label class="control-label">Story image</label>
                            <input id="fileInput" type="file" class="file" required />
                        </div>
--%>
                        <%String text = ""; if (!isNew) text = blog.getText();%>
                        <div class="form-group">
                            <label class="control-label">Story text</label>
                            <textarea class="form-control" name="body" id="editor"><%out.print(text);%></textarea>
                        </div>

                        <div class="form-group">
                            <b>Story likes:</b> 112 likes
                        </div>
                    </div>
                </div>

                <div class="mt10">
                    <a href="<%out.print("/my/comments/"+blog.getId());%>" class="btn btn-default">Story Comments (9)</a>
                </div>


                <%String backLink = "" ; if (blog.getType().equals(2)) backLink="/my/recipe"; else if (blog.getType().equals(3)) backLink="/my/story";
                else if (blog.getType().equals(4)) backLink="/my/husband"; %>
                <div class="mt20 delimiter">
                    <a href="<%out.print(backLink);%>" class="btn btn-default">Back</a>
                    <button type="submit" class="btn btn-primary">Confirm</button>
                </div>
            </form>
            <!-- #End Edit form -->

        </section>
        <!-- Content section -->

    </div>
    <!-- #End Page-content -->

</div>
<!-- #End Wrapper -->

<%@ include file="footerJavaScript.jsp" %>

</body>
</html>