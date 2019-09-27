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
<meta charset="UTF-8">
<title>User Find Pw</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/template/header.jsp" />
	<br>
	<form action="/user/findPw" method="post">
		<div class="ht-tm-wrapper ht-tm-wrapper-inspectoron">
			<div class="container ht-tm-container">
				<div class="row">
					<div style="float: none; margin: 0 auto;">
						<div class="card">
							<div class="card-body">
								<h1 class="display-4" align="center">User Find PW</h1>
								<div class="ht-tm-element ht-tm-element-inner">
									<h6>아이디</h6>
									<input type="text" class="form-control" required name="id">
								</div>
								<br>
								<div class="ht-tm-element ht-tm-element-inner">
									<h6>이름</h6>
									<input type="text" class="form-control" required name="name">
								</div>
								<br>
								<div class="ht-tm-element ht-tm-element-inner">
									<h6>이메일 : id@domain.com</h6>
									<input type="text" class="form-control" required name="email">
								</div>
								<br>
								<div align="center">
									<button type="submit" class="btn btn-outline-primary">비밀번호
										찾기</button>
									<button type="button" class="btn btn-outline-dark"
										onclick="location.href='/user/findPage'">뒤로</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>