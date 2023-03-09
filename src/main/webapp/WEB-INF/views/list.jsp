<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>이미지</th>
			<th>상품</th>
			<th>수량</th>
			<th>가격</th>
			<th>삭제</th>
		</tr>
	</thead>
	

	
	

</table>

	<div class="form-group">
		<label>총 상품 금액</label>
	</div>
	
	<div class="form-group">
		<label>배송비</label>
	</div>
	
	<div class="form-group">
		<label>총 결제 금액</label>
	</div>
	
	<button class="btn-order" method="get">구매하기</button>
</body>
</html>