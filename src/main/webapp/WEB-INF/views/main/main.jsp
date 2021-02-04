<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
	<%-- <c:if test="${empty sessionScope.member && sessionScope.member == null }">
		<h1>main 입니다~!!!!</h1>
		<a href="${path }/member/loginForm.do">로그인</a>
		<a href="${path }/member/signUpForm.do">회원가입</a>
	</c:if>
	<c:if test="${not empty sessionScope.member && sessionScope.member != null }">
		<h1>${sessionScope.member }님 환영합니다</h1>
		<a href="${path }/member/logout.do">로그아웃</a>
		<a href="${path }/member/myPageForm.do">내 정보</a>
	</c:if> --%>
	
<br><br>
<div id="contentWrapper">
<div id="contentWrap">
	<div id="content">
		<div id="main">
			<script src="http://whosbag.img1.kr/smartpc/plugin/lemmon-slider.js"></script>
			<!-- main > top calousel -->
			<div id="SMC_mainTopModule" class="main-slide-banner cb_clear">
			<div id="SMC_mainTopGallery" class="SMS_float_left SMS_relative pointer" style="width:1140px, height:560px">
				
				<!-- 플래시 메인배너 -->
				<div class="flexslider_main_top">
					<ul class="slides">
						<li>
							<a href="${path }/"><img src="${path }/resources/image/main_banner_01.jpg"></a><!--배너 1-->
						</li>
					</ul>
				</div>
				<!--// 플래시 메인배너 끝//-->
				
				<!-- image direction area -->
				<div class="SMS_carousel_direction SMS_dir_left" >
					<img src="${path }/resources/image/left-arrow.png">
				</div>
				<div class="SMS_carousel_direction SMS_dir_right" >
					<img src="${path }/resources/image/right-arrow.png">
				</div>
			</div>
			</div>
			<!-- main > top calousel : end -->
			
			
	
			<!-- ============ 메인갤러리 밑 3X1 배너 ============ -->
			<div class="main-three-banner-container">
				<div class="main-three-banner">
					<ul class="cb_clear">
						<li class="first">
							<a href="${path }/"><img src="${path }/resources/image//group01-banner01.jpg" alt="배너1"></a>
							<dl>
								<dt class="tit">PHOTO REVIEW</dt>
								<dd class="txt">고객님들의 정성스러운 상품후기</dd>
							</dl>
						</li>
						<li>
							<a href="${path }/"> <img src="${path }/resources/image/group01-banner02.jpg" alt="배너2"></a>
							<dl>
								<dt class="tit">BAG CHARM</dt>
								<dd class="txt">가방을 돋보이게 하는 참장식</dd>
							</dl>
						</li>
						<li class="last">
							<a href="${path }/"><img src="${path }/resources/image/group01-banner03.jpg" alt="배너3"></a>
							<dl>
								<dt class="tit">후즈백 특별세일</dt>
								<dd class="txt">최대80% ~ 한정수량 득템찬스 </dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
			<!-- ============ 메인갤러리 밑 3X1 배너:END ============ -->
	
			
	
		</div><!-- #main end -->
	</div><!-- #content end -->
</div><!-- #contentWrap end -->
 </div><!-- #contentWrapper end -->
<br><br>
</body>
</html>