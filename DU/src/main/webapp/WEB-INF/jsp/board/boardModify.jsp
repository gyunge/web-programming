<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/layout/header.jsp"></jsp:include>
	</header>
	
	<form action="${pageContext.request.contextPath}/boardModify.do" method ="post">
		<table class="table table-warning">
			<tr>
				<th>제목</th>
				<td><input type="text" name="title" value="${board.title}" required></td>
				<th style="width: 15%;">작성자</th>
				<td style="width: 15%;"><c:out value = "${board.writerName}"></c:out></td>
			</tr>
			<tr>
				<th>내용</th>
				<td colspan="3" style="width: 90%;">
				<textarea style="width: 100%; height: 100px;" name="content" required><c:out value="${board.content}"></c:out></textarea>
				</td>
			</tr>
		</table>
		<input type="hidden" name="idx" value="${board.idx}"/>
		<button type="button" class="btn btn-warning" onclick="history.back(); return false;">이전</button>
		<button type="submit" class="btn btn-warning">완료</button>
	</form>
</body>
</html>