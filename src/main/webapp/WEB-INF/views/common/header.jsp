<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<c:set var="member_id" value="${sessionScope.member }" />
<%
  request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- <title><tiles:insertAttribute name="header" /></title> --%>
</head>
<body>
<!-- <div class="body__container"> -->
    <div class="header_container">   
        <div class="topgnb inbox">
            <ul class="topgnb__left">
                <li><a href="">FAVORITE</a></li>
                <li><a href="">NOTICE</a></li>
                <li><a href="">EVENT</a></li>
                <li><a href="">SHOW ROOM</a></li>
                <li><a href="">PHOTO REVIEW</a></li>
                <li><a href="">Q&amp;A</a></li>
            </ul>
            <c:if test="${empty sessionScope.member && sessionScope.member == null }">
	            <ul class="topgnb__right">
	                <li><a href="${path }/member/loginForm.do">LOGIN</a></li>
	                <li><a href="">JOIN</a></li>
	                <li><a href="">CART</a></li>
	                <li><a href="${path }/member/myPageForm.do">MY PAGE</a></li>
	                <li><a href="">ORDER</a></li>
	            </ul>
            </c:if>
            <c:if test="${not empty sessionScope.member && sessionScope.member != null }">
				<ul class="topgnb__right">
	                <li><a href="${path }/member/logout.do">LOGOUT</a></li>
	                <li><a href="${path }/member/updateMyInfoForm.do?member_id=${member_id}">MODIFY</a></li>
	                <li><a href="">CART</a></li>
	                <li><a href="${path }/member/myPageForm.do">MY PAGE</a></li>
	                <li><a href="">ORDER</a></li>
	            </ul>>
			</c:if>
        </div>
      
        <div class="top inbox">
            <header id="top" class="header">
                <h1 class="top__logo"><a href="${path }/">WHOSBAG</a></h1>
            </header>
            <div class="top__form">
                <form action="" method="post" name="search">
                    <input name="search" class="input" value="" onkeydown="" onclick=""/>
                    <a href="">
                        <svg width="20" height="20">
                            <g><path class="search_svg" d="M19.7,17.3l-3.9-3.9c-0.2-0.2-0.4-0.2-0.6-0.2h-0.6c1.1-1.4,1.7-3.1,1.7-5c0-4.5-3.6-8.1-8.1-8.1S0,3.6,0,8.1
                                    s3.6,8.1,8.1,8.1c1.9,0,3.6-0.6,5-1.7v0.6c0,0.2,0.1,0.5,0.2,0.6l3.9,3.9c0.3,0.3,0.9,0.3,1.3,0l1.1-1.1
                                    C20.1,18.2,20.1,17.6,19.7,17.3z M8.1,13.1c-2.7,0-5-2.2-5-5s2.2-5,5-5s5,2.2,5,5S10.9,13.1,8.1,13.1z"/></g>
                        </svg>
                    </a>
                </form>				
            </div>
        </div>  <!-- //top -->
        <div class="gnb inbox">
            <nav id="gnb" class="nav">
                <ul>
                    <li><a href="">NEW</a></li>
                    <li><a href="">BEST</a></li>
                    <li><a href="">IT BAG</a></li>
                    <li><a href="">LEATHER BAG</a></li>
                    <li><a href="">TREAD BAG</a></li>
                    <li><a href="">ECO BAG</a></li>
                    <li><a href="">WALLET</a></li>
                    <li><a href="">SHOES</a></li>
                    <li><a href="">BAG ACC</a></li>
                    <li><a href="">ACCESSORY</a></li>
                </ul>
            </nav>
        </div> <!-- //gnb -->
    </div>
<!-- </div> -->
</body>
</html>