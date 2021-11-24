<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View detail Product</title>
<link href='<c:url value="/assest/login.css"></c:url>' rel='stylesheet'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<!-- MAIN CSS -->
<link rel="stylesheet"
	href='<c:url value="/assest/welcome.css"></c:url>'>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-2">
				<!-- NAV -->
				<jsp:include page="/view/common/headerAdmin.jsp"></jsp:include>
			</div>
			<div class="col-10">
				<div class="content mt-5" style="min-height: 700px">
					<form class="text-center"
						action="<%=request.getContextPath() + "/ItemsMVC/admin/searchProduct"%>">
						<div class="input-group mb-3">
							<input name="nameP" type="text" class="form-control"
								placeholder="Name">
							<div class="input-group-append">
								<button class="btn btn-info font-weight-bold  py-1 px-5" type="submit">Search</button>
							</div>
						</div>
					</form>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">ID</th>
								<th scope="col">Name</th>
								<th scope="col">Price</th>
								<th scope="col">Description</th>
								<th scope="col">Img</th>
								<th scope="col">Category</th>
								<th scope="col">Publisher</th>
								<th scope="col">Author</th>
								
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${bookList }" var="book">
								<tr>

									<td id="id">${book.getId() }</td>
									<td id="name">${book.getName() }</td>
									<td id="price">${book.getPrice() }</td>
									<td id="description">${book.getDescription() }</td>
									<td id="img"><img style="width: 100px; height: 100px"
										src='<c:url value="${book.getImage() }"></c:url>'
										alt="hinhAnh"></td>
									<td id="categoryName">${book.getCategory().getCategoryName() }</td>
									<td id="publisherName">${book.publisher.name }</td>
									<td id="authorName">${book.author.name }</td>
									<td class="d-flex"><a
										href="/ItemsMVC/admin/deleteProduct?id=${book.getId()}"
										class="btn btn-danger mr-2">Delete</a> <a type="button"
										href="/ItemsMVC/admin/editProductServlet?id=${book.getId()}"
										class="btn btn-primary">Update</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

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