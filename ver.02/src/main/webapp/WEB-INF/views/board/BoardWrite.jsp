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
<title>Board Write</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/template/header.jsp" />
	<br>
	<div class="ht-tm-wrapper ht-tm-wrapper-inspectoron">
		<div class="container ht-tm-container">
			<div class="col-xl-12">
				<div class="row">
					<div style="float: none; margin: 0 auto;">
						<div class="card">
							<div class="card-body">
								<h1 class="display-4" align="center">Board Write</h1>
								<form method="post" action="/board/write">
									<div class="ht-tm-element ht-tm-element-inner">
										<h6>작성자</h6>
										<input class="form-control" type="text"
											value="${sessionScope.id}" name="id" readonly>
									</div>
									<br>
									<div class="ht-tm-element ht-tm-element-inner">
										<h6>제목</h6>
										<input class="form-control" type="text" placeholder="title"
											required name="title">
									</div>
									<br>
									<div class="ht-tm-element ht-tm-element-inner">
										<h6>내용</h6>
										<textarea class="form-control" type="textarea"
											placeholder="내용" required name="content"></textarea>
									</div>
									<br>
									<div align="center">
										<button type="submit" class="btn btn-outline-primary">확인</button>
										<button type="button" class="btn btn-outline-info"
											onclick="location.href='/board/list'">뒤로</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br>
</body>
</html>