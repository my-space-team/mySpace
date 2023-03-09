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
	<%@ include file="/WEB-INF/views/header.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="page-content">

					<!-- ***** Cart Start ***** -->
					<div class="heading-section">
						<h4>장바구니</h4>
					</div>
					<div>
						<div style="display: flex;">
							<div class="col-8">
								<table class="table">
									<thead>
										<tr>
											<th scope="col"></th>
											<th scope="col">번호</th>
											<th scope="col">이미지</th>
											<th scope="col">상품</th>
											<th scope="col">수량</th>
											<th scope="col">가격</th>
											<th scope="col">삭제</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><input class="form-check-input" type="checkbox"
												value="" id="flexCheckDefault"> <label
												class="form-check-label" for="flexCheckDefault"> </label></td>
											<th scope="row">1</th>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td><button type="button" class="btn btn-outline-danger">삭제</button></td>
										</tr>
										<tr>
											<td><input class="form-check-input" type="checkbox"
												value="" id="flexCheckDefault"> <label
												class="form-check-label" for="flexCheckDefault"> </label></td>
											<th scope="row">2</th>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td><button type="button" class="btn btn-outline-danger">삭제</button></td>
										</tr>
										<tr>
											<td><input class="form-check-input" type="checkbox"
												value="" id="flexCheckDefault"> <label
												class="form-check-label" for="flexCheckDefault"> </label></td>
											<th scope="row">3</th>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td><button type="button" class="btn btn-outline-danger">삭제</button></td>
										</tr>
										<tr>
											<td><input class="form-check-input" type="checkbox"
												value="" id="flexCheckDefault"> <label
												class="form-check-label" for="flexCheckDefault"> </label></td>
											<th scope="row">4</th>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td><button type="button" class="btn btn-outline-danger">삭제</button></td>
										</tr>
										<tr>
											<td><input class="form-check-input" type="checkbox"
												value="" id="flexCheckDefault"> <label
												class="form-check-label" for="flexCheckDefault"> </label></td>
											<th scope="row">5</th>
											<td></td>
											<td></td>
											<td></td>
											<td></td>
											<td><button type="button" class="btn btn-outline-danger">삭제</button></td>
										</tr>

									</tbody>

								</table>
								<div class="order_btn_area">
									<button type="button" class="btn btn-outline-primary"
										name="partOrderBtn">선택주문</button>
									<button type="button" class="btn btn-outline-primary"
										name="allOrderBtn">전체주문</button>

								</div>


							</div>



							<div class="col-4" style="float: right;">
								<div style="" >
									<div class="row mb-3">
										<label for="colFormLabelSm"
											class="col-sm-4 col-form-label col-form-label-sm">총 상품금액</label>
										<div class="col-sm-5">
											<input type="email" class="form-control form-control-sm"
												id="colFormLabelSm" >
										</div>
									</div>
									<div class="row mb-3">
										<label for="colFormLabelSm"
											class="col-sm-4 col-form-label col-form-label-sm">배송비</label>
										<div class="col-sm-5">
											<input type="email" class="form-control form-control-sm"
												id="colFormLabelSm" >
										</div>
									</div>
									<div class="row mb-3">
										<label for="colFormLabelSm"
											class="col-sm-4 col-form-label col-form-label-sm">총 결제금액</label>
										<div class="col-sm-5">
											<input type="email" class="form-control form-control-sm"
												id="colFormLabelSm" >
										</div>
									</div>
									
									<div class="d-grid gap-2 col-9 ">
									<button type="button" class="btn btn-outline-primary"
										name="allOrderBtn">구매하기</button>
									</div>
								</div>



							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



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