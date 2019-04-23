<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>DetailBoard</title>
<style>
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
	width: 630px;
	height: 800px;
	border-radius: 50px;
	background-color: #ffffff;
	display: flex;
	justify-content: center;
}



p {
	font-family: 나눔스퀘어;
}
p.writer{
	font-size: 15pt;
}
p.title{
	margin: 30px 0;
	font-size: 30pt;
}
div.textarea{
	margin: 10px 0;
	width: 600px;
	height: 600px;
	border: 3px solid #eeeeee;
	padding:5px;
	border-radius: 20px;
}
</style>
</head>
<body>
<div class="main">
	<div>
		<div class="title">
			<p class="title">${board.title }</p>
		</div>
		<div class="writer">
			<p class="writer">${board.writer }</p>
		</div>
		<div class="textarea">
			<p class="textarea">${board.content }</p>
		</div>
	</div>
</div>
</body>
</html>