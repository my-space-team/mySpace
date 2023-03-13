<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- member.js / @author jaewoo -->
<script>
    var $member = {
        init: function(){
            $member.bindHandler();
        },
    
        bindHandler : function(){
            $(document).on("click", ".js-add", $member.add);
        },
    
        add : function(event){
            event.preventDefault();
            var ajaxParam = {
                url: "/REST/member/add",
               /*  beforeSend: function(xhr) {
                    xhr.setRequestHeader("${_csrf.headerName}", "${_csrf.token}");
                  } ,*/
                data: $("form[name='form-member-register']").serialize(),
                type: "POST",
                success: function(result){
                    if(result == null){
                        alert("회원등록에 실패하였습니다.");
                        return false;
                    } else{
                        location.href ="/";
                    }
                },
                error: function(error){
                	console.log(error);
                    console.log("오류 발생");
                }
            };
            $.ajax(ajaxParam);
        }
    }
    
    $member.init();
</script>