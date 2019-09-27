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
<title>User Login</title>
</head>
<body>
	<div
		class="jumbotron jumbotron-fullheight jumbo-vertical-center text-light text-center bg-dark mb-0 radius-0">
		<div class="container">
			<div class="row">
				<div style="float: none; margin: 0 auto;">
					<h1 class="display-2 text-white text-uppercase">Login</h1>
					<form action="/user/login" name="LoginForm" method="post">
						<div class="col-xl-12">
							<div class="ht-tm-codeblock">
								<div>
									<div class="input-group-prepend">
										<button class="btn btn-lg btn-dark" type="button">ID</button>
									</div>
									<input type="text" class="form-control form-control-lg"
										required name="id">
								</div>
							</div>
						</div>
						<br>
						<div class="col-xl-12">
							<div class="ht-tm-codeblock">
								<div>
									<div class="input-group-prepend">
										<button class="btn btn-lg btn-dark" type="button">PW</button>
									</div>
									<input type="password" class="form-control form-control-lg"
										required name="pw">
								</div>
							</div>
						</div>
						<div class="mt-4">
							<button type="submit" class="btn btn-danger btn-lg m-2 btn-wide">Login</button>
						</div>
						<br>
					</form>
					<button type="button" class="btn btn-primary btn-lg m-2"
						onclick="location.href='/user/joinPage'">Join</button>
					<button type="button" class="btn btn-warning btn-lg m-2"
						onclick="location.href='/user/findPage'">Find Id/Pw</button>
					<button type="button" class="btn btn-light btn-lg m-2"
						onclick="location.href='/'">Main</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>