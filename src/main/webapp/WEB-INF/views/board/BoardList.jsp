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
<title>Board List</title>
</head>
<body>
	<jsp:include page="/WEB-INF/views/template/header.jsp" />

	<div class="container py-5 mb5">
		<h1 class="display-4 text-dark text-uppercase">Board List</h1>
		<c:if test="${sessionScope.id != null}">
			<div style="float: right;">
				<button type="button"
					class="btn btn-outline-dark btn-hover-text-white btn-lg m-2"
					onclick="location.href='./writePage'">글쓰기</button>
				<button type="button" class="btn btn-outline-dark btn-lg m-2"
					onclick="location.href='/'">Main</button>
			</div>
			<br>
			<br>
			<br>
		</c:if>
		<c:if test="${sessionScope.id eq null }">
			<div style="float: right;">
				<button type="button" class="btn btn-outline-dark btn-lg m-2"
					onclick="location.href='/'">Main</button>
			</div>
			<br>
			<br>
			<br>
		</c:if>
		<div class="row">
			<div class="col-md-12">
				<table class="table">
					<thead class="thead-light">
						<tr align="center">
							<th scope="col">번호</th>
							<th scope="col">작성자</th>
							<th scope="col">제목</th>
							<th scope="col">날짜</th>
							<th scope="col">조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${boardList}" var="boardList">
							<tr align="center">
								<td scope="row">${boardList.no}</td>
								<td scope="row">${boardList.id}</td>
								<td scope="row"><a href="/board/detail?no=${boardList.no}">${boardList.title}</a></td>
								<td scope="row">${boardList.date}</td>
								<td scope="row">${boardList.hit}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<ul class="pagination" style="margin: auto;">
				<c:if test="${paging.prev }">
					<li class="page-item"><a class="page-link"
						href='<c:url value="/board/list?page=${paging.startPage-1 }"/>'>
							<i class="fa fa-chevron-left"></i>
					</a></li>
				</c:if>

				<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
					var="idx">
					<c:choose>
						<c:when test="${paging.cri.page eq idx}">
							<li class="page-item active"><b><a class="page-link"
									href='<c:url value="/board/list?page=${idx }"/>'><i
										class="fa">${idx }&nbsp;</i></a></b></li>
						</c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link"
								href='<c:url value="/board/list?page=${idx }"/>'><i
									class="fa">${idx }&nbsp;</i></a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>

				<c:if test="${paging.next && paging.endPage >0 }">
					<li class="page-item"><a class="page-link"
						href='<c:url value="/board/list?page=${paging.endPage+1 }"/>'>
							<i class="fa fa-chevron-right"></i>
					</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</body>
</html>