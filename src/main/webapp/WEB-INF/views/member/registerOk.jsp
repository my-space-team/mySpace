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
<h2>가입완료</h2>
	

  <script>
    $(document).ready(function(){
      $("head").load("/resources/common/common_head.html");
      $("#script").load("/resources/common/include_script.html");
    });
  </script>
</body>
</html>