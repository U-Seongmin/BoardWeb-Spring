<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>Step1</title>
<style>

h1 {
	text-align: left;
	font-family: sans-serif;
	font-size: 50px;
}

h2.sub {
	margin-bottom: 100px;
}

div.panel-body {
	background-color: #cff092;
	border: 3px solid #3ac569;
	border-radius: 10px;
}

div.panel {
	align-items: center;
	margin-right: 300px;
	margin-left: 300px;
	margin-top: 75px;
	font-family: sans-serif;
}
p.content {
	margin: 20px;
}
</style>
</head>
<body>
	<div class="panel">
		<h1 style="color:#915c4c">
			Book<span style="color: #2f1812">Tree</span>
		</h1>
		<h2 class="sub">약관 동의</h2>
		<div class="row">
			<div class="col-lg-12">
				<h4>이용약관</h4>
				<div class="panel-body">
					<p class="content">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare
						lacus adipiscing, posuere lectus et, fringilla augue. Lorem ipsum
						dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum
						dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt
						est vitae ultrices accumsan. Aliquam ornare lacus adipiscing,
						posuere lectus et, fringilla augue. Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
						labore et dolore magna aliqua.Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Vestibulum tincidunt est vitae
						ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus
						et, fringilla augue. Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eiusmod tempor incididunt ut labore et
						dolore magna aliqua.</p>
				</div>
				<br>
				<h4>개인정보</h4>
				<div class="panel-body">
					<p class="content">Lorem ipsum dolor sit amet, consectetur adipiscing elit.
						Vestibulum tincidunt est vitae ultrices accumsan. Aliquam ornare
						lacus adipiscing, posuere lectus et, fringilla augue. Lorem ipsum
						dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum
						dolor sit amet, consectetur adipiscing elit. Vestibulum tincidunt
						est vitae ultrices accumsan. Aliquam ornare lacus adipiscing,
						posuere lectus et, fringilla augue. Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eiusmod tempor incididunt ut
						labore et dolore magna aliqua.Lorem ipsum dolor sit amet,
						consectetur adipiscing elit. Vestibulum tincidunt est vitae
						ultrices accumsan. Aliquam ornare lacus adipiscing, posuere lectus
						et, fringilla augue. Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eiusmod tempor incididunt ut labore et
						dolore magna aliqua.</p>
				</div>
				<br>
				<form role="form" action="/BoardWeb/register/step2">
					<div class="form-group">
						<label class="checkbox-inline"> <input type="checkbox"
							name="agree" value="true">동의합니다.
						</label><br>
						<button type="submit" class="btn btn-default">다음 단계</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>