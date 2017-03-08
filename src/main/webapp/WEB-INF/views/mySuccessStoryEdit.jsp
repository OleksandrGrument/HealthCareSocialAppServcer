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

        <!-- Content section -->
        <section class="container-fluid content">
            <h3><i class="fa fa-file-text-o"></i>Edit story</h3>

            <!-- Edit form -->
            <form action="" method="post">
                <div class="row">
                    <div class="col-md-6">

                        <div class="form-group">
                            <label for="title">Story title</label>
                            <input type="text" class="form-control" name="title" id="title" value="Stand up from the last pain" placeholder="Story title" required />
                        </div>

                        <div class="form-group form-img-thumbnail">
                            <a data-fancybox="gallery" href="images/story.jpg"><img src="images/story.jpg" alt="Stand up from the last pain" class="img-thumbnail"></a>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Story image</label>
                            <input id="fileInput" type="file" class="file" required />
                        </div>

                        <div class="form-group">
                            <label class="control-label">Story text</label>
                            <textarea class="form-control" name="body" id="editor">Contact your council for a Temporary Event Notice (TEN) if you want to carry out a ‘licensable activity’ on unlicensed premises in England or Wales...</textarea>
                        </div>

                        <div class="form-group">
                            <b>Story likes:</b> 112 likes
                        </div>
                    </div>
                </div>

                <div class="mt10">
                    <a href="mySuccessStoryComments.php" class="btn btn-default">Story Comments (9)</a>
                </div>

                <div class="mt20 delimiter">
                    <a href="mySuccessStory.php" class="btn btn-default">Back</a>
                    <button class="btn btn-primary">Confirm</button>
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