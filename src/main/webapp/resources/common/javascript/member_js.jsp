<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- member.js / @author jaewoo -->
<script>
    const dialog = document.querySelector("dialog");
    var $member = {
        init: function(){
            $member.bindHandler();
        },
    
        bindHandler : function(){
            $(document).on("click", ".js-add", $member.add);
            $(document).on("click", ".js-update", $member.update);
            $(document).on("click", "#dialog", $member.on);
            
        },
    
        add : function(event){
            event.preventDefault();
            var ajaxParam = {
                url: "/REST/member/add",
                data: $("form[name='form-member-register']").serialize(),
                type: "POST",
                success: function(result){
                    if(result == null){
                        alert("회원등록에 실패하였습니다");
                        return false;
                    } else{
                        location.href ="/";
                    }
                },
                error: function(){
                    alert("에러가 발생하였습니다");
                }
            };
            $.ajax(ajaxParam);
        },

        update : function(event){
            event.preventDefault();
            var ajaxParam = {
                url: "/REST/member/update",
                data: $("form[name='form-member-update']").serialize(),
                type: "POST",
                success: function(result){
                    if(result == null){
                        alert("회원수정에 실패하였습니다");
                        return false;
                    } else{
                        location.href = "/mypage/home";
                    }
                },
                error: function(){
                    alert("에러가 발생하였습니다");
                }
            };
            $.ajax(ajaxParam);
        },

        on : function(event){
                event.preventDefault();
                dialog.showModal();
        }
        
    }
    
    $member.init();

</script>