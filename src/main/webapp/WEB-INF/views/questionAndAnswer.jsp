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
<html lang="kr">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no, minimal-ui" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="format-detection" content="address=no" />

    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <title>질문과 답변 :: 컴온베이비</title>

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
            <h3><i class="fa fa-question-circle-o"></i>질문과 답변</h3>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th width="20">ID</th>
                    <th>닉네임</th>
                    <th>문제</th>
                    <th width="50">대답</th>
                    <th width="50">지위</th>
                    <th width="150">날짜</th>
                    <th width="170">동작</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>닉네임</th>
                    <th>문제</th>
                    <th>대답</th>
                    <th>지위</th>
                    <th>날짜</th>
                    <th>동작</th>
                </tr>
                </tfoot>

                <!-- Items list -->
                <tbody>

                <%
                    ArrayList<QuestionAnswer> questionAnswerArrayList = (ArrayList<QuestionAnswer>) request.getAttribute("questionAnswers");

                    Iterator<QuestionAnswer> questionAnswerIterator = questionAnswerArrayList.iterator();

                    while (questionAnswerIterator.hasNext()) {
                        QuestionAnswer questionAnswer = questionAnswerIterator.next();
                        String editQuestionAnswerUrl = "/q-a/response-question-answer/"+questionAnswer.getId();
                        AppUser appUser = questionAnswer.getAppUser();
                        String goToUserProfileUrl = "/users/user-profile/" + appUser.getId();
                        String deleteQuestionAnswerUrl = "/q-a/delete-question-answer/"+questionAnswer.getId();
                %>

                    <tr>
                        <td align="center"><%out.print(questionAnswer.getId());%></td>
                        <td><a href="<%out.print(goToUserProfileUrl);%>"><%out.print(appUser.getPreferences().getNickname());%></a></td>
                        <td><a href="<%out.print(editQuestionAnswerUrl);%>"><%out.print(questionAnswer.getTitle());%></a></td>

                        <%String checkClass = "fa fa-square-o"; if (questionAnswer.isAnswered()) checkClass = "fa fa-check-square";%>
                        <td align="center"><i class="<%out.print(checkClass);%>"></i></td>

                        <%String lockClass = "fa fa-unlock"; if (questionAnswer.isAccess()) lockClass = "fa fa-lock"; %>
                        <td align="center"><i class="<%out.print(lockClass);%>"></i></td>

                        <td align="center"><%out.print(questionAnswer.getQuestionDate().toString().substring(0, 19));%></td>
                        <td align="center">
                            <a href="<%out.print(editQuestionAnswerUrl);%>" data-toggle="tooltip" title="편집하다"><i class="fa fa-edit"></i> 편집하다</a>&nbsp; |&nbsp;
                            <a href="<%out.print(deleteQuestionAnswerUrl);%>" data-toggle="tooltip" title="지우다" class="deleteConfirm"><i class="fa fa-trash"></i> 지우다</a>
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