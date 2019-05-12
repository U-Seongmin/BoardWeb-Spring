<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<style>
body {
	width: 100vw;
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
	width: 630px;
	border-radius: 50px;
	background-color: #ffffff;
	margin: 20px auto;
	display: flex;
	justify-content: flex-start;
}
</style>
</head>
<body>
	<form:form role="form" commandName="boardVO"
		action="/BoardWeb/board/updateBoard" method="post">
		<form:input type="text" class="form-control" placeholder="TITLE"
			value="${board.title }" path="title" />
		<form:errors path="title" />
		<form:input value="${board.serial }" path="serial" />
		<form:textarea class="form-control" placeholder="content"
			path="content" />
		<form:errors path="content" />
		<button type="submit" class="btn btn-default">등록하기</button>
		<button type="reset" class="btn btn-default">목록으로</button>
	</form:form>
</body>
</html>