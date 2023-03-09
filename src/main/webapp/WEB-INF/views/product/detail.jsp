<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<input type="hidden" value="${product.idx }">
<table>
	<tr>
		<td>
			${product.category }
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


</div>
</body>
</html>