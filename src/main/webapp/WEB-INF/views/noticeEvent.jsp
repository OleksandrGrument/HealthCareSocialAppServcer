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

        <!-- Content section -->
        <section class="container-fluid content">
            <h3><i class="fa fa-list-ul"></i>Notice / Event</h3>

            <div class="mb20">
                <button class="btn btn-primary">Add new notice / event</button>
            </div>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th width="20">ID</th>
                    <th>Title</th>
                    <th width="150">Date</th>
                    <th width="150">Action</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Date</th>
                    <th>Action</th>
                </tr>
                </tfoot>

                <!-- Items list -->
                <tbody>
                <tr>
                    <td align="center">1</td>
                    <td><a href="noticeEventEdit.php">Temporary Events Notice</a></td>
                    <td align="center">22-02-2017 15:04</td>
                    <td align="center">
                        <a href="noticeEventEdit.php"><i class="fa fa-edit"></i> Edit</a>&nbsp;|&nbsp;<a href="javascript:void(0);" class="deleteConfirm"><i class="fa fa-trash"></i> Delete</a>
                    </td>
                </tr>
                <tr>
                    <td align="center">2</td>
                    <td><a href="noticeEventEdit.php">Temporary Events Notice</a></td>
                    <td align="center">26-02-2017 15:04</td>
                    <td align="center">
                        <a href="noticeEventEdit.php"><i class="fa fa-edit"></i> Edit</a>&nbsp;|&nbsp;<a href="javascript:void(0);" class="deleteConfirm"><i class="fa fa-trash"></i> Delete</a>
                    </td>
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

<%@ include file="footerJavaScript.jsp" %>

</body>
</html>