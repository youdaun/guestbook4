<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 등록폼영역 -->
	<form action="/guestbook4/add" method="get">
		<table border="1" width="500px">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="password" name="password" value=""></td>
			</tr>
			<tr>
				<td colspan="4"><textarea name="content" cols="65" rows="5"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button type="submit">글작성</button></td>
			</tr>
		</table>
	</form>

	<br>
	<!-- /등록폼영역 -->

	<!-- 리스트영역 -->
	<c:forEach items="${gList}" var="gvo">
		<table border="1" width="500px">
			<tr>
				<td>${gvo.no}</td>
				<td>${gvo.name}</td>
				<td>${gvo.regDate}</td>
				<td><a href="/guestbook4/deleteForm?no=${gvo.no}">삭제</a></td>
			</tr>
			<tr>
				<td colspan="4">${gvo.content}</td>
			</tr>
		</table>
		<br>
	</c:forEach>
	<!-- /리스트영역 -->

</body>
</html>