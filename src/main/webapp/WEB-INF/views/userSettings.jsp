<%@ page import="com.ComeOnBaby.model.User" %>
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

    <title>설정 :: 컴온베이비</title>

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
        <% String message = (String) request.getAttribute("message");
        if (message == null) { message = "error"; }%>

        <!-- Content section -->
        <section class="container-fluid content">
            <h3><i class="fa fa-cog"></i>설정</h3>

            <!-- Edit form -->
            <form action="/setting/saveSetting" method="post">
                <div class="row">
                    <div class="col-md-6">

                        <%if(message.equals("success")){%>
                            <!-- Alert message -->
                            <div class="alert alert-success">
                                <strong>좋은!</strong>
                                귀하의 정보가 업데이트되었습니다.
                            </div>
                            <!-- #End Alert message -->
                        <%}%>

                        <h4>알림</h4>

                        <div class="form-group delimiter mt10 mb30">
                            <label for="email_notifications">이메일</label>
                            <input type="email" name="email_notifications" id="email_notifications" class="form-control" placeholder="이메일" required value="<%out.print(userManager.getEmail());%>"/>
                        </div>

                        <h4>비밀번호 변경</h4>

                        <div class="form-group">
                            <label for="new_password">새 비밀번호</label>
                            <input type="password" name="password" id="new_password" class="form-control" placeholder="새 비밀번호"/>
                        </div>

                        <div class="form-group">
                            <label for="confirm_password">새 암호를 확인합니다</label>
                            <input type="password" name="confirm_password" id="confirm_password" class="form-control" placeholder="새 암호를 확인합니다"/>
                        </div>

                    </div>
                </div>

                <div class="mt20 delimiter">
                    <button type="submit" class="btn btn-primary">구하다</button>
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