<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Index</title>
<style>
body {
	width: 100vw;
	height: 100vh;
	background-image: url("./resources/background.png");
	background-size: 100vw;
	background-position: center;
	-webkit-backdrop-filter: blur(10px);
	backdrop-filter: blur(10px);
	background-color: #000000;
	position: relative;
}

h1.title {
	width: 385px;
	height: 294px;
	font-family: NanumBarunpen;
	font-size: 100px;
	font-weight: normal;
	font-style: normal;
	font-stretch: normal;
	line-height: 1.28;
	letter-spacing: normal;
	text-align: left;
	color: #ffffff;
	position: absolute;
	left: 174px;
	top: 163px;
}

p {
	width: 489px;
	height: 32px;
	font-family: NanumBarunpen;
	font-size: 35px;
	font-weight: normal;
	font-style: normal;
	font-stretch: normal;
	line-height: 1.28;
	letter-spacing: normal;
	text-align: left;
	color: #ffffff;
	left: 174px;
	position: absolute;
	top: 463px;
}

p.text-style-1 {
	letter-spacing: 4px;
}

a {
	font-family: NanumBarunpen;
	font-size: 40px;
	color: #ffffff;
}

a.btn2 {
	font-family: NanumBarunpen;
	font-size: 40px;
	color: #ffffff;
}

.btns {
	position: absolute;
	right: 100px;
	bottom: 150px;
}
.btns a {
	margin: 0 50px;
	text-decoration: none;
}

.btns a:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<h1 class="title">처음 만든 게시판</h1>
	<p class="text-style-1">세상에 이런 게시판은 없었다.<br/>이것은 게시판인가 쓰레기인가.</p>
	<div class="btns">
		<a class="btn1" href="/BoardWeb/login">로그인</a>
		<a class="btn2" href="/BoardWeb/register/step2">회원가입</a>
	</div>


</body>
</html>
<!-- <li><a href="/BoardWeb/login"><i class="fa fa-sign-in"></i> 로그인</a></li>
				<li><a href="/BoardWeb/register/step1"><i class="fa fa-user"></i>회원가입</a></li>
				<li><a href="/BoardWeb/board/boardList"><i class="fa fa-board"></i>글목록</a></li> -->
<%-- </c:when>
			<c:otherwise>
				<c:choose>
					<c:when test="${authInfo.serial eq '1' }">
						<li>
							<p>관리자 ${authInfo.name }님, 환영합니다.</p>
						</li>
						<li><a href="/BoardWeb/logout"><i class="fa fa-sign-out"></i> 로그아웃</a></li>
					</c:when>
					<c:otherwise>
						<li>
							<p>${authInfo.name }님,반갑습니다!</p>
						</li>
						<li><a href="/BoardWeb/logout"><i class="fa fa-sign-out"></i> 로그아웃</a></li>
					</c:otherwise>
				</c:choose>
			</c:otherwise>
		</c:choose>
	</c:catch> --%>