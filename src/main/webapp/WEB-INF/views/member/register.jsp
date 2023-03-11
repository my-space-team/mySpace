<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="ko">
<%@ include file="/resources/common/common_head.jsp" %>
<body>
	<%@ include file="/resources/common/header.jsp" %>
	<div class="row">
		<div class="col-lg-12">
			<div class="page-content">
				<div class="main-banner">
					<div class="row">
						<div class="header-text">
							<h6>환영합니다!</h6>
							<h4><em>MY SPACE </em> 회원가입</h4>
							<div class="register-div">
								<form name="form-member-register" onsubmit="return false;">
										<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
										<input class="register-input" type="text" placeholder="아이디를 입력하세요" name="loginId">
										<input class="register-input" type="text" placeholder="비밀번호를 입력하세요" name="password">
										<input class="register-input" type="text" placeholder="이름을 입력하세요" name="name">
										<input class="register-input" type="text" placeholder="이메일을 입력하세요" name="email">
										<input class="register-input" type="text" placeholder="전화번호를 입력하세요" name="phone">
										<input class="register-input" type="date" placeholder="생년월일을 입력하세요" name="birth">
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
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<%@ include file="/resources/common/include_script.jsp" %>
	<%@ include file="/resources/common/member-js.jsp" %>
</body>
</html>