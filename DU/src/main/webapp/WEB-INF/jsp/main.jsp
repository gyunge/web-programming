<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Main Page</title>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/layout/header.jsp"></jsp:include>
	</header>
	
	<img src="images/ohri2.png" style="width: 105px; height: 150px;" onclick= "window.location.href='boardListPage.do'"/>
</body>
</html>
