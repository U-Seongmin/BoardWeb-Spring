<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
body {
	width: 100vw;
	height: 100vh;
	background-image:
		url("https://scontent-icn1-1.xx.fbcdn.net/v/t1.15752-0/p480x480/58373062_2046561135441630_4511183757931184128_n.png?_nc_cat=100&_nc_ht=scontent-icn1-1.xx&oh=a34400fa979b447df154700535b22078&oe=5D3A6C03");
	background-size: 100vw;
	background-position: center;
	position: relative;
	display: flex;
	justify-content: center;
	align-items: center;
}

div.main {
	width: 1820px;
	height: 90vh;
	border-radius: 50px;
	background-color: #ffffff;
	display: flex;
	justify-content: center;
}

A:link {
	text-decoration: none;
	color: #000000;
}

A:visited {
	text-decoration: none;
	color: #9f9f9f;
}

A:active {
	text-decoration: none;
	color: #9f9f9f;
}

A:hover {
	text-decoration: none;
	color: #9f9f9f;
}

table {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
	width: 1500px;
}

table thead th {
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	color: #000000;
	border-bottom: 2px solid #999999;
	border-top: 3px solid #000000;
}

table tbody th {
	width: 150px;
	padding: 10px;
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #f3f6f7;
}

table td {
	width: 350px;
	padding: 10px;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}

button {
	background: #1AAB8A;
	color: #fff;
	border: none;
	position: relative;
	height: 45px;
	width: 150px;
	font-size: 1.0em;
	padding: 0 2em;
	margin-top: 50px;
	margin-bottom: 5px;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
	cursor: pointer;
}

button:hover {
	background: #fff;
	color: #1AAB8A;
}

button:before, button:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: #1AAB8A;
	transition: 400ms ease all;
}

button:after {
	right: inherit;
	top: inherit;
	left: 0;
	bottom: 0;
}

button:hover:before, button:hover:after {
	width: 100%;
	transition: 800ms ease all;
}

h1 {
	font-family: 나눔스퀘어;
	font-size: 50px;
}
div.title{
	margin-top: 50px;
}
</style>
</head>
<body>
	<div class="main">
		<form id="boardForm" name="boardForm" method="post">
			<div class="title">
				<h1>게시판</h1>
				<button type="button"
					onclick="location.href='/BoardWeb/logout'" class="btn">로그아웃</button>
			</div>
			<div>
				<button type="button"
					onclick="location.href='/BoardWeb/board/boardWrite'" class="btn">글쓰기</button>
			</div>
			<table>
				<thead>
					<tr>
						<th>제목</th>
						<th>작성자</th>
						<th>날짜</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${fn:length(list) > 0 }">
							<c:forEach items="${list }" var="result">
								<tr>
									<td>
										<a href='/BoardWeb/board/detailBoard?seq=${result.serial}'><c:out value="${result.title }"/></a>
									</td>
									<td><c:out value="${result.writer }" /></td>
									<td><fmt:formatDate value="${result.regDate}"
											pattern="yyyy.MM.dd" /></td>
									<td><c:out value="${result.cnt }" /></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="5">조회된 결과가 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>
