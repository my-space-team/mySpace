<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<html lang="ko">
<head>
</head>

<body>
<div id="header"></div>

  <div class="review-container">
    <h2>리뷰 작성</h2>
    
	<form name="reviewFormData">
	<input type="hidden" name="member_idx" value="${memberIdx }"/>
	<input type="hidden" name="order_idx" value="${orderIdx }">
	<input type="hidden" name="product_idx" value="${productIdx }">
      <div class="review-box">
        <div>
            <div class="review-data">
              <div class="product-img"><img src="<%-- ${product.imageURL } --%>" alt=""></div>
              	<div class="product-name">
	               	<span>${product.name}</span>
	               	<div class="review-score">
	                  <div>
	                    <label for="durability">내구성</label>
	                      <select name="durability" id="durability">
	                        <option value="0">0</option>
	                        <option value="1">1</option>
	                        <option value="2">2</option>
	                        <option value="3">3</option>
	                        <option value="4">4</option>
	                        <option value="5">5</option>
	                      </select>
	                    <label for="price">가격</label>
	                      <select name="price" id="price">
	                      	<option value="0">0</option>
	                        <option value="1">1</option>
	                        <option value="2">2</option>
	                        <option value="3">3</option>
	                        <option value="4">4</option>
	                        <option value="5">5</option>
	                      </select>
	                  </div>
	                  <div>
	                    <label for="design">디자인</label>
	                      <select name="design" id="design">
	                        <option value="0">0</option>
	                        <option value="1">1</option>
	                        <option value="2">2</option>
	                        <option value="3">3</option>
	                        <option value="4">4</option>
	                        <option value="5">5</option>
	                      </select>
	                    <label for="delivery">배송</label>
	                      <select name="delivery" id="delivery">
	                        <option value="0">0</option>
	                        <option value="1">1</option>
	                        <option value="2">2</option>
	                        <option value="3">3</option>
	                        <option value="4">4</option>
	                        <option value="5">5</option>
	                      </select>
	                  </div>
                </div>
              </div>
            </div>
            <div class="review-content">
              <textarea name="content" id="content" cols="100" rows="10"></textarea>
            </div>
       	</div>
            <div class="review-button">
              <input type="submit" id="submit" value="작성">
              <input type="button" value="취소">
            </div>
       </div>
       </form>
      </div>
      

  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <div id="script"></div>
  	<script>
	    $(document).ready(function(){
	      $("head").load("/resources/mypage/review_insert.html");
	      $("#script").load("/resources/common/include_script.html");
	      $("#header").load("/resources/common/header.html");
	      
	      let member = Number('<sec:authentication property="principal.member.idx"/>');
	      console.log(member);
	      if(!(Number($("input[name=member_idx]" ).val()) == member)){
	    	 alert("잘못된 경로입니다.");
	    	 location.href = "/"; 
	      }
	      
	  	$('#submit').click(function(){  
				$.ajax({
					type:'post', 
					url:'/REST/review/insert', 
					data:$("form[name='reviewFormData']").serialize(),   
					dataType:'html',
					success : function(data){ 
						alert("리뷰 등록이 완료되었습니다.");
						location.replace("/mypage/home");
					}
				});
	  		});

	    });
	  </script>
</body>
</html>