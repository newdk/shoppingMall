<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
  request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
 <%--  <title><tiles:insertAttribute name="header" /></title> --%>
 <link href="${contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" media="screen">
</head>
<body>
	<footer>
	    <div class="footer-container">
	      <div class="footer-info">
	        <ul class="footer-clear">
	          <li>
	            <img src="${contextPath }/resources/image/footer_logo.gif" alt="하단 로고"/>
	          </li>
	          <li>
	            <img src="${contextPath }/resources/image/footer_info.gif" alt="하단 홈페이지 정보"/>
	          </li>
	        </ul>
	      </div>
	    </div>
  </footer> 	
</body>
</html>