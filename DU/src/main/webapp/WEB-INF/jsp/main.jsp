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
	<h1>[<c:out value="${USER.name}"/>]님 반갑습니다~ ^_^</h1>
	
	<button type="button" style="right" onclick="window.location.href='logout.do'">로그아웃</button>
	<button type="button" style="right" onclick="window.location.href='userInfoConfirmPage.do'">내정보</button>
</body>
</html>
