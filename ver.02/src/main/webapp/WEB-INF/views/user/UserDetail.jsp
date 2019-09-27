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
<title>User Detail</title>
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
							<h1 class="display-4" align="center">User Detail</h1>
							<div class="ht-tm-element ht-tm-element-inner">
								<h6>아이디</h6>
								<input type="text" class="form-control" name="id"
									value="${userDetail.id}" readonly>
							</div>
							<br>
							<div class="ht-tm-element ht-tm-element-inner">
								<h6>비밀번호</h6>
								<input type="text" class="form-control" name="pw"
									value="${userDetail.pw}" readonly>
							</div>
							<br>
							<div class="ht-tm-element ht-tm-element-inner">
								<h6>이름</h6>
								<input type="text" class="form-control" name="name"
									value="${userDetail.name}" readonly>
							</div>
							<br>
							<div class="ht-tm-element ht-tm-element-inner">
								<h6>우편주소</h6>
								<input type="text" class="form-control" name="zipcode"
									value="${userDetail.zipcode}" readonly>
							</div>
							<br>
							<div class="ht-tm-element ht-tm-element-inner">
								<h6>도로명 주소</h6>
								<input type="text" class="form-control" name="addr1"
									value="${userDetail.addr1}" readonly>
							</div>
							<br>
							<div class="ht-tm-element ht-tm-element-inner">
								<h6>상세 주소</h6>
								<input type="text" class="form-control" name="addr2"
									value="${userDetail.addr2}" readonly>
							</div>
							<br>
							<div class="ht-tm-element ht-tm-element-inner">
								<h6>전화번호</h6>
								<input type="text" class="form-control" name="phone"
									value="${userDetail.phone}" readonly>
							</div>
							<br>
							<div class="ht-tm-element ht-tm-element-inner">
								<h6>이메일</h6>
								<input type="text" class="form-control" name="email"
									value="${userDetail.email}" readonly>
							</div>
							<br>
							<div align="center">
								<button type="button" class="btn btn-outline-primary"
									onclick="location.href='/user/editPage?id=${userDetail.id}'">수정</button>
								<button type="button" class="btn btn-outline-danger"
									onclick="location.href='/user/delete?id=${userDetail.id}'">탈퇴</button>
								<button type="button" class="btn btn-outline-dark"
									onclick="location.href='/board/list'">뒤로</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>