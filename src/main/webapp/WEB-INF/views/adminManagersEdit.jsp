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

    <title>Manager settings :: Come On Baby</title>

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

        <%User manager = (User) request.getAttribute("manager");%>
        <%boolean isNew = (boolean) request.getAttribute("isNew");%>
        <%String formAction = "/admin/saveManager";%>

        <!-- Content section -->
        <section class="container-fluid content">
            <%String stringTitle = "";
            if (isNew) {
                stringTitle = "Add new manager";
            }else {
                stringTitle = "Manager settings";
            }%>
            <h3><i class="fa fa-user-secret"></i><%out.print(stringTitle);%></h3>

            <!-- Edit form -->
            <form action="<%out.print(formAction);%>" method="post">
                <div class="row">
                    <div class="col-md-6">

                        <input type="hidden" name="id" value="<%if (!isNew)out.print(manager.getId());%>">

                        <h4>Basic information</h4>

                        <div class="form-group delimiter mt10">
                            <label for="login">Login</label>
                            <input type="text" name="login" id="login" class="form-control" placeholder="Login" value="<%if (!isNew) out.print(manager.getSsoId());%>" required/>
                        </div>

                        <%--<div class="form-group">
                            <label for="name">Name</label>
                            <input type="text" name="email" id="name" class="form-control" placeholder="Name" required/>
                        </div>--%>

                        <div class="form-group">
                            <label for="email">E-mail</label>
                            <input type="email" name="email" id="email" class="form-control" placeholder="E-mail" value="<%if (!isNew) out.print(manager.getEmail());%>" required/>
                        </div>

                        <h4>Change password</h4>

                        <div class="form-group delimiter mt10">
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
                    <a href="/admin/manager-list" class="btn btn-default">Back</a>
                    <button class="btn btn-primary">Save</button>
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