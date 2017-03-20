<%@ page import="com.ComeOnBaby.model.User" %>
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

    <title>Managers list :: Come On Baby</title>

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
            <h3><i class="fa fa-user-secret"></i>Managers</h3>

            <div class="mb20">
                <a href="<%out.print("/admin/addNewManager");%>" class="btn btn-primary"><i class="fa fa-plus-circle mr10"></i>Add new manager</a>
            </div>

            <%List<User> managerList = (List<User>) request.getAttribute("managerList");%>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th width="20">ID</th>
                    <th>Name</th>
                    <th>E-mail</th>
                    <th width="150">Action</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>E-mail</th>
                    <th>Action</th>
                </tr>
                </tfoot>

                <!-- Items list -->
                <tbody>

                <%if (managerList.size()>0){
                    for (User manager : managerList){%>
                        <tr>
                            <td align="center"><%out.print(manager.getId());%></td>
                            <td><a href="<%out.print("/admin/managerEdit/"+manager.getId());%>"><%out.print(manager.getSsoId());%></a></td>
                            <td><a href="mailto:info@someserver.com"><%out.print(manager.getEmail());%></a></td>
                            <td align="center">
                                <a href="<%out.print("/admin/managerEdit/"+manager.getId());%>" data-toggle="tooltip" title="Edit"><i class="fa fa-edit"></i> Edit</a>&nbsp; |&nbsp;
                                <a href="<%out.print("/admin/managerDelete/"+manager.getId());%>" data-toggle="tooltip" title="Delete" class="deleteConfirm"><i class="fa fa-trash"></i> Delete</a>
                            </td>
                        </tr>
                <%  }
                }%>
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