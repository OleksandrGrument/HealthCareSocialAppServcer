<%@ page import="com.ComeOnBaby.model.QuestionAnswer" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.ComeOnBaby.model.AppUser" %>
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

    <title>Questions &amp; Answers :: Come On Baby</title>

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
            <h3><i class="fa fa-question-circle-o"></i>Questions &amp; Answers</h3>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th width="20">ID</th>
                    <th>Login</th>
                    <th>Question</th>
                    <th width="50">Answer</th>
                    <th width="50">Status</th>
                    <th >Date</th>
                    <th width="150">Action</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>Login</th>
                    <th>Question</th>
                    <th>Answer</th>
                    <th>Status</th>
                    <th>Date</th>
                    <th>Action</th>
                </tr>
                </tfoot>

                <!-- Items list -->
                <tbody>

                <%
                    ArrayList<QuestionAnswer> questionAnswerArrayList = (ArrayList<QuestionAnswer>) request.getAttribute("questionAnswers");

                    Iterator<QuestionAnswer> questionAnswerIterator = questionAnswerArrayList.iterator();

                    while (questionAnswerIterator.hasNext()) {
                        QuestionAnswer questionAnswer = questionAnswerIterator.next();
                        String editQuestionAnswerUrl = "/q-a/edit-question-answer/"+questionAnswer.getId();
                        AppUser appUser = questionAnswer.getAppUser();
                        String goToUserProfileUrl = "/users/user-profile/" + appUser.getId();
                        String deleteQuestionAnswerUrl = "/q-a/delete-question-answer/"+questionAnswer.getId();
                %>

                    <tr>
                        <td align="center"><%out.print(questionAnswer.getId());%></td>
                        <td><a href="<%out.print(goToUserProfileUrl);%>"><%out.print(appUser.getPreferences().getNickname());%></a></td>
                        <td><a href="<%out.print(editQuestionAnswerUrl);%>"><%out.print(questionAnswer.getTitle());%></a></td>

                        <%String checkClass = "fa fa-square-o"; if (questionAnswer.isAccess()) checkClass = "fa fa-check-square";%>
                        <td align="center"><i class="<%out.print(checkClass);%>"></i></td>

                        <%String lockClass = "fa fa-unlock"; if (questionAnswer.isAnswered()) lockClass = "fa fa-lock"; %>
                        <td align="center"><i class="<%out.print(lockClass);%>"></i></td>

                        <td align="center"><%out.print(questionAnswer.getQuestionDate());%></td>
                        <td align="center">
                            <a href="<%out.print(editQuestionAnswerUrl);%>" data-toggle="tooltip" title="Edit"><i class="fa fa-edit"></i> Edit</a>&nbsp; |&nbsp;
                            <a href="<%out.print(deleteQuestionAnswerUrl);%>" data-toggle="tooltip" title="Delete" class="deleteConfirm"><i class="fa fa-trash"></i> Delete</a>
                        </td>
                    </tr>
                <%}%>
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