<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="css/main.css">
<script type="text/javascript" src="js/bootstrap/bootstrap.bundle.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class ="LogoDiv">
			<img alt="오리" src="images/ohri.png">
		</div>
		<ul class ="infoUl">
			<li><a href="deptPage.do">부서정보</a></li>
		</ul>
		<div class="userInfoDiv">
			[<c:out value="${USER.name}"/>]
			<button type="button" class="btn btn-warning btn-lg" style="right" onclick="window.location.href='logout.do'">로그아웃</button>
			<button type="button" class="btn btn-warning btn-lg" style="right" onclick="window.location.href='userInfoConfirmPage.do'">내정보</button>
		</div>
		
</body>
</html>