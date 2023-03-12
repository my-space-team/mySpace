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
		<div class="col-lg-12">
			<div class="page-content">
				<div class="heading-section">
					<h4>주문/결제</h4>
				</div>

				<!-- 주문결제내용 -->

				<div class="container">
					<div class="row">

						<!-- 배송지가져오기 -->
						<div class="col-7">
							<h5 style="color: #404040;" >배송지</h5>
							<hr style="border: solid 2px black;">
							<div class="mb-3 row">

								<label for="staticEmail" class="col-sm-2 col-form-label">이름</label>
								<div class="col-sm-8">
									<input type="text" class="form-control" placeholder="이름" aria-label="이름" aria-describedby="basic-addon1">
								</div>
								<label for="staticEmail" class="col-sm-2 col-form-label">배송지명</label>
								<div class="col-sm-8">
								<input type="text" class="form-control" placeholder="배송지명" aria-label="Username" aria-describedby="basic-addon1">
								</div>
								<label for="staticEmail" class="col-sm-2 col-form-label">주소</label>
								<div class="col-sm-8">
								<input type="text" class="form-control" placeholder="주소" aria-label="Username" aria-describedby="basic-addon1">
								</div>
								<select class="form-select" aria-label="Default select example" style="width:90%">
									<option selected>배송지 요청사항을 입력하세요</option>
									<option value="1">부재시 문앞에 놓아주세요</option>
									<option value="2">배송전에 미리 연락주세요</option>
									<option value="3">부재시 경비실에 맡겨주세요</option>
								</select>
							</div>
						</div>

						<!-- 결제금액 -->
						<div class="col-4">
							<h5 style="color: #404040;">결제금액</h5>
							<hr style="border: solid 2px black;">
							<div class="mb-3 row">
								<label for="staticEmail" class="col-sm-5 col-form-label">총상품금액</label>
								<div class="col-sm-4">
									<input type="text" readonly class="form-control-plaintext"
										id="staticEmail" value="2000">
								</div>
								<label for="staticEmail" class="col-sm-5 col-form-label">배송비</label>
								<div class="col-sm-4">
									<input type="text" readonly class="form-control-plaintext"
										id="staticEmail" value="2000">
								</div>
								<label for="staticEmail" class="col-sm-5 col-form-label">총결제금액</label>
								<div class="col-sm-4">
									<input type="text" readonly class="form-control-plaintext"
										id="staticEmail" value="2000">
								</div>
							</div>
							<div class="d-grid gap-2">
								<button class="btn btn-outline-primary" type="button">결제하기</button>
							</div>
						</div>


						<!-- 주문자정보가져오기 -->
						<div style="padding: 60px 0px;">
							<div class="col-7">
								<h5 style="color: #404040;">주문자</h5>
								<hr style="border: solid 2px black;">
								<div class="mb-3 row">

									<label for="staticEmail" class="col-sm-2 col-form-label">주문자명 </label>
									<div class="col-sm-8">
									<span>${member.name }</span>
									</div>
									<label for="staticEmail" class="col-sm-2 col-form-label">이메일</label>
									<div class="col-sm-8">
										<span>${member.email }</span>
									</div>
									<label for="staticEmail" class="col-sm-2 col-form-label">전화번호</label>
									<div class="col-sm-8">
										<span>${member.phone }</span>
									</div>
								</div>
							</div>
						</div>

						<!-- 주문상품가져오기 -->
						<div class="col-7">
							<h5 style="color: #404040;">주문상품</h5>
							<hr style="border: solid 2px black;">
							<div class="mb-3 row">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th scope="col">번호</th>
											<th scope="col">상품명</th>
											<th scope="col">브랜드명</th>
											<th scope="col">상품가격</th>
											<th scope="col">수량</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">1</th>
											<%-- <td>${cartProduct.product.name}</td> --%>
											<td>Otto</td>
											<td>@mdo</td>
											<td>@mdo</td>
										</tr>
										<tr>
											<th scope="row">2</th>
											<td>Jacob</td>
											<td>Thornton</td>
											<td>@fat</td>
											<td>@mdo</td>
										</tr>
										<tr>
											<th scope="row">3</th>
											<td>Jacob</td>
											<td>Thornton</td>
											<td>@fat</td>
											<td>@mdo</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

						<!-- 결제수단 -->
						<div style="padding: 60px 0px;">
							<div class="col-7">
								<h5 style="color: #404040;">결제하기</h5>
								<hr style="border: solid 2px black;">
								<div class="mb-3 row">
									<select class="form-select" aria-label="Default select example" style="width:90%">
										<option selected>결제수단 선택하기</option>
										<option value="1">무통장입금</option>
										<option value="2">신용카드</option>
									</select>
								</div>
							</div>
						</div>

					</div>
				</div>

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