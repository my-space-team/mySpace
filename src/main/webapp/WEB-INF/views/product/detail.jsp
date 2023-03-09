<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<div>

<%@ include file="/WEB-INF/views/header.jsp" %>

<input type="hidden" value="${product.idx }">
<table style="margin-top: 200px; margin-left: 500px;">

	<tr>
		<td style="float: right;">
			<img src="../../resources/asset/images/profile.jpg">
			
			
			${product.category.name }
			${product.brand.name }
			${product.name }
		
		
		</td>
	</tr>
	
	<tr>
	<td >
		
	</td>
	</tr>
	
	<tr>
		<td>
			${product.brand.name }
		</td>
	</tr>
	
	<tr>
		<td>
			${product.name }
		</td>
	</tr>
	
	<tr>
		<td>
			<fmt:formatNumber value="${product.price }" pattern="#,###원"/>
		</td>
	</tr>
	
	<tr>
		<td>
			<button>장바구니</button>
			<button>구매하기</button>
		</td>
	</tr>

</table>


  <script src="../../resources/vendor/jquery/jquery.min.js"></script>
  <div id="script"></div>
  <script>
    $(document).ready(function(){
      $("head").load("../../resources/common/common_head.html");
      $("#script").load("../../resources/common/include_script.html");
    });
  </script>
</div>
</body>
</html>