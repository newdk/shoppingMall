<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
  request.setCharacterEncoding("utf-8");
%>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<link href="${contextPath}/resources/css/style.css" rel="stylesheet"
	type="text/css" media="screen">
<title><tiles:insertAttribute name="title" /></title>
<link href="${contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" media="screen">
<style type="text/css">
	/* height 임시로 지정 */
	.layout-body{
		width:100%;
		height:800px;
	}
</style>
</head>
<body>
	<div id="outer_wrap">
		<div id="wrap">
			<header>
				<tiles:insertAttribute name="header" />
			</header>
			<div class="clear"></div>
			<article>
				<tiles:insertAttribute name="body" />
			</article>
			<div class="clear"></div>
			<%--<footer>
				<tiles:insertAttribute name="footer" />
			</footer> 
		</div>
	</div>
</body>

