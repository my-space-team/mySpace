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
<<<<<<< HEAD
	<%@ include file="/resources/common/header.jsp"%>
=======
	<%@ include file="/resources/common/header.jsp" %>
>>>>>>> origin/youngoh

	<div class="container">
		<div class="col-lg-12">
			<div class="page-content">
				<div class="heading-section">
					<h4>주문이 정상적으로 신청되었습니다!</h4>
				</div>

				<!-- 결제확인내용 -->

				<div class="container">
					<div class="row">





						<table class="table">
							<tbody>
								<tr>
									<th scope="col">배송지</th>
									<th scope="col">${order2.address}</th>
								</tr>
								<tr>
									<th scope="row">주문자</th>
									<td>${order2.deliveryName}</td>
								</tr>
								<tr>
									<th scope="row">주문상품</th>
									<c:forEach items="${orderProductList}" var="orderProduct">
										<td>${orderProduct.cartProduct.product.name}</td>
									</c:forEach>
									
								</tr>
								<tr>
									<th scope="row">결제수단</th>
									<td>${order2.payment}</td>
								</tr>
								<tr>
									<th scope="row">총결제금액</th>
									<td>${order2.price}</td>
								</tr>
								<tr>
									<th scope="row">주문일자</th>
									<td>${order2.state}</td>
								</tr>
							</tbody>
						</table>







					</div>
				</div>
				
				<button type="button" class="btn btn-outline-primary">쇼핑 계속하기</button>
				<button type="button" class="btn btn-outline-primary">주문현황 보기</button>

				<!-- 주문결제내용 끝 -->

			</div>
		</div>
	</div>


	<footer>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p>
						Copyright © 2036 <a href="#">Cyborg Gaming</a> Company. All rights
						reserved. <br />Design: <a href="https://templatemo.com"
							target="_blank" title="free CSS templates">TemplateMo</a>
					</p>
				</div>
			</div>
		</div>
	</footer>
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