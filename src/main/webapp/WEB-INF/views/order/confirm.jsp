<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html lang="ko">
<head></head>
<style type="text/css">
* {
	background-color: white !important;
}
</style>
<body>
	<%-- <%@ include file="/WEB-INF/views/header.jsp"%> --%>

	<%@ include file="/resources/common/header.jsp"%>

	<div class="container">
		<div class="col-lg-12">
			<div class="page-content">
				<div class="heading-section">
					<h4>주문완료</h4>
				</div>
				<!-- 결제확인내용 -->
				<div class="container">
					<div class="row">
						<table class="table">
							<tbody>
								<tr>
									<th scope="col">배송지</th>
									<th scope="col">${order.address}</th>
								</tr>
								<tr>
									<th scope="row">주문자</th>
									<td>${order.deliveryName}</td>
								</tr>
								<tr>
								    <th scope="row">주문상품</th>
								    <c:forEach items="${productList}" var="product">
								    
								        <td>${product.name}</td>
								    </c:forEach>
								</tr>
								<tr>
									<th scope="row">결제수단</th>
									<td>${order.payment}</td>
								</tr>
								<tr>
									<th scope="row">총결제금액</th>
									<td>${order.price}</td>
								</tr>
								<tr>
									<th scope="row">주문일자</th>
									<td>${order.state}</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="main-button">
						<a href="/">돌아가기</a>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
  	<!-- footer 삽입 -->
	<%@ include file="/resources/common/footer.jsp" %>

	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<div id="script"></div>
	<script>
		$(document).ready(function() {
			$("head").load("/resources/common/common_head.html");
			$("#script").load("/resources/common/include_script.html");
		});
	</script>
</body>
</html>