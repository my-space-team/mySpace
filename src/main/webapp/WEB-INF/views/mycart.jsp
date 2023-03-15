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
            <div class="row">
                <div class="col-lg-12">
                <div class="main-profile ">
                    <div class="heading-section">
                        <h4><em>나의</em>장바구니</h4>
                    </div>
                    <div class="row">
                    <div class="col-lg-12">
                        <div class="clips">
                        <div class="row">
                            <div class="col-lg-12">
                                <c:forEach items="${list}" var="cartProduct" varStatus="status">
                                    <div class="item">
                                        <ul>
                                        <li><img src="${cartProduct.product.imageURL}" alt="" class="templatemo-item"><h4 style="font-size: 20px; margin-left: 15px;">${cartProduct.product.name}</h4></li>
                                        <li><h4>번호</h4><span>${status.index + 1}</span></li>
                                        <li><h4>상품명</h4><span>${cartProduct.product.name}</span></li>
                                        <li><h4>가격</h4><span>${cartProduct.product.price }</span></li>
                                        <li><h4>수량</h4><span>2022.03.13</span></li>
                                        <li><h4>삭제</h4><span>2022.03.13</span></li>
                                        </ul>
                                    </div>  
                                </c:forEach>
                                <div class="item">
                                    <ul>
                                    <li><img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/164393265025235969.jpg?gif=1&w=850&h=850&c=c&webp=1" alt="" class="templatemo-item"><h4 style="font-size: 17px; margin-left: 15px;"><span style="margin-left: 10px; color: #1EDDFF;">찰스퍼니처</span></h4></li>
                                    <li><h4>카테고리</h4><span>테이블, 식탁, 책상</span></li>
                                    <li><h4>상품가격</h4><span>1,800,000원</span></li>
                                    <li><h4>주문수량</h4><span>3개</span></li>
                                    <li><h4>주문일자</h4><span>2022.03.13</span></li>
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
</body>
</html>
