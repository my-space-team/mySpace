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
<div id="header"></div>
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="page-content">
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
			<ul class="category-list" style="display: flex; justify-content: space-between; font-size: 20px;">
			<c:forEach var="category" items="${categoryList}">
				<li><a href="/category=${category.idx}">${category.name}</a></li>
			</c:forEach>
			</ul>
          <!-- ***** Most Popular Start ***** -->
          <div class="most-popular">
            <div class="row">
              <div class="col-lg-12">
                <div class="heading-section">
                  <h4>인기상품</h4>
                </div>
                <div class="heading-section">
                  <!-- <h4><em>Most Popular</em> Right Now</h4> -->
                </div>
                <div class="row">
                  <div class="col-lg-3 col-sm-6">
                    <div class="item">
                      <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/164516297081764709.jpg?gif=1&w=1280&h=1280&c=c&webp=1" alt="" />
                      <h4><span style="font-size: 70%;">베이직톤</span><span>클린코튼 고밀도 순면 60수 광폭 호텔식 차렵이불 옥수수솜 6색상</span></h4>
                      <!-- <ul>
                        <li><i class="fa fa-star"></i> 4.8</li>
                        <li><i class="fa fa-download"></i> 2.3M</li>
                      </ul> -->
                    </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                    <div class="item">
                      <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/165060454096774324.jpg?gif=1&w=1280&h=1280&c=c&webp=1" alt="" />
                      <h4><span style="font-size: 70%;">데코뷰</span><span>비침없는 밀크 쉬폰 커튼 2type</span></h4>
                      <!-- <ul>
                        <li><i class="fa fa-star"></i> 4.8</li>
                        <li><i class="fa fa-download"></i> 2.3M</li>
                      </ul> -->
                    </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                    <div class="item">
                      <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/166453339144738168.jpg?gif=1&w=1280&h=1280&c=c&webp=1" alt="" />
                      <h4><span style="font-size: 70%;">LG전자</span><span>LG 프라이빗 스마트스크린 TV 스탠바이미</span></h4>
                      <!-- <ul>
                        <li><i class="fa fa-star"></i> 4.8</li>
                        <li><i class="fa fa-download"></i> 2.3M</li>
                      </ul> -->
                    </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                    <div class="item">
                      <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/167168822852557476.jpg?gif=1&w=1280&h=1280&c=c&webp=1" alt="" />
                      <h4><span style="font-size: 70%;">헬로우슬립</span><span>부드러운 카스테라 항균 옥수수솜 간절기/사계절 차렵이불세트</span></h4>
                      <!-- <ul>
                        <li><i class="fa fa-star"></i> 4.8</li>
                        <li><i class="fa fa-download"></i> 2.3M</li>
                      </ul> -->
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="item">
                      <div class="row">
                        <div class="col-lg-6 col-sm-6">
                          <div class="item inner-item">
                            <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/162303132447303472.jpeg?gif=1&w=1280&h=1280&c=c&webp=1" alt="" />
                            <h4><span style="font-size: 70%;">아엠홈</span><span>비침없는 도톰 레이스/쉬폰커튼</span></h4>
                            <!-- <ul>
                              <li><i class="fa fa-star"></i> 4.8</li>
                              <li><i class="fa fa-download"></i> 2.3M</li>
                            </ul> -->
                          </div>
                        </div>
                        <div class="col-lg-6 col-sm-6">
                          <div class="item">
                            <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/164931096674427973.jpg?gif=1&w=1280&h=1280&c=c&webp=1" alt="" />
                            <h4><span style="font-size: 70%;">먼데이하우스</span><span>허리 디스크 환자가 만든 코어 릴랙스 매트릭스</span></h4>
                            <!-- <ul>
                              <li><i class="fa fa-star"></i> 4.8</li>
                              <li><i class="fa fa-download"></i> 2.3M</li>
                            </ul> -->
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                    <div class="item">
                      <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/166363737668001328.jpg?gif=1&w=1280&h=1280&c=c&webp=1" alt="" />
                      <h4><span style="font-size: 70%;">수면밀도</span><span>허리엔 더매직 허리특화 포켓스프링 매트리스</span></h4>
                      <!-- <ul>
                        <li><i class="fa fa-star"></i> 4.8</li>
                        <li><i class="fa fa-download"></i> 2.3M</li>
                      </ul> -->
                    </div>
                  </div>
                  <div class="col-lg-3 col-sm-6">
                    <div class="item">
                      <img src="https://image.ohou.se/i/bucketplace-v2-development/uploads/productions/163339551420208507.jpg?gif=1&w=1280&h=1280&c=c&webp=1" alt="" />
                      <h4><span style="font-size: 70%;">휴도</span><span>편안한 제주 25cm 필로우탑 본넬스프링 침대 매트릭스</span></h4>
                      <!-- <ul>
                        <li><i class="fa fa-star"></i> 4.8</li>
                        <li><i class="fa fa-download"></i> 2.3M</li>
                      </ul> -->
                    </div>
                  </div>
                  <div class="col-lg-12">
                    <div class="main-button">
                      <a href="browse.html">Discover Popular</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- ***** Most Popular End ***** -->

          <!-- ***** Gaming Library Start ***** -->
          <div class="gaming-library">
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
          <!-- ***** Gaming Library End ***** -->
        </div>
      </div>
    </div>
  </div>

  <footer>
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
  </footer>
  <script src="/resources/vendor/jquery/jquery.min.js"></script>
  <div id="script"></div>
  <script>
    $(document).ready(function(){
      $("head").load("/resources/common/common_head.html");
      $("#script").load("/resources/common/include_script.html");
      $("#header").load("/resources/common/header.html");
    });
  </script>
</body>
</html>