<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html lang="ko">
<head></head>
<style type="text/css">
*{
background-color : white !important;
}
</style>
<body>
<%@ include file="/WEB-INF/views/header.jsp" %>
<h2>회원가입</h2>
	
	<form role="form" action="/member/register" method="post">
		아이디:<input type="text" name='loginId'/><br/>
		비밀번호:<input type="password" name='password'/><br/>
		이름:<input type="text" name='name'/><br/>
		이메일:<input type="text" name = 'email'/><br/>
		전화번호:<input type="text" name = 'phone'/><br/>
 		생일:<input type="date" name='birth'/></br>
		<input type="submit" value="가입"/>		
	</form>

  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <div id="script"></div>
  <script>
    $(document).ready(function(){
      $("head").load("/resources/common/common_head.html");
      $("#script").load("/resources/common/include_script.html");
    });
  </script>
</body>
</html>