<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>BoardWrite</title>
</head>
<body>
	<%-- <form action='/BoardWeb/board/insertBoard' method="post">
		<label for="exampleFormControlInput1">제목</label> <input type="text"
			id="exampleFormControlInput1" name="title" placeholder="제목을 작성해주세요.">

		<label for="exampleFormControlInput1">작성자</label> <input type="text"
			id="exampleFormControlInput1" name="writer" placeholder="이름을 적어주세요.">

		<label for="exampleFormControlTextarea1">내용</label>
		<textarea id="exampleFormControlTextarea1" name="content" rows="10"></textarea>

		<button type="submit">등록하기</button>
		<button type="button">목록으로</button>
	</form> --%>
	<div class="panel-body">
		<div class="row">
			<div class="col-lg-6">
				<form:form role="form" commandName="boardVO" action="/BoardWeb/board/insertBoard" method="post">
					<div class="form-group input-group">
						<span class="input-group-addon"><i class="fa fa-check"></i></span>
						<form:input type="text" class="form-control" placeholder="TITLE" path="title" />
						<form:errors path="title" />
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon"><i class="fa fa-user"></i></span>
						<form:input type="text" class="form-control" placeholder="Writer" path="writer" />
						<form:errors path="writer" />
					</div>
					<div class="form-group input-group">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<form:textarea class="form-control" placeholder="content" path="content" />
						<form:errors path="content" />
					</div>
					<button type="submit" class="btn btn-default">등록하기</button>
					<button type="reset" class="btn btn-default">목록으로</button>
				</form:form>
			</div>
		</div>
	</div>
</body>
</html>