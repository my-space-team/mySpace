<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- head 추가 -->
    <%@ include file="/resources/common/common_head.jsp" %>
    <link rel="stylesheet" href="/resources/css/member-home.css">
</head>

<body>
    <!-- header 추가 -->
    <%@ include file="/resources/common/header.jsp" %>

    <div class="container" style="box-sizing: border-box !important;">
        <div class="row">
        <div class="col-lg-12">
            <div class="page-content">

            <!-- ***** Banner Start ***** -->
            <div class="row">
                <div class="col-lg-12">
                <div class="main-profile ">
                    <div class="row">
                    <div class="col-lg-4">
                        <img src="/resources/asset/images/profile_images.webp" alt="" style="border-radius: 23px;">
                    </div>
                    <div class="col-lg-4 align-self-center">
                        <div class="main-info header-text">
                        <span>접속중</span>
                        <h4>${member.name}님, 환영합니다.</h4>
                        <p>자기소개를 입력해주세요.</p>
                        <div class="main-border-button">
                            <a id="dialog" href="member/update">회원정보수정</a>
                            <dialog>
                                <h4>회원정보수정</h4>
                                <form name="form-member-update" onsubmit="return false;">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    <input type="hidden" name="idx" value=<c:out value="${member.idx}"/>>
                                    <input type="hidden" name="loginId" value=<c:out value="${member.loginId}"/>>
                                    <label for="name">이름</label>
                                    <input class="form-control" type="text" id="name" name="name" value=<c:out value="${member.name}"/>>
                                    <br>
                                    <label for="password">비밀번호</label>
                                    <input class="form-control" type="password" id="password" name="password" />>
                                    <br>
                                    <label for="name">이메일</label>
                                    <input class="form-control" type="text" name="email"value=<c:out value="${member.email}"/>>
                                    <br>
                                    <label for="name">전화번호</label>
                                    <input class="form-control" type="text" name="phone" value=<c:out value="${member.phone}"/>>
                                    <br>
                                </form>
                                <div class="col-lg-12">
                                <div class="main-button">
                                    <a class="js-update">저장하기</a>
                                </div>
                                </div>
                            </dialog>
                        </div>
                        </div>
                    </div>
                    <div class="col-lg-4 align-self-center">
                        <ul>
                        <li>나의주문내역<span>32건</span></li>
                        <li><a href="/mypage/review">내가 작성한 리뷰</a> <span>16건</span></li>
                        <li>질문과 답변<span>0건</span></li>
                        <li>내 장바구니<span>5건</span></li>
                        </ul>
                    </div>
                    </div>
                    <div class="row">
                    <div class="col-lg-12">
                        <div class="clips">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="heading-section">
                                    <h4><em>최근</em> 주문내역</h4>
                                </div>
                                <div class="item">
                                    <ul>
                                    <li><img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/164393265025235969.jpg?gif=1&w=850&h=850&c=c&webp=1" alt="" class="templatemo-item"><h4 style="font-size: 17px; margin-left: 15px;">쿠르보 테이블 07<span style="margin-left: 10px; color: #1EDDFF;">찰스퍼니처</span></h4></li>
                                    <li><h4>카테고리</h4><span>테이블, 식탁, 책상</span></li>
                                    <li><h4>상품가격</h4><span>1,800,000원</span></li>
                                    <li><h4>주문수량</h4><span>1개</span></li>
                                    <li><h4>주문일자</h4><span>2022.03.13</span></li>
                                    <!-- <li><div class="main-border-button border-no-active"><a href="#">Donwloaded</a></div></li> -->
                                    </ul>
                                </div>
                                <div class="item last-item">
                                    <ul>
                                    <li><img src="assets/images/game-03.jpg" alt="" class="templatemo-item"></li>
                                    <li><h4>CS-GO</h4><span>Sandbox</span></li>
                                    <li><h4>Date Added</h4><span>21/04/2022</span></li>
                                    <li><h4>Hours Played</h4><span>632 H 46 Mins</span></li>
                                    <li><h4>Currently</h4><span>Downloaded</span></li>
                                    </ul>
                                </div>
                                </div>
                            </div>
                            <div class="col-lg-12">
                            <div class="main-button">
                                <a href="#">TOP</a>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    </div>
                </div>
                </div>
            </div>
            </div>
        </div>
        </div>
    </div>

  	<!-- footer 삽입 -->
	<%@ include file="/resources/common/footer.jsp" %>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <%@ include file="/resources/common/include_script.jsp" %>

    <!-- Only this page. -->
    <%@ include file="/resources/common/javascript/member_js.jsp" %>
</body>
</html>
