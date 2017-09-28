<%@ page import="com.HealthCareSocialAppServer.model.PushEvent" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no, minimal-ui"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="format-detection" content="address=no"/>

    <meta name="description" content=""/>
    <meta name="keywords" content=""/>

    <title>Push 리스트 :: 컴온베이비</title>

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
            <h3><i class="fa fa-bell-o"></i>Push 리스트</h3>

            <div class="mb20">
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#pushNotifications"><i
                        class="fa fa-plus-circle mr10"></i>새로운
                </button>
            </div>

            <table id="dataTable" class="table table-striped table-bordered" width="100%" cellspacing="0">
                <thead>
                <tr>
                    <th width="20">ID</th>
                    <th width="70">공지사항 ID</th>
                    <th>푸시 메시지</th>
                    <th width="150">날짜</th>
                </tr>
                </thead>
                <tfoot>
                <tr>
                    <th>ID</th>
                    <th>공지사항 ID</th>
                    <th>푸시 메시지</th>
                    <th>날짜</th>
                </tr>
                </tfoot>

                <!-- Items list -->
                <tbody>
                <%
                    ArrayList<PushEvent> noticeArrayList = (ArrayList<PushEvent>) request.getAttribute("pushEvents");

                    Iterator<PushEvent> pushEventIterator = noticeArrayList.iterator();

                    while (pushEventIterator.hasNext()) {
                        PushEvent pushEvent = pushEventIterator.next();

                %>
                <tr>
                    <td align="center"><%out.print(pushEvent.getId());%></td>
                    <td align="center"><%out.print(pushEvent.getNoticeId());%></td>
                    <td><%out.print(pushEvent.getNotificationText());%></td>
                    <td align="center"><%out.print(pushEvent.getQuestionDate().toString().substring(0, 19));%></td>
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

<!-- Push notifications Modal -->
<div id="pushNotifications" class="modal fade" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <form method="post" action="/push/send" id="pushNotificationsForm" role="form" data-toggle="validator">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h3 class="mb0"><i class="fa fa-bell-o"></i>PUSH 보내기</h3>
                </div>

                <!-- Modal body -->
                <div class="modal-body">

                    <div class="form-group">
                        <label for="noticeId" class="control-label">공지사항 ID</label>
                        <input type="text" class="form-control form-block" name="id" id="noticeId" placeholder="공지사항 ID"
                               required/>
                    </div>

                    <div class="form-group">
                        <label for="notification" class="control-label">푸시 메시지</label>
                        <textarea name="notificationText" id="notification" class="form-control form-block" rows="3"
                                  placeholder="푸시 메시지" required></textarea>
                    </div>

                    <%--<div class="form-group">
                        <label class="control-label">푸쉬 이미지</label>
                        <input id="fileInput" name="push_image" type="file" class="file" placeholder="Push image"/>
                    </div>--%>

                </div>
                <!-- #End Modal body -->

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
                    <button type="submit" class="btn btn-primary">보내기</button>
                </div>
            </div>
        </form>
        <!-- #End Modal content-->

    </div>
</div>
<!-- #End Push notifications Modal -->

<%@ include file="footerJavaScript.jsp" %>

<script>
    <%
        Boolean isSuccess = (Boolean) request.getAttribute("isSuccess");
        Boolean isFalse = (Boolean) request.getAttribute("isFalse");
    %>
    jQuery(document).ready(function () {
        <%if (isSuccess !=null && isSuccess){%>

        // success
        swal({
            title: 'Great!',
            text: 'Push Success!',
            type: 'success',
            confirmButtonColor: '#307f7a'
        });
        <%}
            if (isFalse !=null && isFalse) {
        %>
        // error
        swal({
            title: 'Oops...',
            text: 'Notice ID not exist!',
            type: 'error',
            confirmButtonColor: '#307f7a'
        });

        <%}%>
    });
</script>


</body>
</html>