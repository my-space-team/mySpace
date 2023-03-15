<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <nav class="main-nav">
            <!-- ***** Logo Start ***** -->
            <a href="/" class="logo" style="width: 190px; height: 90px;">
              <img style="width: 100%; height: 100%;" src="/resources/asset/images/myspace_logo.png" alt="" />
            </a>
            <!-- ***** Logo End ***** -->
            <!-- ***** Search End ***** -->
            
            <div class="search-input" style="display: flex; height: 100%; ">
            	<form id="search" action="/">
            	<div style="">
	                <div style="width: 35px; height: 35px; position: absolute; top: 28px; left: 9px;">
	                	<img style="width: 100%; height: 100%;" src="/resources/asset/images/search_icon.png" />
	                </div>
	                <div>
		                <input style="margin: 0; margin-top: 20px;"
		                  type="text"
		                  placeholder="쇼핑검색"
		                  id="searchText"
		                  name="searchKeyword"
		                  onkeypress="handle"
		                />
	                </div>
                </div>        
                </form>      
            </div>

            <!-- ***** Search End ***** -->
            <!-- ***** Menu Start ***** -->

            <ul class="nav" style="display:flex; align-items: center;">
              <li><a href="/" class="active">쇼핑</a></li>
              <li><a href="/cart/list">장바구니</a></li>
              <sec:authorize access="isAnonymous()">
           	  <li><a href="/member/register">회원가입</a></li>
           	  </sec:authorize>
           	  <sec:authorize access="isAuthenticated()">
           	  <li><a href="/logout">로그아웃</a></li>
           	  </sec:authorize>
              <li>
                <a href="/mypage/home">프로필 <img src="/resources/asset/images/profile_images.webp" alt=""/></a>
              </li>
            </ul>
            <a class="menu-trigger">
              <span>Menu</span>
            </a>
            <!-- ***** Menu End ***** -->
          </nav>
        </div>
      </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->