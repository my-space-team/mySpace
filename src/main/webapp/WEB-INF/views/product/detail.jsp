<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
 <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<div>


<%@ include file="/WEB-INF/views/header.jsp" %>
<div>
<input type="hidden" value="${product.idx }">

	<div style="margin: 110px auto 0; align-items: center; width: 1100px; height:400px; display: flex; font-family: Noto Sans KR;">
		<div style="width: 40%; height: 150px; margin: 50px">
			<img src="../../resources/asset/images/profile.jpg">
		</div>
		<div style="width: 70%; margin: 10px; display: flex; margin-top: 70px;">
			<div style="width: 60%; height:100px; display:table-cell; vertical-align:middle; ">
				<span>${product.category.name }</span><br>
				<span>${product.brand.name }</span>		<br>	
				<span style="font-size: 2.0em;">${product.name }</span><br>
				
				<fmt:formatNumber value="${product.price }" pattern="#,###원"/><br><br>
				
				<button id="cart" style="width: 150px; height: 50px;" type="button"
				 class="btn btn-info">장바구니</button>
				<button id="purchase" style="width: 150px; height: 50px;"
				 class="btn btn-info">구매하기</button>
				
			</div>
		</div>
	</div>
</div>




  <script src="../../resources/vendor/jquery/jquery.min.js"></script>
  <div id="script"></div>
  <script>
    $(document).ready(function(){
      $("head").load("../../resources/common/common_head.html");
      $("#script").load("../../resources/common/include_script.html");
    });
    
    $("#cart").click(function(){
    	location.href="../cart/list";
    })
    
  </script>
</div>
</body>
</html>