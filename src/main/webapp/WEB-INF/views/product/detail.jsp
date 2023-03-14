<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- JavaScript Bundle with Popper -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<!DOCTYPE html>
<html>
<head>
</head>
<br><br>
<body>
<%@ include file="/resources/common/header.jsp"%>

<div>


<!-- 상세정보 start -->
<div style="width: 100%; height: 100%;">
<input type="hidden" value="${product.idx }">

	<div style="margin: 110px auto 0; align-items: center; width: 1100px; height:230px; display: flex;">
		<div style="width: 40%; margin-top: 70px; ">
			<div style="width: 100%; height: 100%; align-items: center; align-content: center;">
			<span>${product.category.name } ></span><br><br>
				  <img alt="" src="${product.imageURL} "> 
			</div>
		</div>
		<div style="width: 60%; margin: 10px; display: flex; justify-content: center; ">
			<div style="width: 70%; height:50px; display:table-cell; vertical-align:middle; ">
				<span style="color: gray;"><b>${product.brand.name }</b></span>		<br>	
				<span style="font-size: 1.7em;">${product.name }</span><br>
				<span style="color: #35C5F0; font-size: 0.8em;"><b>${reviewTotal }개 리뷰</b></span><br>
				<span style="font-size: 1.7em;"><b><fmt:formatNumber value="${product.price }" pattern="#,###원"/></b></span><br><br>
				<span style="color: gray;">배송</span>&nbsp;&nbsp;&nbsp;
				<span>배송상품정보 참고</span><br><hr>
				<img alt="" src="/resources/asset/images/brandimg.png" style="width: 30px; height: 30px;">
				<span>${product.brand.name }</span><br><br>
				
				<span><b>주문금액 </b></span>
				<span style="float: right;"><b><fmt:formatNumber value="${product.price }" pattern="#,###원"/></b></span><br><br>
				
				
				<!-- <button id="cart" style="width: 150px; height: 30px;" type="button"
				 class="btn btn-info">장바구니</button> -->
				 
						<form method="post" action="../cart/add" style="width: 210px;">
							<input type="hidden" name="product.idx" value="${product.idx}" /> <input
								type="hidden" name="${_csrf.parameterName }"
								value="${_csrf.token }" />
							<button id="cart" style="width: 180px; height: 30px; color: white" type="submit" class="btn btn-info">장바구니</button>
						</form> 
						<div style="padding-bottom: 200px; top: 560px; position: absolute; right: 500px;">
						<button id="purchase" style="width: 180px; height: 30px; float: right;"
				 class="btn btn-light" onclick="gogo()">구매하기</button></div>
				
					
			</div>
		</div>
	</div>


		<nav>
  <div class="nav nav-tabs" id="nav-tab" role="tablist" style="margin: 0 auto 0; align-items: center; width: 1100px;  margin-top: 350px;">
    <button class="nav-link active" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true" style="width: 500px;">상세정보</button>
    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false" style="width: 500px;">리뷰  ${reviewTotal }</button>
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
  <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab" tabindex="0"></div>
  <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab" tabindex="0" style="margin-left:500px; margin-top: 70px;">
  	 <span style="margin-left: 400px; font-size: 1.3em;"><b>구매만족도</b></span>
  	<div id="allTotal" style="background: #FAFAAA; border: 1px solid #F3F3F3; width: 100px;height: 100px; border-radius: 100%; font-size: 1.5em; margin-left: 404px; margin-top: 10px;">
 
  	</div>
  	<br><br>
  					<c:forEach var="rlist" items="${reviewlist }">
  						<img src="../../resources/asset/images/reviewprofile.png" style="width: 26px; height: 26px;">
										<span style="display: inline-block; margin-bottom: 10px;">${rlist.review.member.name}</span><br>
										총점 <input value="${rlist.total}" type="hidden" name="total"><span style="display: inline-block; margin-bottom: 10px;" id="total" name="total" >
										${rlist.total}
										</span><br>
										내구성 ${rlist.durability}&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;  
										가격 ${rlist.price }<br>
										디자인 ${rlist.design }&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; 
										배송 ${rlist.delivery }<br><br>
										<div>
										<div style="background: lightgray; border: 1px solid #F3F3F3; width: 3px;height: 25px;"></div>
										<b style="position: relative; bottom: 25px; left: 10px;"> ${rlist.review.product.name }</b><br>
										</div>
										<%-- <c:if test="${rlist.review.image!=null }">
										<img src="${rlist.review.image }">
										</c:if> --%>
										  ${rlist.review.content}
										 <br> <hr style="width: 800px;"><br>
									</c:forEach>
  
  </div>
  <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab" tabindex="0">...</div>
  <div class="tab-pane fade" id="nav-disabled" role="tabpanel" aria-labelledby="nav-disabled-tab" tabindex="0">...</div>
</div>
		<!-- 리뷰 리스트 end -->


</div>
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <div id="script"></div>
  <script>
    $(document).ready(function(){
      $("head").load("/resources/common/common_head.html");
      $("#script").load("/resources/common/include_script.html");
      $("#header").load("/resources/common/header.html");
      
     
      
      $(".item").click(function(){
    	  let idx = $(this).find("button").val(); 
    	  location.href = '/order/pay?idx=' + idx;
      });
      
      var url_string = window.location.href;
	  var url = new URL(url_string);
	  var param1 = url.searchParams.get("idx");
		console.log(param1);
		
		function gogo() {
			location.href = '/order/pay?product_idx=' + param1;
		}
      
      /* $("#cart").click(function(){
      	location.href="../cart/list?idx=1"; //cart_idx = 1 말하는 건데 수정해야함
      })
      
	
     
   	 
    */
   

   let allAvg=($("[name=total]").map(function(){return this.value}).get());	//각각의 평점
  	// alert(allTotal);
    console.log(allAvg);
    let result =0; 
    for (let i of allAvg){                                 // 스플릿된 문자열을 for of 배열을 순환한다.
    	  result += parseFloat(i)/allAvg.length;   // 순환 되면서 정수로 반환한 값을 배열의 길이만큼 나누고 결과값에 더해진다.
    	
    } 
	console.log("result : "+result);
  	$("#allTotal").html("<span style='vertical-align:middle; display: table-cell; line-height: 100px; width: 100px; display: inline-block; text-align=center; margin-left:28px;'>"+result+"</span>");
   	
});
  </script>
</div>

</body>
</html>