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

    <title>Push notifications :: Come On Baby</title>

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
            <h3><i class="fa fa-bell-o"></i>Push notifications</h3>

            <div class="mb20">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#pushNotifications"><i class="fa fa-plus-circle mr10"></i>Add new push</button>
            </div>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th width="20">ID</th>
                    <th width="70">Notice ID</th>
                    <th>Notifications</th>
                    <th width="150">Date</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>Notice ID</th>
                    <th>Notifications</th>
                    <th>Date</th>
                </tr>
                </tfoot>

                <!-- Items list -->
                <tbody>
                <tr>
                    <td align="center">1</td>
                    <td align="center">35</td>
                    <td>November with the Ministry of Gender Equality and Family!</td>
                    <td align="center">15-03-2017 15:56</td>
                </tr>
                <tr>
                    <td align="center">2</td>
                    <td align="center">33</td>
                    <td>November with the Ministry of Gender Equality and Family!</td>
                    <td align="center">12-03-2017 12:36</td>
                </tr>
                <tr>
                    <td align="center">3</td>
                    <td align="center">28</td>
                    <td>November with the Ministry of Gender Equality and Family!</td>
                    <td align="center">05-03-2017 09:16</td>
                </tr>
                </tbody>
                <!-- #End Items list -->

            </table>

        </section>
        <!-- Content section -->

    </div>
    <!-- #End Page-content -->

</div>
<!-- #End Wrapper -->

<!-- Push notifications Modal -->
<div id="pushNotifications" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <form method="post" id="pushNotificationsForm" role="form" data-toggle="validator">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h3 class="mb0"><i class="fa fa-bell-o"></i>Push notification</h3>
                </div>

                <!-- Modal body -->
                <div class="modal-body">

                    <div class="form-group">
                        <label for="noticeId" class="control-label">Notice ID</label>
                        <input type="text" class="form-control form-block" name="phoneNumber" id="noticeId" placeholder="Notice ID" required/>
                    </div>

                    <div class="form-group">
                        <label for="notification" class="control-label">Notification</label>
                        <textarea name="notification" id="notification" class="form-control form-block" rows="3" placeholder="Notification" required></textarea>
                    </div>

                    <div class="form-group">
                        <label class="control-label">Push image</label>
                        <input id="fileInput" name="push_image" type="file" class="file" placeholder="Push image"/>
                    </div>

                </div>
                <!-- #End Modal body -->

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Send</button>
                </div>
            </div>
        </form>
        <!-- #End Modal content-->

    </div>
</div>
<!-- #End Push notifications Modal -->

<%@ include file="footerJavaScript.jsp" %>

</body>
</html>