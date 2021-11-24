<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<!-- CDN font-awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- CSS W3 -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<!-- css main -->
<link rel="stylesheet"
	href='<c:url value="/assest/welcome2css.css"></c:url>'>
</head>
<%
String e2 = request.getParameter("e2");

request.setAttribute("e2", e2);
%>
<body>
	<jsp:include page="/view/common/header.jsp"></jsp:include>

	<div><jsp:include page="/view/common/carousel.jsp"></jsp:include>

		<c:choose>
			<c:when test="${e2 == null }">
				<div class="content container justify-content-center mt-5">
					<div class="row">
						<c:forEach items="${productList }" var="book">
							<div class="col-3 mt-5">
								<div class="card " style="width: 18rem;box-shadow: rgb(38, 57, 77) 0px 20px 30px -10px;">
									<img src='<c:url value="${book.getImage() }"></c:url>'
										class="card-img-top" alt="">
									<div class="card-body text-center">
										<h5 class="card-title">${book.getName() }</h5>
										<p class="card-text">${book.getDescription() }</p>
										<p class="card-text">${book.getPrice() }VNĐ</p>
										<a href="/ItemsMVC/member/AddToCart?id=${book.getId() }"
											class="btn btn-info">Thêm Vào Giỏ Hàng</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<div class="d-flex justify-content-center">
					<c:forEach items="${productList }" var="book">
						<div class="card mt-5" style="width: 18rem; margin: 0 auto">
							<img src='<c:url value="${book.getImage() }"></c:url>'
								class="card-img-top" alt="">
							<div class="card-body">
								<h5 class="card-title">${book.getName() }</h5>
								<p class="card-text">${book.getDescription() }</p>
								<p class="card-text">${book.getPrice() }VNĐ</p>
								<a href="/ItemsMVC/member/AddToCart?id=${book.getId() }"
									class="btn btn-success">Thêm Vào Giỏ Hàng<i
									class="fa fa-shopping-cart cartt"></i></a>
							</div>
						</div>
					</c:forEach>
				</div>
			</c:otherwise>
		</c:choose>
		<jsp:include page="/view/common/footer.jsp"></jsp:include>
		<script>
			window.onscroll = function() {
				console.log(5);
				if (document.body.scrollTop > 50
						|| document.documentElement.scrollTop > 50) {

					document.getElementById("header2").style.opacity = 0.8;

				} else {
					document.getElementById("header2").style.opacity = 1;

				}
			};
		</script>
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
			integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
			integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
			integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
			crossorigin="anonymous"></script>
</body>
</html>










