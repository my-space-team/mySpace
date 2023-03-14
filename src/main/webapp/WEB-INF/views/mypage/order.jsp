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
                <div class="heading-section" style="margin-bottom: 10px;">
                	<h4>${member.name}님, 주문내역</h4>
               	</div>
                    <div class="row">
                    <div class="col-lg-12">
                        <div class="clips">
                        <div class="row">
                        	<c:forEach items="${List}" var="item">
                        		<div class="col-lg-12">
                                	<div class="item">
                                    <ul>
	                                    <li><img src="" alt="" class="templatemo-item"><h4 style="font-size: 17px; margin-left: 15px;"></h4></li>
	                                    <li><h4>주문번호</h4><span></span></li>
	                                    <li><h4>주문명</h4><span></span></li>
										<li><h4>주문일자</h4><span></span></li>
										<li><input name="orderIdx" type="hidden" value="<c:out value="${}"/>" />
										<input name="productIdx" type="hidden" value="<c:out value="${}"/>" />
										<button style="border-radius: 7px; margin-right: 10px;" name="review-update">리뷰작성</button></li>
                                    </ul>
									</div>
								</div>
                       	</c:forEach>
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

  	<!-- footer 삽입 -->
	<%@ include file="/resources/common/footer.jsp" %>

    <!-- Scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <%@ include file="/resources/common/include_script.jsp" %>

    <!-- Only this page. -->
    <%@ include file="/resources/common/javascript/review_js.jsp" %>

</body>
</html>
