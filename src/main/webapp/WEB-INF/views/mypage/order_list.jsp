<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<html lang="ko">
<head>
</head>


<body>
<div id="header"></div>
  <div class="order-container">
    <h2>주문 조회</h2>
    <div class="order-box">
      <div class="order-date">2023. 3. 6 주문</div>
      <div class="order-data">
        <div><img src="/resources/asset/images/details-02.jpg" alt=""></div>
        <div class="order-info">
          <div>순수 유기농 오가닉 코튼100 알러지케어 호텔 침구</div>
          <div><span>109,900원</span><span>1 개</span></div>
        </div>
        <div class="order-button">
          <input type="button" value="리뷰 작성">
          <input type="button" value="주문 취소">
        </div>
      </div>
    </div>
    
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