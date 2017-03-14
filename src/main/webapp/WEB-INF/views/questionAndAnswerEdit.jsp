<%@ page import="com.ComeOnBaby.model.QuestionAnswer" %>
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

    <title>Answer question :: Come On Baby</title>

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
            <h3><i class="fa fa-question-circle-o"></i>Answer the question</h3>

            <!-- Edit form -->
            <%QuestionAnswer questionAnswer = (QuestionAnswer) request.getAttribute("questionAnswer");%>

            <form action="/q-a/answer-the-question" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <!-- Question section -->
                        <div class="question">
                            <h4><%out.print(questionAnswer.getTitle());%></h4>
                            <p class="mt10 mb0 text-justify"><%out.print(questionAnswer.getQuestionText());%></p>
                        </div>
                        <!-- #End Question section -->

                        <input type="hidden" name="id" value="<%out.print(questionAnswer.getId());%>">

                        <!-- Answer section -->
                        <div class="form-group">
                            <label for="editor">Answer</label>
                            <%String answerText = ""; if (questionAnswer.isAnswered()) answerText = questionAnswer.getAnswerText(); %>
                            <textarea name="answerText" class="form-control" id="editor"><%out.print(answerText);%></textarea>
                        </div>
                        <!-- #End Answer section -->
                    </div>
                </div>

                <div class="mt20 delimiter">
                    <a href="/q-a/list" class="btn btn-default">Back</a>
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