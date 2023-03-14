<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- head 추가 -->
    <%@ include file="/resources/common/common_head.jsp" %>
    <link rel="stylesheet" href="/resources/css/member-home.css">
</head>

<body>
    <!-- header 추가 -->
    <%@ include file="/resources/common/header.jsp" %>

    <div class="container" style="box-sizing: border-box !important;">
        <div class="row">
        <div class="col-lg-12">
            <div class="page-content">

            <!-- ***** Banner Start ***** -->
            <div class="row">
                <div class="col-lg-12">
                <div class="main-profile">
                    <div class="row">
                    <div class="col-lg-4">
                        <img src="/resources/asset/images/profile_images.webp" alt="" style="border-radius: 23px;">
                    </div>
                    <div class="col-lg-4 align-self-center">
                        <div class="main-info header-text">
                        <div class="main-button" style="margin-bottom: 20px;">
                            <a href="/logout">로그아웃</a>
                        </div>
                        <h4>${member.name}님, 환영합니다.</h4>
                        <p>자기소개를 입력해주세요.</p>
                        <div class="main-border-button">
                            <a id="dialog" href="member/update">회원정보수정</a>
                            <dialog>
                                <h4>회원정보수정</h4>
                                <form name="form-member-update" onsubmit="return false;">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                    <input type="hidden" class="form-control" name="idx" value=<c:out value="${member.idx}"/>>
                                    <label for="loginId">로그인ID</label>
                                    <input type="text" class="form-control" readonly id="loginId" name="loginId" value=<c:out value="${member.loginId}"/>>
                                    <br>
                                    <label for="password">비밀번호</label>
                                    <input class="form-control" type="password" id="password" name="password" />>
                                    <br>
                                    <label for="name">이름</label>
                                    <input class="form-control" type="text" id="name" name="name" value=<c:out value="${member.name}"/>>
                                    <br>
                                    <label for="name">이메일</label>
                                    <input class="form-control" type="text" name="email"value=<c:out value="${member.email}"/>>
                                    <br>
                                    <label for="name">전화번호</label>
                                    <input class="form-control" type="text" name="phone" value=<c:out value="${member.phone}"/>>
                                    <br>
                                </form>
                                <div class="col-lg-12">
                                <div class="main-button">
                                    <a class="js-update">저장하기</a>
                                </div>
                                </div>
                            </dialog>
                        </div>
                        </div>
                    </div>
                    <div class="col-lg-4 align-self-center">
                        <ul style="text-align: center;">
	                        <!-- <li><a href="/mypage/order">나의주문내역</a></li> -->
	                        <li><a href="/mypage/review">내가 작성한 리뷰</a></li>
	                        <li><a href="#">질문 답변</a></li>
	                       	<li><a href= "/cart/list?idx=<c:out value="${member.idx}" />">장바구니</a></li>
                        </ul> 
                    </div>
                    </div>
                    <div class="row">
                    <div class="col-lg-12">
                        <div class="clips">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="heading-section">
                                    <h4><em>최근</em> 주문내역</h4>
                                </div>
                                <c:forEach var="order" items="${orderList }">
                                	<c:forEach var="product" items="${order.productList }">
		                                <div class="item">
		                                    <ul>
		                                    <li><img src="${product.imageURL}" alt="" class="templatemo-item">
		                                    	<a href="/product/detail?idx=<c:out value="${product.idx}" />">
		                                    		<h4>${product.name}
		                                    			<span style="margin-left: 10px; color: #1EDDFF;">${product.brand.name}</span>
		                                    		</h4>
		                                    	</a>
		                                    <span>
		                                    	<input name="order_idx" type="hidden" value="<c:out value="${order.idx }"/>" />
			                                    <input name="product_idx" type="hidden" value="<c:out value="${product.idx }"/>" />
			                                    <input name="member_idx" type="hidden" value="<c:out value="${member.idx }"/>" />
			                                    <button class="review-insert">리뷰 작성</button>
		                                    </span>
		                                    </li>
		                                    <li><h4>카테고리</h4><span>${product.category.name }</span></li>
		                                    <li><h4>상품가격</h4><span><fmt:formatNumber value="${product.price }" pattern="#,###원"/></span></li>
		                                    <li><h4>주문일자</h4><span><fmt:formatDate value="${order.state}" pattern="yyyy년 MM월 dd일"/></span></li>
		                                    </ul>
		                                    
		                                </div>
	                                </c:forEach>
                                </c:forEach>
                                </div>
                            </div>
                            <div class="col-lg-12">
                            <div class="main-button">
                                <a href="#">TOP</a>
                            </div>
                            </div>
                        </div>
                        </div>
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
	<%@ include file="/resources/common/footer.jsp" %>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <%@ include file="/resources/common/include_script.jsp" %>

    <!-- Only this page. -->
    <%@ include file="/resources/common/javascript/member_js.jsp" %>
    <script type="text/javascript">		    
		$("button[class='review-insert']").click (function() {
		    	let orderIdx = $(this).parent().find("input[name='order_idx']").val();
				let productIdx = $(this).parent().find("input[name='product_idx']").val();
				let memberIdx = $(this).parent().find("input[name='member_idx']").val();
				location.href = "/mypage/review/insert?memberIdx=" + memberIdx + 
								"&productIdx=" + productIdx + "&orderIdx=" + orderIdx;
		    	});		    
    </script>
</body>
</html>
