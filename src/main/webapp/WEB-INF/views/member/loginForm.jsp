<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${path }/resources/css/style.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- <script type="text/javascript">
	$(function(){
	    var responseMessage = "<c:out value="${message}" />";
	    if(responseMessage != ""){
	        alert(responseMessage);
	    }
	}) 
</script> -->
</head>
<body>
	<section>
	    <div class="login-join-section">
	      <div class="login-container">
	        <div class="login-inner">
	          <form action="${path }/member/login.do" method="POST">
	            <div>
	              <label for="member_id" class="input-label-id">아이디</label>
	              <input type="text" name="member_id" id="member_id"/>
	            </div>
	            <div class="input-pw">
	              <label for="pw" class="input-label-pw">비밀번호</label>
	              <input type="password" name="pw" id="pw"/>
	            </div>
	            <div class="login-button-flex">
	              <button type="submit" class="login-button login-join">로그인</button>
	            </div>
	          </form>
	        </div>
	        <div class="join-inner">
	          <div class="shop_ment">
	            후즈백은 '성함, 아이디, 이메일' 만으로 "간편회원가입" 됩니다. <br><br>신규회원 첫구매 무료배송쿠폰, 적립금3,000원 즉시할인, 앱으로 구매시 1,000원추가할인까지<br>좋은상품 합리적인 가격으로 이용하세요.
	          </div>
	          <a href="${path }/member/signUpForm.do" class="join-button login-join">회원가입</a>
	        </div>
	      </div>
	    </div>
	</section>
</body>
</html>