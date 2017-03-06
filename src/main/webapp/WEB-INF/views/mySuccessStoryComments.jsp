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

        <!-- Content section -->
        <section class="container-fluid content">
            <h3><i class="fa fa-comments-o"></i>Story comments</h3>

            <form action="" method="post">
                <div class="row">
                    <div class="col-md-6">

                        <div class="comment">
                            <div class="clearfix pb10">
                                <span class="pull-left"><a href="javascript:void(0);">NikName (ID: 00012)</a></span>
                                <span class="pull-right"><a href="javascript:void(0);" data-toggle="tooltip" title="Delete" class="deleteConfirm"><i class="fa fa-remove"></i></a></span>
                            </div>
                            <div class="delimiter">You can also use the data-placement attribute with a value of "auto", which will let the browser decide the position of the tooltip. For example, if the value is "auto left", the tooltip will display on the left side when possible, otherwise on the right.</div>
                        </div>

                        <div class="comment">
                            <div class="clearfix pb10">
                                <span class="pull-left"><a href="javascript:void(0);">NikName (ID: 00012)</a></span>
                                <span class="pull-right"><a href="javascript:void(0);" data-toggle="tooltip" title="Delete" class="deleteConfirm"><i class="fa fa-remove"></i></a></span>
                            </div>
                            <div class="delimiter">You can also use the data-placement attribute with a value of "auto", which will let the browser decide the position of the tooltip. For example, if the value is "auto left", the tooltip will display on the left side when possible, otherwise on the right.</div>
                        </div>

                        <div class="comment">
                            <div class="clearfix pb10">
                                <span class="pull-left"><a href="javascript:void(0);">NikName (ID: 00012)</a></span>
                                <span class="pull-right"><a href="javascript:void(0);" data-toggle="tooltip" title="Delete" class="deleteConfirm"><i class="fa fa-remove"></i></a></span>
                            </div>
                            <div class="delimiter">You can also use the data-placement attribute with a value of "auto", which will let the browser decide the position of the tooltip. For example, if the value is "auto left", the tooltip will display on the left side when possible, otherwise on the right.</div>
                        </div>

                        <div class="comment alert-warning">
                            <div class="clearfix pb10">
                                <span class="pull-left"><b>Administrator</b></span>
                                <span class="pull-right"><a href="javascript:void(0);" data-toggle="tooltip" title="Delete" class="deleteConfirm"><i class="fa fa-remove"></i></a></span>
                            </div>
                            <div class="delimiter">You can also use the data-placement attribute with a value of "auto", which will let the browser decide the position of the tooltip. For example, if the value is "auto left", the tooltip will display on the left side when possible, otherwise on the right.</div>
                        </div>

                        <div class="form-group delimiter">
                            <label class="control-label">Administrator comment</label>
                            <textarea class="form-control" id="editor"></textarea>
                        </div>

                        <div class="text-right">
                            <button class="btn btn-primary">Send</button>
                        </div>
                    </div>
                </div>
            </form>
            <div class="mt20 delimiter">
                <a href="mySuccessStoryEdit.php" class="btn btn-default">Back</a>
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