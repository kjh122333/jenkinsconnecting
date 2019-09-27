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
<head>
<meta charset="UTF-8">
<title>User Find Id</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/template/header.jsp" />
	<br>
	<div class="ht-tm-wrapper ht-tm-wrapper-inspectoron">
		<div class="container ht-tm-container">
			<div class="row">
				<div style="float: none; margin: 0 auto;">
					<div class="card">
						<div class="card-body">
							<c:if test="${userFindPw ne null}">
								<h1 class="display-4" align="center">User Find PW</h1>
								<div class="ht-tm-element ht-tm-element-inner">
									<h6>비밀번호</h6>
									<input type="text" class="form-control" name="pw"
										value="${userFindPw}" readonly>
								</div>
								<br>
								<div align="center">
									<button type="button" class="btn btn-outline-primary"
										onclick="location.href='/user/loginPage'">로그인</button>
								</div>
							</c:if>
							<c:if test="${userFindPw eq null }">
								<h1 class="display-4" align="center">User PW Not Found</h1>
								<h4>존재하지 않는 정보입니다</h4>
								<br>
								<div align="center">
									<button type="button" class="btn btn-outline-primary"
										onclick="location.href='/user/joinPage'">회원가입</button>
								</div>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>