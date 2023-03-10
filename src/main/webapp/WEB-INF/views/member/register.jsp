<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html>
<html lang="ko">
	<head>
		<!-- head 추가 -->
		<%@ include file="/resources/common/common_head.jsp" %>
		<!-- <link rel="stylesheet" href="/resources/css/member-home.css"> -->
		<style>
			* {
				--bs-gutter-x: 0rem;
			}
	</style>
	</head>
<body>
	<!-- header 추가 -->
	<%@ include file="/resources/common/header.jsp" %>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="page-content">
					<div class="login-banner">
						<div class="row">
							<div class="header-text" style="text-align: center;">
								<h6>환영합니다!</h6>
								<h4><em>MY SPACE </em> 회원가입</h4>
								<div class="register-div">
									<form name="form-member-register" onsubmit="return false;">
											<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
											<input class="form-control" style="text-align: center; margin: auto; width: 50%;" type="text" 
											placeholder="아이디를입력하세요" name="loginId" onfocus="this.placeholder=''" onblur="this.placeholder='아이디를 입력하세요'"/>
											<br>
											<input class="form-control"style="text-align: center; margin: auto; width: 50%;" type="password" 
											placeholder="비밀번호를 입력하세요" name="password" onfocus="this.placeholder=''" onblur="this.placeholder='비밀번호를 입력하세요'" />
											<br>
											<input class="form-control" style="text-align: center; margin: auto; width: 50%;" type="text" 
											placeholder="이름을 입력하세요" name="name" onfocus="this.placeholder=''" onblur="this.placeholder='이름을 입력하세요'" />
											<br>
											<input class="form-control" style="text-align: center; margin: auto; width: 50%;" type="text" 
											placeholder="이메일을 입력하세요" name="email" onfocus="this.placeholder=''" onblur="this.placeholder='이메일을 입력하세요'" />
											<br>
											<input class="form-control" style="text-align: center; margin: auto; width: 50%;" type="text" 
											placeholder="전화번호를 입력하세요" name="phone" onfocus="this.placeholder=''" onblur="this.placeholder='전화번호를 입력하세요'" />
											<br>
											<input class="form-control" style="text-align: center; margin: auto; width: 50%;" type="date" name="birth" />
											<br>
									</form>
								</div>
								<div class="main-button">
									<a class="js-add">회원가입</a>
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

	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<%@ include file="/resources/common/include_script.jsp" %>

	<!-- Only this page. -->
	<%@ include file="/resources/common/javascript/member_js.jsp" %>
</body>
</html>