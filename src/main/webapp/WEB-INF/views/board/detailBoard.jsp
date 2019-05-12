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

div.card{
	padding: 30px;
}

p{
	font-family: 나눔스퀘어;
}

p.title{
	font-size: 24pt;
}

p.meta{
	color: #6f6f6f;
}
</style>
</head>
<body>
<div class="main">
    <div class="card">
        <div class="card-body">
            <p class="title">${board.title }</p>
            <p class="meta">
                 ${board.writer }
                ·
                 ${board.regDate }
                ·
                 ${board.cnt }
            </p>
            <p class="textarea">${board.content }</p>
        </div>
        <div class="func">
            <a href="/BoardWeb/board/updateBoard?seq=${board.serial }" class="btn" role="button">수정</a>
            <a href="/BoardWeb/board/deleteBoard?seq=${board.serial }" class="btn" role="button">삭제</a>
        </div>
        <div class="card-body">
            <a href='<c:url value='/board/boardList'/>' class="btn" role="button">목록으로</a>
        </div>
    </div>
</div>
</body>
</html>



<%-- <div class="main">
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
</div> --%>