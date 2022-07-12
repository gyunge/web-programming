<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<html>
<head>
	<link rel="stylesheet" href="css/bootstrap/bootstrap.css">
	<script type="text/javascript" src="js/bootstrap/bootstrap.bundle.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Main Page</title>
</head>
<body>
	<header>
		<div>
			[<c:out value="${USER.name}"/>]님 반갑습니다~ ^_^
		</div>
		<div>
			<button type="button" class="btn btn-warning btn-lg" style="right" onclick="window.location.href='logout.do'">로그아웃</button>
			<button type="button" class="btn btn-warning btn-lg" style="right" onclick="window.location.href='userInfoConfirmPage.do'">내정보</button>
			<button type="button" class="btn btn-warning btn-lg" style="right" onclick="window.location.href='deptPage.do'">부서정보</button>
		</div>
	</header>
</body>
</html>
