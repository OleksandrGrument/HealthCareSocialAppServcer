<%@ page import="com.ComeOnBaby.model.Blog" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.ComeOnBaby.enums.MainPathEnum" %>
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
        <%String formAction = "/my/save-new-story";%>
        <%Integer type;
          if (isNew) type = (Integer) request.getAttribute("type");
          else  type = blog.getType();           %>
        <!-- Content section -->
        <section class="container-fluid content">

            <%String headTitle ="New "; if (!isNew) headTitle = "Edit information";%>
            <h3><i class="fa fa-file-text-o"></i><%out.print(headTitle);%></h3>



            <!-- Edit form -->
            <form action="<%out.print(formAction);%>" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-md-6">

                        <input type="hidden" name="id" value="<%if (!isNew)out.print(blog.getId());%>">
                        <input type="hidden" name="type" value="<% out.print(type) ;%>">

                        <%String blogTitle =""; if (!isNew) blogTitle = blog.getTitle();%>
                        <div class="form-group">
                            <label for="title">Title</label>
                            <input type="text" class="form-control" name="title" id="title" value="<%out.print(blogTitle);%>" placeholder="Story title" required />
                        </div>

                        <% if(!isNew){

                            List<String> images = (List<String>) request.getAttribute("images");
                            Iterator<String> imageIterator = images.iterator();
                            int imageIndex = 0;
                            while(imageIterator.hasNext()){

                                String name = imageIterator.next();
                                if (!name.equals("")){
                                    String urlPic = MainPathEnum.mainWebPath+"show-image/"+name; %>
                                    <div class="form-group form-img-thumbnail">
                                        <a data-fancybox="gallery" href="<%out.print(urlPic);%>"><img src="<%out.print(urlPic);%>" alt="Roasted Carrot Soup" class="img-thumbnail"></a>
                                        <a href="<%out.print("/my/delete-image-from-story/"+blog.getId()+"/"+imageIndex);%>" class="delete deleteConfirm"><i class="fa fa-times"></i></a>
                                    </div>
                                    <%  imageIndex++;
                                }
                            }%>
                        <%}%>

                        <div class="form-group">
                            <label class="control-label">Story image</label>
                            <input multiple id="tenFilesInput" name="filePicture[]" type="file" class="file">
                        </div>


                        <%String text = ""; if (!isNew) text = blog.getText();%>
                        <div class="form-group">
                            <label class="control-label">Story text</label>
                            <textarea class="form-control" name="text" id="editor"><%out.print(text);%></textarea>
                        </div>
                        <%if (!isNew){%>
                            <div class="form-group">
                                <b>Story likes:</b> <%out.print(blog.getLikes().size());%> likes
                            </div>
                        <%}%>
                    </div>
                </div>

                <%if (!isNew){%>
                    <div class="mt10">
                        <a href="<%out.print("/my/comments/"+blog.getId());%>" class="btn btn-default">Story Comments (<%out.print(blog.getComments().size());%>)</a>
                    </div>
                <%}%>

                <% String backLink = "" ;
                    if (type.equals(2)) backLink="/my/recipe"; else if (type.equals(3)) backLink="/my/story";
                    else if (type.equals(4)) backLink="/my/husband";
                %>
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