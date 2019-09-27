<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="/resources/css/bootstrap4-hello-world.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Fredoka+One|Roboto:300,400"
	rel="stylesheet">
<head>
<head>
<meta charset="UTF-8">
<title>User Find</title>
</head>
<body>

	<div
		class="jumbotron jumbotron-fullheight jumbo-vertical-center text-light text-center bg-dark mb-0 radius-0">
		<div class="container">
			<h1 class="display-2 text-white text-uppercase">User Find</h1>
			<div class="mt-4">
				<button type="button" class="btn btn-primary btn-lg m-2 btn-wide"
					onclick="location.href='/user/findIdPage'">아이디 찾기</button>
				<button type="button" class="btn btn-danger btn-lg m-2 btn-wide"
					onclick="location.href='/user/findPwPage'">비밀번호 찾기</button>
			</div>
			<br>
			<button type="button" class="btn btn-light btn-lg m-2 btn-wide"
				onclick="location.href='/user/login'">뒤로가기</button>
		</div>
	</div>
</body>
</html>