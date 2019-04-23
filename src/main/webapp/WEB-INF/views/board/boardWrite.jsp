<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>BoardWrite</title>
</head>
<body>
	<form:form role="form" commandName="boardVO" action="/BoardWeb/board/insertBoard" method="post">
		<form:input type="text" class="form-control" placeholder="TITLE" path="title" />
		<form:errors path="title" />
		<form:hidden value="${authInfo.name }" path="writer" />
		<form:errors path="writer" />
		<form:textarea class="form-control" placeholder="content" path="content" />
		<form:errors path="content" />
		<button type="submit" class="btn btn-default">등록하기</button>
		<button type="reset" class="btn btn-default">목록으로</button>
	</form:form>
</body>
</html>