<%@ page import="com.ComeOnBaby.model.User" %>
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

    <title>Settings :: Come On Baby</title>

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

        <% User userManager = (User) request.getAttribute("userManager");%>

        <!-- Content section -->
        <section class="container-fluid content">
            <h3><i class="fa fa-cog"></i>Settings</h3>

            <!-- Edit form -->
            <form action="/setting/saveSetting" method="post">
                <div class="row">
                    <div class="col-md-6">

                        <h4 class="">Notifications</h4>

                        <div class="form-group delimiter mt10 mb30">
                            <label for="email_notifications">E-mail notifications</label>
                            <input type="email" name="email_notifications" id="email_notifications" class="form-control" placeholder="E-mail notifications" required value="<%out.print(userManager.getEmail());%>"/>
                        </div>

                        <h4 class="">Change password</h4>

                        <div class="form-group delimiter mt10">
                            <label for="old_password">Old password</label>
                            <input type="password" name="old_password" id="old_password" class="form-control" placeholder="Old password"/>
                        </div>

                        <div class="form-group">
                            <label for="new_password">New password</label>
                            <input type="password" name="password" id="new_password" class="form-control" placeholder="New password"/>
                        </div>

                        <div class="form-group">
                            <label for="confirm_password">Confirm new password</label>
                            <input type="password" name="confirm_password" id="confirm_password" class="form-control" placeholder="Confirm new password"/>
                        </div>

                    </div>
                </div>

                <div class="mt20 delimiter">
                    <button type="submit" class="btn btn-primary">Save</button>
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