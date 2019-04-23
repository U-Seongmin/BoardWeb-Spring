<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Step1</title>
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
	align-items: center;
}

h1 {
	font-family: 나눔스퀘어;
}

input[type="text"], input[type="password"] {
	height: 40px; /* 높이 초기화 */
	width: 470px;
	font-family: 나눔스퀘어;
	font-size: 15pt;
	line-height: normal; /* line-height 초기화 */
	padding: .8em .5em; /* 여백 설정 */
	margin: 15px 0;
}

button {
	background: #1AAB8A;
	color: #fff;
	border: none;
	position: relative;
	height: 60px;
	font-size: 1.4em;
	font-family: 나눔스퀘어;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
	margin: 5px 0;
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

.errorMsg {
	text-align: center;
	color: #FF0000;
}

.btns {
	width: 180px;
	margin: 0 auto;
}
</style>
</head>
<body>
	<form:form role="form" commandName="userVO"
		action="/BoardWeb/register/step3" method="post">
		<div class="main">
			<div>
				<div class="title">
					<h1>회원가입</h1>
				</div>
				<div>
					<form:input type="text" class="form-control" placeholder="ID"
						path="id" />
					<div class="errorMsg">
						<form:errors path="id" />
					</div>
				</div>
				<div>
					<form:input type="text" class="form-control" placeholder="Name"
						path="name" />
					<div class="errorMsg">
						<form:errors path="name" />
					</div>
				</div>
				<div>
					<form:password class="form-control" placeholder="Password"
						path="password" />
					<div class="errorMsg">
						<form:errors path="password" />
					</div>
				</div>
				<div>
					<form:password class="form-control" placeholder="Password Check"
						path="checkPw" />
					<div class="errorMsg">
						<form:errors path="checkPw" />
					</div>
				</div>
				<div class="btns">
					<button type="submit" class="btn">가입하기</button>
					<button type="button" onclick="location.href='/BoardWeb'" class="btn">취소하기</button>
				</div>
			</div>
		</div>
	</form:form>
</body>
</html>