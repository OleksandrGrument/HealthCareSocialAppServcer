<%@ page import="com.ComeOnBaby.model.Notice" %>
<%@ page import="com.ComeOnBaby.enums.MainPathEnum" %>
<%@ page import="java.util.List" %>
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

    <title>공지 / 이벤트 :: 컴온베이비</title>

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

        <%
            String headTitle = "새로운";
            if (!isNew) headTitle = notice.getTitle();
        %>
        <section class="container-fluid content">
            <h3><i class="fa fa-calendar"></i><%out.print(headTitle);%></h3>

            <!-- Edit form -->
            <form action="<%out.print(formAction);%>" method="post" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-md-6">

                        <input type="hidden" name="id" value="<%if (!isNew)out.print(notice.getId());%>">


                        <%
                            String title = "";
                            if (!isNew) title = notice.getTitle();
                        %>
                        <div class="form-group">
                            <label for="title">표제</label>
                            <input type="text" class="form-control" name="title" id="title"
                                   value="<%out.print(title);%>" placeholder="표제" required>
                        </div>

                        <% if (!isNew) {

                            List<String> images = (List<String>) request.getAttribute("images");
                            Iterator<String> imageIterator = images.iterator();
                            int imageIndex = 0;
                            while (imageIterator.hasNext()) {

                                String name = imageIterator.next();
                                if (!name.equals("")) {
                                    String urlPic = MainPathEnum.mainWebPath + "show-image/" + name; %>
                        <div class="form-group form-img-thumbnail">
                            <a data-fancybox="gallery" href="<%out.print(urlPic);%>"><img src="<%out.print(urlPic);%>"
                                                                                          alt="<%out.print(title);%>"
                                                                                          class="img-thumbnail"></a>
                            <a href="<%out.print("/notice/delete-image-from-notice/"+notice.getId()+"/"+imageIndex);%>"
                               class="delete deleteConfirm"><i class="fa fa-times"></i></a>
                        </div>
                        <% imageIndex++;
                        }
                        }%>
                        <%}%>
                        <div class="form-group">
                            <label class="control-label">영상</label>
                            <input multiple id="tenFilesInput" name="filePicture[]" type="file" class="file" >
                        </div>


                        <%
                            String text = "";
                            if (!isNew) text = notice.getText();
                        %>
                        <div class="form-group">
                            <label class="control-label" for="editor">기술</label>
                            <textarea class="form-control" name="text" id="editor"><%out.print(text);%></textarea>
                        </div>
                    </div>
                </div>

                <div class="mt20 delimiter">
                    <a href="/notice/events" class="btn btn-default">뒤로</a>
                    <button type="submit" class="btn btn-primary">구하다</button>
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