<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>


<html lang="ko">
<head></head>
<style type="text/css">
* {
	background-color: white !important;
}
</style>
<body>
	<%@ include file="/resources/common/header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="page-content">

					<!-- ***** Cart Start ***** -->
					<div class="heading-section">
						<h4>장바구니</h4>


					</div>


						
					</div>
					

					<div>
						<div class="row">
							<div style="display: flex;">
								<div class="col-8">
									<table class="table">
										<thead>
											<tr>
												<th scope="col">번호</th>
												<!-- <th scope="col">이미지</th> -->
												<th scope="col">상품</th>
												<th scope="col">판매가</th>
												<th scope="col">수량</th>
												<th scope="col">구매가</th>
												<th scope="col">삭제</th>
											</tr>
										</thead>

										<c:forEach items="${list }" var="cartProduct" varStatus="status">

											<tr>
												<%-- <td><c:out value="${cartProduct.idx }" /></td> --%>
												<td scope="row">${status.index + 1}</td>
												<%-- <td><c:out value="${이미지 }" /></td> --%>
												<td><c:out value="${cartProduct.product.name}" /></td>
												<td><c:out value="${cartProduct.product.price }" /></td>
												<td>
													<form method="post" action="/cart/update">
														<input type="hidden" name="idx" value="${cartProduct.idx}" />
														<input type="hidden" name="idx1" value="${cartProduct.idx}" />

														<input type="hidden" name="${_csrf.parameterName }"
															value="${_csrf.token }" />
														<div class="d-flex align-items-center">
															<input type="text" class="form-control form-control-sm"
																id="colFormLabelSm" value="${cartProduct.amount}"
																name="amount" style="width: 20px;">
															<button type="submit"
																class="btn btn-outline-warning ms-1">변경</button>
														</div>
													</form>
												</td>

												<td><c:out value="${cartProduct.product.price * cartProduct.amount}" /></td>

												<td>

													<form method="post" action="/cart/delete">
														<input type="hidden" name="idx" value="${cartProduct.idx}" />
														<input type="hidden" name="${_csrf.parameterName }"
															value="${_csrf.token }" />
														<button type="submit" class="btn btn-outline-danger">삭제</button>
													</form>
												</td>
										</c:forEach>
										
									</table>
								</div>
								<div class="col-4" style="float: right">
									<div style="">
										<div class="row mb-3">
											<label for="colFormLabelSm"
												class="col-sm-4 col-form-label col-form-label-sm">총
												상품금액</label>
											<div class="col-sm-6">
												<c:set var="totalPrice" value="0" />
												<c:forEach items="${list}" var="cartProduct">
													<c:set var="price"
														value="${cartProduct.product.price * cartProduct.amount}" />
													<c:set var="totalPrice" value="${totalPrice + price}" />
												</c:forEach>
												<input type="text" readonly
													class="form-control form-control-sm" id="colFormLabelSm"
													value=${totalPrice }>
											</div>
										</div>
										<div class="row mb-3">
											<label for="colFormLabelSm"
												class="col-sm-4 col-form-label col-form-label-sm">배송비</label>
											<div class="col-sm-6">


												<c:set var="totalPrice" value="0" />
												<c:forEach items="${list}" var="cartProduct">
													<c:set var="price"
														value="${cartProduct.product.price * cartProduct.amount}" />
													<c:set var="totalPrice" value="${totalPrice + price}" />
												</c:forEach>
												<c:set var="deliveryPrice"
													value="${totalPrice == 0 ? 0 : totalPrice < 30000 ? 2500 : 0}" />
												<input type="text" readonly
													class="form-control form-control-sm" id="colFormLabelSm"
													value=${deliveryPrice }>
											</div>
										</div>
										<div class="row mb-3">
											<label for="colFormLabelSm"
												class="col-sm-4 col-form-label col-form-label-sm">총
												결제금액</label>
											<div class="col-sm-6">
												<c:set var="totalPayment"
													value="${totalPrice + deliveryPrice}" />
												<input type="text" readonly
													class="form-control form-control-sm" id="colFormLabelSm"
													value=${totalPayment} >
											</div>
										</div>


										<button id="purchase-button"
												class="btn btn-primary" style="width: 350px;" onclick="gogo()">구매하기</button>


										

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
	<%@ include file="/resources/common/footer.jsp"%>
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<div id="script"></div>
	<script>
		$(document).ready(function() {
			$("head").load("/resources/common/common_head.html");
			$("#script").load("/resources/common/include_script.html");
		});
		
		function gogo() {
			location.href = '/order/pay';
		}

		/* $("#purchase-button").click(function(){
			  let idx = $(this).val(); 
			  location.href = '/order/pay?idx=' + idx;
			}); */
	</script>
</body>
</html>