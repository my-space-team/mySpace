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
							<h5 style="color: #404040;">배송지</h5>
							<hr style="border: solid 2px black;">
							<div class="mb-3 row">

								<label for="staticEmail" class="col-sm-2 col-form-label">이름</label>
								<div class="col-sm-8">
									<input id="dil-name" name="dil-name" type="text" class="form-control" placeholder="이름"
										aria-label="이름" aria-describedby="basic-addon1">
								</div>
								<label for="staticEmail" class="col-sm-2 col-form-label">배송지명</label>
								<div class="col-sm-8">
									<input id="dil-place" name="dil-place" type="text" class="form-control" placeholder="배송지명"
										aria-label="Username" aria-describedby="basic-addon1">
								</div>
								<label for="staticEmail" class="col-sm-2 col-form-label">주소</label>
								<div class="col-sm-8">
									<input id="dil-address" name="dil-address" type="text" class="form-control" placeholder="주소"
										aria-label="Username" aria-describedby="basic-addon1">
								</div>
								<select id="dil-select" class="form-select" aria-label="Default select example"
									style="width: 90%">
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
									<c:set var="totalPrice" value="0" />
									<c:forEach items="${cartProductlist}" var="cartProduct">
										<c:set var="price"
											value="${cartProduct.product.price * cartProduct.amount}" />
										<c:set var="totalPrice" value="${totalPrice + price}" />
									</c:forEach>
									<span>${totalPrice}</span>
								</div>
								<label for="staticEmail" class="col-sm-5 col-form-label">배송비</label>
								<div class="col-sm-4">
									<c:set var="totalPrice" value="0" />
									<c:forEach items="${cartProductlist}" var="cartProduct">
										<c:set var="price"
											value="${cartProduct.product.price * cartProduct.amount}" />
										<c:set var="totalPrice" value="${totalPrice + price}" />
									</c:forEach>
									<c:set var="deliveryPrice"
										value="${totalPrice < 30000 ? 2500 : 0}" />
									<span id="delivery-price">${ deliveryPrice}</span>
								</div>
								<label for="staticEmail" class="col-sm-5 col-form-label">총결제금액</label>
								<div class="col-sm-4">
									<c:set var="totalPayment" value="${totalPrice + deliveryPrice}" />
									<span id="total-price">${totalPayment }</span>
								</div>
							</div>
							<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="flexCheckDefault"> 
										<label class="form-check-label" for="flexCheckDefault"> 개인정보 수집 이용 및 제 3자 제공 동의 (필수) </label>
									</div>
							<div class="d-grid gap-2">
								<button class="btn btn-outline-primary" type="button"
									onclick="submitForm()">결제하기</button>
							</div>
						</div>


						<!-- 주문자정보가져오기 -->
						<div style="padding: 60px 0px;">
							<div class="col-7">
								<h5 style="color: #404040;">주문자</h5>
								<hr style="border: solid 2px black;">
								<div class="mb-3 row">

									<label for="staticEmail" class="col-sm-2 col-form-label">주문자명
									</label>
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
										<c:forEach items="${cartProductlist}" var="cartProduct"
											varStatus="status">
											<tr>
												<th scope="row">${status.index + 1}</th>
												<td>${cartProduct.product.name}</td>
												<td>${cartProduct.product.brand.name}</td>
												<td>${cartProduct.product.price}</td>
												<td>${cartProduct.amount}</td>
											</tr>
										</c:forEach>
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
									<select id="payment" class="form-select" aria-label="Default select example"
										style="width: 90%" onchange="showForm(this.value)">
										<option selected>결제수단 선택하기</option>
										<option value="무통장입금">무통장입금</option>
										<option value="신용카드">신용카드</option>
									</select>
									
									
									
										
									<div class="col-sm-8 text-bg-warning p-3" id="무통장입금"  style="display:none;" >
									<label for="staticEmail" class="col-sm-2 col-form-label">은행</label>
										<div class="form-check form-check-inline">
										  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
										  <label class="form-check-label" for="inlineRadio1">우리</label>
										</div>
										<div class="form-check form-check-inline">
										  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
										  <label class="form-check-label" for="inlineRadio2">농협</label>
										</div>
										<div class="form-check form-check-inline">
										  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
										  <label class="form-check-label" for="inlineRadio2">국민</label>
										</div>
										<div class="form-check form-check-inline">
										  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
										  <label class="form-check-label" for="inlineRadio2">신한</label>
										</div>
										<div class="form-check form-check-inline">
										  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
										  <label class="form-check-label" for="inlineRadio2">기업</label>
										</div>
									<label for="staticEmail" class="col-sm-6 col-form-label">입금계좌번호</label>
										<span>아무숫자나</span>
										<!-- <div class="col-sm-8">
											<span>아무숫자나</span>
										</div> -->
									<label for="staticEmail" class="col-sm-6 col-form-label">입금기한</label>
										<span>sysdate</span>
										<!-- <div class="col-sm-8">
											<span>sysdate+2</span>
										</div> -->
									</div>
									
									
									
									
										
									<div class="col-sm-8 text-bg-warning p-3" id="신용카드"  style="display:none;">
									<label for="staticEmail" class="col-sm-2 col-form-label">카드사</label>
										<div class="form-check form-check-inline">
										  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
										  <label class="form-check-label" for="inlineRadio1">우리</label>
										</div>
										<div class="form-check form-check-inline">
										  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
										  <label class="form-check-label" for="inlineRadio2">농협</label>
										</div>
										<div class="form-check form-check-inline">
										  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
										  <label class="form-check-label" for="inlineRadio2">국민</label>
										</div>
										<div class="form-check form-check-inline">
										  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
										  <label class="form-check-label" for="inlineRadio2">신한</label>
										</div>
										<div class="form-check form-check-inline">
										  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
										  <label class="form-check-label" for="inlineRadio2">기업</label>
										</div>
										
										<select class="form-select" aria-label="Default select example" style="width: 90%">
										  <option selected>일시불</option>
										  <option value="1">2개월</option>
										  <option value="2">3개월</option>
										  <option value="3">4개월</option>
										  <option value="4">5개월</option>
										  <option value="5">6개월</option>
										  <option value="6">7개월</option>
										  <option value="7">8개월</option>
										  <option value="8">9개월</option>
									  
									</select>
										
									</div>
									
																		
									
									
									
									
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
		
		function showForm(selectedOption) {
	        var 무통장입금 = document.getElementById("무통장입금");
	        var 신용카드 = document.getElementById("신용카드");
	        
	        if (selectedOption == "무통장입금") {
	            무통장입금.style.display = "block";
	            신용카드.style.display = "none";
	        } else if (selectedOption == "신용카드") {
	            무통장입금.style.display = "none";
	            신용카드.style.display = "block";
	        } else {
	            무통장입금.style.display = "none";
	            신용카드.style.display = "none";
	        }
	    }
		
		function submitForm() {
			const form = document.createElement('form');
			form.method = 'GET';
			form.action = '/order/add';

			const urlParams = new URLSearchParams(window.location.search);
			const idx = urlParams.get('idx');
			
			const cartIdx = document.createElement('input');
			cartIdx.name = 'cartIdx';
			cartIdx.value = idx;
			form.appendChild(cartIdx);
			
			const selectElement = document.getElementById("payment");
			selectElement.name = 'payment'
			form.appendChild(selectElement);			
			
			const deliveryName = document.getElementById('dil-name');
			form.appendChild(deliveryName);
			
			const deliveryPlace = document.getElementById('dil-place');
			form.appendChild(deliveryPlace);
			
			const deliveryAddress = document.getElementById('dil-address');
			form.appendChild(deliveryAddress);
			
			const selectElement2 = document.getElementById("dil-select");
			selectElement2.name = 'dil-select'
			form.appendChild(selectElement2);			
			
			const input1 = document.createElement('input');
			input1.name = 'totalPrice';
			input1.value = document.getElementById('total-price').textContent;
			form.appendChild(input1);

			const input2 = document.createElement('input');
			input2.name = 'delivery-price';
			input2.value = document.getElementById('delivery-price').textContent;
			form.appendChild(input2);
			
			// 폼 서브밋하기
			document.body.appendChild(form);
			form.submit();
		}
		
	</script>
</body>
</html>