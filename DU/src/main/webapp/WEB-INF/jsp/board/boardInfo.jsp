<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 상세</title>
</head>
<body>
	<header>
		<jsp:include page="/WEB-INF/jsp/layout/header.jsp"></jsp:include>
	</header>
	
	<table class="table table-warning">
		<tr>
			<th>제목</th>
			<td><c:out value="${board.title}"></c:out></td>
			<th style="width: 15%;">작성자</th>
				<td style="width: 15%;"><c:out value = "${board.writerName}"></c:out></td>
		</tr>
		<tr>
			<th>내용</th>
			<td colspan = "3" style="width: 90%; height: 100px;"><c:out value="${board.content}"></c:out></td>
		</tr>
	</table>
	<button	type="button" class="btn btn-warning"
			onclick="window.history.go(-1)">이전</button>
			
	<c:if test="${board.writerId == USER.userId}">
	<button type="button" class="btn btn-warning"
			id="deleteBtn">삭제</button>
	<button type="button" class="btn btn-warning"
			id="modifyBtn">수정</button>
	</c:if>
</body>

<script>

	window.onload = function() {
		
		var deleteBtn = document.getElementById("deleteBtn");
		
		deleteBtn.onclick = function() {
			if(confirm("삭제하시겠습니까?") == true) {
				var path = "${pageContext.request.contextPath}/boardDelete.do";
				var params = {
						"idx": "${board.idx}",
						"second": "123"
				}
				
				post(path, params);
			} else {
				return;
			}
		}
		
		var modifyBtn = document.getElementById("modifyBtn");
		
		modifyBtn.onclick = function() {
			var path = '${pageContext.request.contextPath}/boardModifyPage.do'
			var params = {
					"idx": "${board.idx}"
			}
			
			post(path, params);
		}
	}
	
	function post(path, params) {
		
		const form = document.createElement('form');
		form.method = 'post';
		form.action = path;
		
		for(const key in params) {
			if(params.hasOwnProperty(key)) {
				const hiddenField = document.createElement('input');
				hiddenField.type = 'hidden';
				hiddenField.name = key;
				hiddenField.value = params[key];
				
				form.appendChild(hiddenField);
			}
		}
		
		document.body.appendChild(form);
		form.submit();
	}
</script>
</html>