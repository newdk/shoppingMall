<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }" />
<c:set var="member_id" value="${sessionScope.member }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${path }/resources/css/style.css" />
</head>
<body>
	<section>
	    <a href="${path }/member/updateMyInfoForm.do?member_id=${member_id}">내 정보 수정</a>
	    <a href="#">주문 내역</a>
	    <a href="#">장바구니</a>
	</section>
</body>
</html>