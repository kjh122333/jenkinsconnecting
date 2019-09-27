<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>Insert title here</title>
</head>
<body>
	<div class="bg-dark navbar-dark text-white">
		<div class="container">
			<nav class="navbar px-0 navbar-expand-lg navbar-dark">
				<div
					class="navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
					<c:if test="${sessionScope.id != null}">
						<h4>WELCOME ${sessionScope.id}!</h4>
					</c:if>
				</div>
				<div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
					<ul class="navbar-nav ml-auto">
						<c:if test="${sessionScope.id != null}">
							<div>
								<button type="button"
									class="btn btn-outline-danger btn-hover-text-dark btn-lg m-2"
									onclick="location.href='/user/detail?id=${sessionScope.id}'">정보
									수정</button>
								<button type="button"
									class="btn btn-outline-light btn-hover-text-dark btn-lg m-2"
									onclick="location.href='/user/logout'">로그아웃</button>
							</div>
						</c:if>
						<c:if test="${sessionScope.id == null}">
							<div>
								<button type="button"
									class="btn btn-outline-light btn-hover-text-dark btn-lg m-2"
									onclick="location.href='/user/loginPage'">로그인</button>
							</div>
						</c:if>
					</ul>
				</div>
			</nav>
		</div>
	</div>
</body>
</html>