<%@ page import="com.HealthCareSocialAppServer.model.AppUser" %>
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

    <title>기초질문사항 :: 컴온베이비</title>

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

    <% AppUser user = (AppUser) request.getAttribute("user"); %>
    <% List<String> listQuestion1 = (List<String>) request.getAttribute("listQuestion1"); %>
    <% List<String> listQuestion2 = (List<String>) request.getAttribute("listQuestion2"); %>
    <% List<String> listQuestion3 = (List<String>) request.getAttribute("listQuestion3"); %>
    <% List<String> listQuestion4 = (List<String>) request.getAttribute("listQuestion4"); %>
    <% List<String> listQuestion5 = (List<String>) request.getAttribute("listQuestion5"); %>
    <% List<String> listQuestion6 = (List<String>) request.getAttribute("listQuestion6"); %>
    <% List<String> listQuestion7 = (List<String>) request.getAttribute("listQuestion7"); %>

    <!-- Page Content -->
    <div id="page-content-wrapper">

        <%@ include file="topLine.jsp" %>

        <!-- Content section -->
        <section class="container-fluid content">
            <h3><i class="fa fa-question-circle-o"></i>기초질문사항</h3>

            <form id="basicQuestionsForm" action="/users/basicQuestionsEdit/<%out.print(user.getId());%>" method="POST">
                <!-- Question 1 -->
                <section class="question">
                    <h4>난임 기간은 몇 년 되셨습니까?</h4>

                    <div class="mt15 mb10 clearfix">
                        <div class="radio radio-inline">
                            <input type="radio" name="question1" id="question1_1" value="1" <%out.print(listQuestion1.get(0));%>>
                            <label for="question1_1">없음</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question1" id="question1_2" value="2" <%out.print(listQuestion1.get(1));%>>
                            <label for="question1_2">1년이상 ∼ 2년이하</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question1" id="question1_3" value="3" <%out.print(listQuestion1.get(2));%>>
                            <label for="question1_3">2년이상 ∼ 3년이하</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question1" id="question1_4" value="4" <%out.print(listQuestion1.get(3));%>>
                            <label for="question1_4">3년이상 ∼ 5년이하</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question1" id="question1_5" value="5" <%out.print(listQuestion1.get(4));%>>
                            <label for="question1_5">5년 이상</label>
                        </div>
                    </div>
                </section>
                <!-- #End Question 1 -->

                <!-- Question 2 -->
                <section class="question">
                    <h4>귀하는 현재 자녀 가 있습니까?</h4>

                    <div class="mt15 mb10 clearfix">
                        <div class="radio radio-inline">
                            <input type="radio" name="question2" id="question2_1" value="1" <%out.print(listQuestion2.get(0));%>>
                            <label for="question2_1">없음</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question2" id="question2_2" value="2" <%out.print(listQuestion2.get(1));%>>
                            <label for="question2_2">1명</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question2" id="question2_3" value="3" <%out.print(listQuestion2.get(2));%>>
                            <label for="question2_3">2명</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question2" id="question2_4" value="4" <%out.print(listQuestion2.get(3));%>>
                            <label for="question2_4">3명</label>
                        </div>

                        <div class="radio radio-inline">
                            <input type="radio" name="question2" id="question2_5" value="5" <%out.print(listQuestion2.get(4));%>>
                            <label for="question2_5">4명 이상</label>
                        </div>
                    </div>
                </section>
                <!-- #End Question 2 -->

                <!-- Question 3 -->
                <section class="question">
                    <h4>귀하 가 경험한 난임 치료는? <small>(중복체크 가 능)</small></h4>

                    <div class="mt10 mb10 clearfix closeCheckbox onlyNumbers">
                        <div class="checkbox">
                            <input type="checkbox" name="question3_1" id="question3_1" <%out.print(listQuestion3.get(0));%>>
                            <label for="question3_1" style="display: inline-block; width: 170px;">자연임신유도</label>
                            <input type="text" name="question3_1_1" id="question3_1_1" class="ml5 mr5" value="<%out.print(listQuestion3.get(1));%>" />회
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_2" id="question3_2" <%out.print(listQuestion3.get(2));%>>
                            <label for="question3_2" style="display: inline-block; width: 170px;">배란유도</label>
                            <input type="text" name="question3_2_1" id="question3_2_1" class="ml5 mr5" value="<%out.print(listQuestion3.get(3));%>"/>회
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_3" id="question3_3" <%out.print(listQuestion3.get(4));%>>
                            <label for="question3_3" style="display: inline-block; width: 170px;">인공수정</label>
                            <input type="text" name="question3_3_1" id="question3_3_1" class="ml5 mr5" value="<%out.print(listQuestion3.get(5));%>"/>회
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_4" id="question3_4" <%out.print(listQuestion3.get(6));%>>
                            <label for="question3_4" style="display: inline-block; width: 170px;">체외수정시술</label>
                            <input type="text" name="question3_4_1" id="question3_4_1" class="ml5 mr5" value="<%out.print(listQuestion3.get(7));%>"/>회
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_5" id="question3_5" <%out.print(listQuestion3.get(8));%>>
                            <label for="question3_5" style="display: inline-block; width: 170px;">수술</label>
                            <input type="text" name="question3_5_1" id="question3_5_1" class="ml5 mr5" value="<%out.print(listQuestion3.get(9));%>"/>회
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_6" id="question3_6" <%out.print(listQuestion3.get(10));%>>
                            <label for="question3_6" style="display: inline-block; width: 170px;">자궁내시경</label>
                            <input type="text" name="question3_6_1" id="question3_6_1" class="ml5 mr5" value="<%out.print(listQuestion3.get(11));%>"/>회
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_7" id="question3_7" <%out.print(listQuestion3.get(12));%>>
                            <label for="question3_7" style="display: inline-block; width: 170px;">복 가강 경시술</label>
                            <input type="text" name="question3_7_1" id="question3_7_1" class="ml5 mr5" value="<%out.print(listQuestion3.get(13));%>"/>회
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_8" id="question3_8" <%out.print(listQuestion3.get(14));%>>
                            <label for="question3_8" style="display: inline-block; width: 170px;">자궁내막자극술</label>
                            <input type="text" name="question3_8_1" id="question3_8_1" class="ml5 mr5" value="<%out.print(listQuestion3.get(15));%>"/>회
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_9" id="question3_9" <%out.print(listQuestion3.get(16));%>>
                            <label for="question3_9" style="display: inline-block; width: 170px;">검사</label>
                            <input type="text" name="question3_9_1" id="question3_9_1" class="ml5 mr5" value="<%out.print(listQuestion3.get(17));%>"/>회
                        </div>

                        <div class="checkbox">
                            <input type="checkbox" name="question3_10" id="question3_10" <%out.print(listQuestion3.get(18));%>>
                            <label for="question3_10" style="display: inline-block; width: 170px;">기 타</label>
                            <input type="text" name="question3_10_1" id="question3_10_1" class="ml5 mr5" value="<%out.print(listQuestion3.get(19));%>"/>회
                        </div>

                    </div>
                </section>
                <!-- #End Question 3 -->

                <!-- Question 4 -->
                <section class="question">
                    <h4>귀하의 난임 원인은? <small>(중복체크 가 능)</small></h4>

                    <!-- Female -->
                    <h4 class="mt10"><i class="fa fa-venus"></i> 여성</h4>

                    <div class="mt15 mb5 clearfix">
                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10 pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_1_1" id="question4_1_1" <%out.print(listQuestion4.get(0));%>>
                            <label for="question4_1_1">난소기능저하</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10 pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_1_2" id="question4_1_2" <%out.print(listQuestion4.get(1));%>>
                            <label for="question4_1_2">자궁근종</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10 pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_1_3" id="question4_1_3" <%out.print(listQuestion4.get(2));%>>
                            <label for="question4_1_3">자궁선근증</label>
                        </div>
                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10 pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_1_4" id="question4_1_4" <%out.print(listQuestion4.get(3));%>>
                            <label for="question4_1_4">호르몬요인</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10 pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_1_5" id="question4_1_5" <%out.print(listQuestion4.get(4));%>>
                            <label for="question4_1_5">습관성(계류)유산</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10 pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_1_6" id="question4_1_6" <%out.print(listQuestion4.get(5));%>>
                            <label for="question4_1_6">원인불명</label>
                        </div>
                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10 pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_1_7" id="question4_1_7" <%out.print(listQuestion4.get(6));%>>
                            <label for="question4_1_7">다낭성난소증후군</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10 pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_1_8" id="question4_1_8" <%out.print(listQuestion4.get(7));%>>
                            <label for="question4_1_8">월경이상</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10 pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_1_9" id="question4_1_9" <%out.print(listQuestion4.get(8));%>>
                            <label for="question4_1_9">자궁내막증</label>
                        </div>
                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10 pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_1_10" id="question4_1_10" <%out.print(listQuestion4.get(9));%>>
                            <label for="question4_1_10">나팔관이상․폐쇄</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10 pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_1_11" id="question4_1_11" <%out.print(listQuestion4.get(10));%>>
                            <label for="question4_1_11">배란장애</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10 pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_1_12" id="question4_1_12" <%out.print(listQuestion4.get(11));%>>
                            <label for="question4_1_12">임신준비</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10 pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_1_13" id="question4_1_13" <%out.print(listQuestion4.get(12));%>>
                            <label for="question4_1_13">수족냉증․혈액순환장애</label>
                        </div>

                        <div class="checkbox pt5 pb5 pr10 ml0 closeCheckbox">
                            <input type="checkbox" name="question4_1_14" id="question4_1_14" value="14" <%out.print(listQuestion4.get(13));%>>
                            <label for="question4_1_14" style="display: inline-block;">기 타</label>
                            <input type="text" name="question4_1_14_1" id="question4_1_14_1" class="ml5 mr5" value="<%out.print(listQuestion4.get(14));%>"/>
                        </div>
                    </div>
                    <!-- #End Female -->

                    <!-- Male -->
                    <h4 class="mt20"><i class="fa fa-mars"></i> 남성</h4>

                    <div class="mt15 mb5 clearfix">
                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_2_1" id="question4_2_1" <%out.print(listQuestion5.get(0));%>>
                            <label for="question4_2_1">소약정자증(정액검사상 정자의수, 운동성, 모양기형 등)</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_2_2" id="question4_2_2" <%out.print(listQuestion5.get(1));%>>
                            <label for="question4_2_2">호르몬요인</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_2_3" id="question4_2_3" <%out.print(listQuestion5.get(2));%>>
                            <label for="question4_2_3">무정자증(폐쇄성․비폐쇄성)</label>
                        </div>
                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_2_4" id="question4_2_4" <%out.print(listQuestion5.get(3));%>>
                            <label for="question4_2_4">정계정맥류</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question4_2_5" id="question4_2_5" <%out.print(listQuestion5.get(4));%>>
                            <label for="question4_2_5">원인불명</label>
                        </div>

                        <div class="checkbox pt5 pb5 pr10 ml0 closeCheckbox">
                            <input type="checkbox" name="question4_2_6" id="question4_2_6" <%out.print(listQuestion5.get(5));%>>
                            <label for="question4_2_6" style="display: inline-block;">기 타</label>
                            <input type="text" name="question4_2_6_1" id="question4_2_6_1" class="ml5 mr5" value="<%out.print(listQuestion5.get(6));%>"/>
                        </div>
                    </div>
                    <!-- #End Male -->

                </section>
                <!-- #End Question 4 -->

                <!-- Question 5 -->
                <section class="question">
                    <h4>지금 가장 필요한 도움이나 힘든 부분이 무엇입니까? <small>(중복체크 가 능)</small></h4>

                    <div class="mt15 mb5 clearfix">
                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question5_1" id="question5_1" <%out.print(listQuestion6.get(0));%>>
                            <label for="question5_1">심리적(난임, 불안, 우울, 기분장애)</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question5_2" id="question5_2" <%out.print(listQuestion6.get(1));%>>
                            <label for="question5_2">가족시선의 대응 대처방법(배우자, 시댁, 친정)</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question5_3" id="question5_3" <%out.print(listQuestion6.get(2));%>>
                            <label for="question5_3">병원-의학정보</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question5_4" id="question5_4" <%out.print(listQuestion6.get(3));%>>
                            <label for="question5_4">지원제도</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question5_5" id="question5_5" <%out.print(listQuestion6.get(4));%>>
                            <label for="question5_5">주변시선의 대응 대처방법 (종교, 이웃, 친구, 직장동료, 난임동료, 기타 등)</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question5_6" id="question5_6" <%out.print(listQuestion6.get(5));%>>
                            <label for="question5_6">경제적인 문제</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question5_7" id="question5_7" <%out.print(listQuestion6.get(6));%>>
                            <label for="question5_7">영양상담(식습관)</label>
                        </div>

                        <div class="checkbox pt5 pb5 pr10 ml0 closeCheckbox">
                            <input type="checkbox" name="question5" id="question5_8" <%out.print(listQuestion6.get(7));%>>
                            <label for="question5_8" style="display: inline-block;">기 타</label>
                            <input type="text" name="question5_8_1" id="question5_8_1" class="ml5 mr5" value="<%out.print(listQuestion6.get(8));%>"/>
                        </div>
                    </div>

                </section>
                <!-- #End Question 5 -->

                <!-- Question 6 -->
                <section class="question">
                    <h4>향후 가족 계획에 대한 생각은 무엇입니까? <small>(중복체크 가 능)</small></h4>

                    <div class="mt15 mb5 clearfix">
                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question6_1" id="question6_1"  <%out.print(listQuestion7.get(0));%>>
                            <label for="question6_1">부부만</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question6_2" id="question6_2"  <%out.print(listQuestion7.get(1));%>>
                            <label for="question6_2">입양</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question6_3" id="question6_3"  <%out.print(listQuestion7.get(2));%>>
                            <label for="question6_3">위탁모 체험</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question6_4" id="question6_4"  <%out.print(listQuestion7.get(3));%>>
                            <label for="question6_4">이혼</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question6_6" id="question6_6"  <%out.print(listQuestion7.get(4));%>>
                            <label for="question6_6">생 가각 해본적 없다</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question6_7" id="question6_7"  <%out.print(listQuestion7.get(5));%>>
                            <label for="question6_7">대리모</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question6_8" id="question6_8"  <%out.print(listQuestion7.get(6));%>>
                            <label for="question6_8">정자공여</label>
                        </div>

                        <div class="checkbox checkbox-inline pt5 pb5 ml0 pr10">
                            <input type="checkbox" name="question6_9" id="question6_9"  <%out.print(listQuestion7.get(7));%>>
                            <label for="question6_9">난자공여</label>
                        </div>

                        <div class="checkbox pt5 pb5 pr10 ml0 closeCheckbox">
                            <input type="checkbox" name="question6" id="question6_10" value="10"  <%out.print(listQuestion7.get(8));%>>
                            <label for="question6_10" style="display: inline-block;">기 타</label>
                            <input type="text" name="question6_10_1" id="question6_10_1" class="ml5 mr5" value="<%out.print(listQuestion7.get(9));%>"/>
                        </div>
                    </div>
                </section>
                <!-- #End Question 6 -->

                <div class="mt20">
                    <a href="<% out.print("/users/user-profile/" + user.getId()); %>" class="btn btn-default">뒤로</a>
                    <button type="submit" class="btn btn-primary">구하다</button>
                </div>
            </form>

        </section>
        <!-- Content section -->

    </div>
    <!-- #End Page-content -->

</div>
<!-- #End Wrapper -->

<%@ include file="footerJavaScript.jsp" %>

<script>
    jQuery(document).ready(function($) {
        $(".onlyNumbers input[type=text]").keypress(function (e) {
            if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
                return false;
            }
        });

        $(".closeCheckbox input[type=checkbox]").each(function () {
            var checkbox_id = $(this).attr('id');
            var input_id = checkbox_id + "_1";

            $("#" + checkbox_id).attr("disabled", true);

            if ($.trim($("#" + input_id).val()).length > 0) {
                $("#" + checkbox_id).attr("checked", true);
            }

            $("#" + input_id).keyup(function () {
                if ($.trim($("#" + input_id).val()).length > 0) {
                    $("#" + checkbox_id).attr('checked', true);
                } else {
                    $("#" + checkbox_id).attr('checked', false);
                }
            });
        });
    });
</script>


</body>
</html>