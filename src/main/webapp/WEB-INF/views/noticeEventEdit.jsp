<%@ page import="com.ComeOnBaby.model.Notice" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.ComeOnBaby.enums.MainPathEnum" %>
<%@ page import="java.util.List" %>
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

    <title>Edit recipes :: Come On Baby</title>

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

        <%Notice notice = (Notice) request.getAttribute("notice");%>
        <%boolean isNew = (boolean) request.getAttribute("isNew");%>
        <%String formAction = "/notice/save-new-notice";%>


        <!-- Content section -->

        <%String headTitle ="New Notice"; if (!isNew) headTitle = notice.getTitle();%>
        <section class="container-fluid content">
            <h3><i class="fa fa-calendar"></i><%out.print(headTitle);%></h3>

            <!-- Edit form -->
            <form action="<%out.print(formAction);%>" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-md-6">

                        <input type="hidden" name="id" value="<%if (!isNew)out.print(notice.getId());%>">


                        <%String title =""; if (!isNew) title = notice.getTitle();%>
                        <div class="form-group">
                            <label for="title">Notice / event title</label>
                            <input type="text" class="form-control" name="title" id="title" value="<%out.print(title);%>" placeholder="Notice / event title">
                        </div>

                        <% if(!isNew){

                            List<String> images = (List<String>) request.getAttribute("images");
                            for (String image : images){
                                String urlPic = MainPathEnum.mainWebPath+"show-image/"+image; %>
                                <div class="form-group form-img-thumbnail">
                                    <a data-fancybox="gallery" href="<%out.print(urlPic);%>"><img src="<%out.print(urlPic);%>" alt="Roasted Carrot Soup" class="img-thumbnail"></a>
                                    <a href="javascript:void(0);" class="delete deleteConfirm"><i class="fa fa-times"></i></a>
                                </div>
                            <%}%>
                        <%}%>
                        <div class="form-group">
                            <label class="control-label">Notice / event image</label>
                            <input multiple id="tenFilesInput" name="filePicture[]" type="file" class="file">
                        </div>


                        <%String text =""; if (!isNew) text = notice.getText();%>
                        <div class="form-group">
                            <label class="control-label">Notice / event text</label>
                            <textarea class="form-control" name="text" id="editor"><%out.print(text);%></textarea>
                        </div>
                    </div>
                </div>

                <div class="mt20 delimiter">
                    <a href="/notice/events" class="btn btn-default">Back</a>
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