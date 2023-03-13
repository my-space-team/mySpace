<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<html lang="ko">
<head></head>

<body>
	<%@ include file="/resources/common/header.jsp" %>
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="page-content" style="background-color: white;">
          <!-- ***** Banner Start ***** -->
<!--           <div class="main-banner">
            <div class="row">
              <div class="col-lg-7">
                <div class="header-text">
                  <h6>Welcome To Cyborg</h6>
                  <h4><em>Browse</em> Our Popular Games Here</h4>
                  <div class="main-button">
                    <a href="browse.html">Browse Now</a>
                  </div>
                </div>
              </div>
            </div>
          </div> -->
          <!-- ***** Banner End ***** -->
          				
			<ul class="category-list" style="display: flex; justify-content: space-between; font-size: 20px; border-top: 1px solid #CCC; border-bottom: 1px solid #CCC; padding: 10px 0 15px 0;">
			<c:forEach var="category" items="${categoryList}">
				<li><a href="/?category=${category.idx}&pageNum=${pageNum}&amount=${amount}">${category.name}</a></li>
			</c:forEach>
			</ul>
			
          <!-- ***** Most Popular Start ***** -->
          <div class="most-popular">
            <div class="row">
              <div class="col-lg-12">
                <div class="heading-section">
                  <!-- <h4>인기상품</h4> -->
                </div>
                <div class="heading-section">
                  <!-- <h4><em>Most Popular</em> Right Now</h4> -->
                </div>
                <div class="row" style="padding: 0; ">
                    <c:forEach var="product" items="${productList}">
                    	<div class="col-lg-3 col-sm-6" style="width: 22%;">
	                        <div class="item">
		                    	<img src="${product.imageURL}" alt="" />
		                     	<h4><span style="font-size: 70%;">${product.name}</span>
		                     	<input type="hidden" value="${product.idx}" readonly/>
		                     	</h4>
			                     	<!-- <ul>
			                        <li><i class="fa fa-star"></i> 4.8</li>
			                        <li><i class="fa fa-download"></i> 2.3M</li>
			                      </ul> -->
		                    </div>
                        </div>
					</c:forEach>

<!--                   <div class="col-lg-12">
                    <div class="main-button">
                      <a href="browse.html">Discover Popular</a>
                    </div>
                  </div> -->
                </div>
              </div>
            </div>
          </div>
         
          <!-- ***** Most Popular End ***** -->
          <form id='actionForm' action="/" method='get'>
          	<input type="hidden" name="searchKeyword" value="${searchKeyword}">
          	<input type="hidden" name="category" value="${category}">
          	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
          	<input type="hidden" name="amount" value="${pageMaker.cri.amount }">
          </form>
          <div style="display: flex; justify-content: space-around; font-size: 20px;">
          <ul>
          	<c:if test="${pageMaker.prev }">
          		<li class="paginate_button previous">
          			<a href="${pageMaker.startPage -1 }">Previous</a> 
          		</li>
          	</c:if>
          </ul>
          	<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
          		<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active":""} ">
          			<a href="${num }">${num }</a>
          		</li>
          	</c:forEach>
          	
          	<c:if test="${pageMaker.next }">
          		<li class="paginate_button next">
          			<a href="${pageMaker.endPage +1 }">Next</a> 
          		</li>
          	</c:if>
          </div>


          <!-- ***** Gaming Library Start ***** -->
<!--           <div class="gaming-library">
            <div class="col-lg-12">
              <div class="heading-section">
                <h4><em>Your Gaming</em> Library</h4>
              </div>
              <div class="item">
                <ul>
                  <li>
                    <img
                      src="../../resources/asset/images/game-01.jpg"
                      alt=""
                      class="templatemo-item"
                    />
                  </li>
                  <li>
                    <h4>Dota 2</h4>
                    <span>Sandbox</span>
                  </li>
                  <li>
                    <h4>Date Added</h4>
                    <span>24/08/2036</span>
                  </li>
                  <li>
                    <h4>Hours Played</h4>
                    <span>634 H 22 Mins</span>
                  </li>
                  <li>
                    <h4>Currently</h4>
                    <span>Downloaded</span>
                  </li>
                  <li>
                    <div class="main-border-button border-no-active">
                      <a href="#">Donwloaded</a>
                    </div>
                  </li>
                </ul>
              </div>
              <div class="item">
                <ul>
                  <li>
                    <img
                      src="../../resources/asset/images/game-02.jpg"
                      alt=""
                      class="templatemo-item"
                    />
                  </li>
                  <li>
                    <h4>Fortnite</h4>
                    <span>Sandbox</span>
                  </li>
                  <li>
                    <h4>Date Added</h4>
                    <span>22/06/2036</span>
                  </li>
                  <li>
                    <h4>Hours Played</h4>
                    <span>740 H 52 Mins</span>
                  </li>
                  <li>
                    <h4>Currently</h4>
                    <span>Downloaded</span>
                  </li>
                  <li>
                    <div class="main-border-button">
                      <a href="#">Donwload</a>
                    </div>
                  </li>
                </ul>
              </div>
              <div class="item last-item">
                <ul>
                  <li>
                    <img
                      src="../../resources/asset/images/game-03.jpg"
                      alt=""
                      class="templatemo-item"
                    />
                  </li>
                  <li>
                    <h4>CS-GO</h4>
                    <span>Sandbox</span>
                  </li>
                  <li>
                    <h4>Date Added</h4>
                    <span>21/04/2036</span>
                  </li>
                  <li>
                    <h4>Hours Played</h4>
                    <span>892 H 14 Mins</span>
                  </li>
                  <li>
                    <h4>Currently</h4>
                    <span>Downloaded</span>
                  </li>
                  <li>
                    <div class="main-border-button border-no-active">
                      <a href="#">Donwloaded</a>
                    </div>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-lg-12">
              <div class="main-button">
                <a href="profile.html">View Your Library</a>
              </div>
            </div>
          </div>
          ***** Gaming Library End *****-->
        </div>
      </div>
    </div>
  </div> 

  <!-- <footer>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <p>
            Copyright © 2036 <a href="#">Cyborg Gaming</a> Company. All rights
            reserved.

            <br />Design:
            <a
              href="https://templatemo.com"
              target="_blank"
              title="free CSS templates"
              >TemplateMo</a
            >
          </p>
        </div>
      </div>
    </div>
  </footer> -->
  <%@ include file="/resources/common/footer.jsp" %>
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <div id="script"></div>
  <script>
    $(document).ready(function(){
      $("head").load("/resources/common/common_head.html");
      $("#script").load("/resources/common/include_script.html");
      
      $(".item").click(function(){
    	  let idx = $(this).find("input").val();
    	  location.href ='/product/detail?idx=' + idx;
      })
      
      
      var actionForm = $("#actionForm");      
      
      $(".paginate_button a").on("click", function(e) {
    	  e.preventDefault();
    	  console.log('click');
    	  actionForm.find('input[name="pageNum"]').val($(this).attr("href"));
    	  actionForm.submit();

      });
    });
    
  </script>
</body>
</html>