<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <nav class="main-nav">
            <!-- ***** Logo Start ***** -->
            <a href="/" class="logo">
              <img src="/resources/asset/images/myspace_logo.png" alt="" />
            </a>
            <!-- ***** Logo End ***** -->
            <!-- ***** Search End ***** -->
            <div class="search-input">
              <form id="search" action="#">
                <input
                  type="text"
                  placeholder="쇼핑검색"
                  id="searchText"
                  name="searchKeyword"
                  onkeypress="handle"
                />
                <i class="fa fa-search"></i>
              </form>
            </div>
            <!-- ***** Search End ***** -->
            <!-- ***** Menu Start ***** -->
            <ul class="nav">
              <li><a href="#" class="active">Home</a></li>
              <li><a href="#">Shopping</a></li>
              <li><a href="#">Details</a></li>
              <li><a href="/member/register">회원가입</a></li>
              <li>
                <a href="/mypage/home">프로필 <img src="../../resources/asset/images/profile-header.jpg" alt=""/></a>
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