<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<html lang="ko">
<head>
</head>
<body>
<div id="header"></div>
  <div class="order-container">
    <h2>주문 조회</h2>
    <c:forEach var="order" items="${orderList}">
    <div class="order-box">
      <div class="order-date">2023. 3. 6 주문</div>
      <div class="order-data">
        <div><img src="${order.cart.product.imageURL}" alt=""></div>
        <div class="order-info">
          <div>${order.product.name}</div>
          <div><span>${order.product.price}원</span><span>${order.cartProduct.amount} 개</span></div>
        </div>
        <div class="order-button">
          <input type="button" value="리뷰 작성">
          <input type="button" value="주문 취소">
        </div>
      </div>
    </div>
    </c:forEach>
    
  </div>
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <div id="script"></div>
	<script>
	    $(document).ready(function(){
	      $("head").load("/resources/mypage/order_list.html");
	      $("#script").load("/resources/common/include_script.html");
	      $("#header").load("/resources/common/header.html");
	    });
  	</script>
</body>
</html>