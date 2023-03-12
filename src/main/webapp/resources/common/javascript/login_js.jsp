<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script>
	var $login={
		init : function(){
			$login.bindHandler();
		},
		
		bindHandler : function(){
			$(document).on("click","js-login", $login.add);
		}
		
		add : function(event){
			event.preventDefault();
			var ajaxParam={
					url : "/REST/login/add",
					beforeSend : function(xhr){
						xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
					},
	                data: $("form[name='form-login']").serialize(),
	                type: "POST",
	                success: function(result){
	                    if(result == null){
	                        alert("로그인 실패.");
	                        return false;
	                    } else{
	                        location.href ="/";
	                    }
	                },
	                error: function(){
	                    console.log(data + "오류 발생");
	                }
			};
			$.ajax(ajaxParam);
		}
	}
	$login.init();
</script>