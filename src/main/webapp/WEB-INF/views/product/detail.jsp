<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
 <script src="https://code.jquery.com/jquery-3.5.0.js"></script>

<!DOCTYPE html>
<html>
<head>
</head>

<body>
<div>


<!-- 상세정보 start -->
<div style="width: 100%; height: 100%;">
<input type="hidden" value="${product.idx }">

	<div style="margin: 110px auto 0; align-items: center; width: 1100px; height:250px; display: flex;">
		<div style="width: 40%; margin: 20px; ">
			<div style="width: 100%; height: 100%; align-items: center; align-content: center;">
				<img src="../../resources/asset/images/profile.jpg">
			</div>
		</div>
		<div style="width: 60%; margin: 10px; display: flex; justify-content: center; ">
			<div style="width: 60%; height:100px; display:table-cell; vertical-align:middle; ">
				<span>${product.category.name } ></span><br>
				<span style="color: gray;">${product.brand.name }</span>		<br>	
				<span style="font-size: 2.0em;">${product.name }</span><br>
				<span>${reviewTotal }개 리뷰</span><br>
				<span style="font-size: 1.7em;"><fmt:formatNumber value="${product.price }" pattern="#,###원"/></span><br><br>
				
				<!-- <button id="cart" style="width: 150px; height: 30px;" type="button"
				 class="btn btn-info">장바구니</button> -->
				 
						<form method="post" action="../cart/add">
							<input type="hidden" name="product.idx" value="${product.idx}" /> 
							<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" />
							<button id="cart" style="width: 150px; height: 30px;" type="submit" class="btn btn-info">장바구니</button>
						</form> 
						
							<button id="purchase" style="width: 150px; height: 30px;" class="btn btn-light" onclick="gogo()">구매하기</button><hr>		
						
				 <div style="background-color: lightgray; height: 80px; border-radius: 15%; width: 280px;">
				 ${product.name }
				 </div>
					
			</div>
		</div>
	</div>

<!-- 상세정보 end -->

<!-- 리뷰 리스트 start -->
		<%-- <div style="margin: 0 auto 0; align-items: center; width: 1100px; height:700px; margin-top: 100px;">
			<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist" style="margin:auto 0; align-items: center; width: 1100px; display: flex; justify-content: space-around; ">
			  <li class="nav-item" role="presentation" style="width: 50%" >
			    <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true" style="width: 50%">상세정보</button>
			  </li>
			  <li class="nav-item" role="presentation" style="width: 50%">
			    <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false" style="width: 50%">리뷰</button>
			  </li>
			</ul>
			<div class="tab-content" id="pills-tabContent">
			  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" tabindex="0">...</div>
			  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab" tabindex="0">
			
									<c:forEach var="rlist" items="${reviewlist }">
										${rlist.review.member.name}<br>
										
										내구성 ${rlist.durability} 
										가격 ${rlist.price }
										디자인 ${rlist.design }
										배송 ${rlist.delivery }
										상품 ${rlist.review.product.name }
										<c:if test="${rlist.review.image!=null }">
										<img src="${rlist.review.image }">
										</c:if>
										내용  ${rlist.review.content}
									</c:forEach>
			
			  </div>
			  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab" tabindex="0">...</div>
			  <div class="tab-pane fade" id="pills-disabled" role="tabpanel" aria-labelledby="pills-disabled-tab" tabindex="0">...</div>
			</div>
		</div> --%>
		<nav>
  <div class="nav nav-tabs" id="nav-tab" role="tablist" style="margin: 0 auto 0; align-items: center; width: 1100px;  margin-top: 200px;">
    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true" style="width: 500px;">상세정보</button>
    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false" style="width: 500px;">리뷰  ${reviewTotal }</button>
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0">...</div>
  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" tabindex="0" style="margin-left:500px; margin-top: 70px;">
  					<c:forEach var="rlist" items="${reviewlist }">
  						<img src="../../resources/asset/images/reviewprofile.png" style="width: 23px; height: 23px;">
										${rlist.review.member.name}<br>
										
										내구성 ${rlist.durability}&nbsp;&nbsp; 
										가격 ${rlist.price }<br>
										디자인 ${rlist.design }&nbsp;&nbsp;
										배송 ${rlist.delivery }<br>
										 ${rlist.review.product.name }<br>
										<%-- <c:if test="${rlist.review.image!=null }">
										<img src="${rlist.review.image }">
										</c:if> --%>
										  ${rlist.review.content}
										 <br> <hr style="width: 800px;">
									</c:forEach>
  
  </div>
  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab" tabindex="0">...</div>
  <div class="tab-pane fade" id="nav-disabled" role="tabpanel" aria-labelledby="nav-disabled-tab" tabindex="0">...</div>
</div>
		<!-- 리뷰 리스트 end -->


</div>
  <script src="../../resources/vendor/jquery/jquery.min.js"></script>
  <div id="script"></div>
  <script>
    $(document).ready(function(){
      $("head").load("../../resources/common/common_head.html");
      $("#script").load("../../resources/common/include_script.html");
      $("#header").load("../../resources/common/header.html");
      
      
      
      var url_string = window.location.href;
	  var url = new URL(url_string);
	  var param1 = url.searchParams.get("idx");
		console.log(param1);
		
		function gogo() {
			location.href = '/order/pay?idx=' + param1;
		}
      
    });
    
    
    
  </script>
</div>
</body>
</html>