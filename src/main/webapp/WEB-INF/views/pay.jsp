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
	<!-- ***** Header Area Start ***** -->
	<header class="header-area header-sticky">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="main-nav">
						<!-- ***** Logo Start ***** -->
						<a href="/" class="logo"> <img
							src="../../resources/asset/images/myspace_logo.png" alt="" />
						</a>
						<!-- ***** Logo End ***** -->
						<!-- ***** Search End ***** -->
						<div class="search-input">
							<form id="search" action="#">
								<input type="text" placeholder="쇼핑검색" id="searchText"
									name="searchKeyword" onkeypress="handle" /> <i
									class="fa fa-search"></i>
							</form>
						</div>
						<!-- ***** Search End ***** -->
						<!-- ***** Menu Start ***** -->
						<ul class="nav">
							<li><a href="index.html" class="active">Home</a></li>
							<li><a href="browse.html">Shopping</a></li>
							<li><a href="details.html">Details</a></li>
							<li><a href="streams.html">Streams</a></li>
							<li><a href="profile.html">Profile <img
									src="../../resources/asset/images/profile-header.jpg" alt="" /></a>
							</li>
						</ul>
						<a class="menu-trigger"> <span>Menu</span>
						</a>
						<!-- ***** Menu End ***** -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- ***** Header Area End ***** -->

	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="page-content">
					<div class="heading-section">
						<h4>주문/결제</h4>
					</div>
					<div class="container">
						<div class="row">
							<div class="col-8" >
								<p class="h5">배송지</p>
								<div class="p-3 mb-2 bg-light text-dark">
								<div class="mb-3 row">
									<label for="staticEmail" class="col-sm-2 col-form-label">이름</label>
									<div class="col-sm-10">
										<input type="text" readonly class="form-control-plaintext"
											id="staticEmail" value="이름">
									</div>
									<label for="staticEmail" class="col-sm-2 col-form-label">배송지명</label>
									<div class="col-sm-10">
										<input type="text" readonly class="form-control-plaintext"
											id="staticEmail" value="배송지명">
									</div>
									<label for="staticEmail" class="col-sm-2 col-form-label">주소</label>
									<div class="col-sm-10">
										<input type="text" readonly class="form-control-plaintext"
											id="staticEmail" value="주소">
									</div>
									<select class="form-select" aria-label="Default select example">
										<option selected>배송지 요청사항을 입력하세요</option>
										<option value="1">부재시 문앞에 놓아주세요</option>
										<option value="2">배송전에 미리 연락주세요</option>
										<option value="3">부재시 경비실에 맡겨주세요</option>
									</select>
								</div>
							 </div>
							</div>

							<div class="col-4">
								<div class="card border-light mb-3" style="max-width: 18rem;">
									<div class="card-header">결제금액
									</div>
									<div class="card-body">
										<p class="card-text">총 상품 금액</p>
										<p class="card-text">배송비</p>
										<p class="card-text">최종 결제 금액</p>
									</div>
								</div>

								<div class="form-check">
									<input class="form-check-input" type="checkbox" value=""
										id="flexCheckDefault"> <label class="form-check-label"
										for="flexCheckDefault"> 개인정보 수집 이용 및 제 3자 제공 동의 </label>
								</div>
							</div>

							<div class="col-8">
								<p class="h5">주문자</p>
								<div class="p-3 mb-2 bg-light text-dark">
								<div class="input-group input-group-sm mb-3">
									<span class="input-group-text" id="inputGroup-sizing-sm">이름</span>
									<input type="text" class="form-control"
										aria-label="Sizing example input"
										aria-describedby="inputGroup-sizing-sm">
								</div>
								<div class="input-group input-group-sm mb-3">
									<span class="input-group-text" id="inputGroup-sizing-sm">이메일</span>
									<input type="text" class="form-control"
										aria-label="Sizing example input"
										aria-describedby="inputGroup-sizing-sm">
								</div>
								<div class="input-group input-group-sm mb-3">
									<span class="input-group-text" id="inputGroup-sizing-sm">휴대전화</span>
									<input type="text" class="form-control"
										aria-label="Sizing example input"
										aria-describedby="inputGroup-sizing-sm">
								</div>
							</div>
							</div>

							<div class="col-8">
								<p class="h5">주문상품</p>
								<div class="p-3 mb-2 bg-light text-dark">
								<div class="card mb-3" style="max-width: 650px;">
									<div class="row g-0">
										<div class="col-md-4">
											<img src="..." class="img-fluid rounded-start" alt="...">
										</div>
										<div class="col-md-8">
											<div class="card-body">
												<p class="card-text">상품명</p>
												<p class="card-text">가격</p>
												<p class="card-text">개수</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							</div>

							<div class="col-8">
								<p class="h5">결제수단</p>
								<div class="p-3 mb-2 bg-light text-dark">
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