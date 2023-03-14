<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script>
	$("li button[name='review-update']").on("click", function(event){
		location.href = "/mypage/review/update?reviewIdx=" +$(this).parent().find("input[name='review_idx']").val();
		
  		/* $.ajax({
  			type: "GET",
       		url: "/mypage/review/update?reviewIdx=" + idx,              
    		success: function(result){
       		}
   		}); */
 	});
 
 	$("li button[name='review-delete']").on("click", function(event){
		let idx = $(this).parent().find("input[name='review_idx']").val();
		$.ajax({
  			type: "POST",
       		url: "/REST/review/delete",
      		data: {idx: idx},
       		success: function(result){ 
	       		alert("삭제되었습니다.");
       			location.reload();
       		},
       		error: function(error){   
				console.log(error);
			}
 	  	});
 	});

</script>