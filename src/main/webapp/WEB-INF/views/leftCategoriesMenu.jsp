<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="false" %>
<aside class="sidebar-nav">
    <div class="left-top-line logo"><a href="/">ComeOnBaby</a></div>
    <%
        String currentPath = (String) request.getAttribute("javax.servlet.forward.request_uri");
        System.out.println(currentPath);
    %>
    <ul>
        <li><a href="/users/"><i class="fa fa-user" aria-hidden="true"></i> 회원관리</a></li>
        <li>
            <a href="/guide/featured-recipes"><i class="fa fa-file" aria-hidden="true"></i> Guide</a>
            <ul class="sub-menu">
                <li><a href="/guide/featured-recipes"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Featured recipes</a></li>
                <li><a href="/guide/fertilization"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Fertilization guide</a></li>
            </ul>
        </li>
        <li>
            <a href="/notice/events"><i class="fa fa-users" aria-hidden="true"></i> Community</a>
            <ul class="sub-menu">
                <li><a href="/notice/events"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Notice / Event</a></li>
                <li><a href="/my/story"><i class="fa fa-angle-double-right" aria-hidden="true"></i> My success story</a></li>
                <li><a href="/my/recipes"><i class="fa fa-angle-double-right" aria-hidden="true"></i> My recipes</a></li>
                <li><a href="/my/husband"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Husband story</a></li>
                <li><a href="/q-a/list"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Q &amp; A list</a></li>
            </ul>
        </li>
        <li><a href="/push/notification"><i class="fa fa-envelope" aria-hidden="true"></i> Push</a></li>
        <li>
            <a href="/report/generalMonthlyReport"><i class="fa fa-bar-chart" aria-hidden="true"></i> Report</a>
            <ul class="sub-menu">
                <li><a href="/report/generalMonthlyReport"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Monthly report</a></li>
                <li><a href="/report/generalWeeklyReport"><i class="fa fa-angle-double-right" aria-hidden="true"></i> Weekly report</a></li>
            </ul>
        </li>
        <li><a href="/setting/"><i class="fa fa-cogs" aria-hidden="true"></i> Settings</a></li>
    </ul>
    <div class="copyright">2017 &copy; ComeOnBaby</div>
</aside>