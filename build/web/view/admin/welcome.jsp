
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Admin</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<!-- CSS main -->
<link rel="stylesheet"
	href='<c:url value="/assest/welcome.css"></c:url>'>
</head>
<body>

	<!-- NAV -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-2">
				<jsp:include page="/view/common/headerAdmin.jsp"></jsp:include>
			</div>
			<div class="col-10">
				<h1 class="text-center">Welcome Admin</h1>
				<div class="mt-5" style="min-height: 700px">
					<form  class="text-center"
						action="<%=request.getContextPath() + "/ItemsMVC/admin/searchUser"%>">
						<div class="input-group ">
							<input name="nameU" type="text" class="form-control"
								placeholder="Search Name">
							<div class="input-group-append">
								<button class="btn btn-info font-weight-bold  py-1 px-5" type="submit">Search</button>
							</div>
						</div>
					</form>
					<table class="table mt-2 text-center mt-3">
						<thead>
							<tr>
								<th scope="col">ID</th>
								<th scope="col">FirstName</th>
								<th scope="col">LastName</th>
								<th scope="col">UserName</th>
								<th scope="col">Street</th>
								<th scope="col">District</th>
								<th scope="col">City</th>
								<th scope="col">Age</th>
								<th scope="col">Phone</th>
								<th scope="col">Gender</th>
								<td scope="col"></td>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${listUser}" var="customer">
								<tr>
									<th scope="row">${customer.id}</th>
									<td scope="">${customer.fullName.firtName}</td>
									<td scope="">${customer.fullName.lastName}</td>
									<td scope="">${customer.account.username}</td>
									<td scope="">${customer.address.street}</td>
									<td scope="">${customer.address.district}</td>
									<td scope="">${customer.address.city}</td>
									<td scope="">${customer.age}</td>
									<td scope="">${customer.phone }</td>
									<td scope="">${customer.gender}</td>
									<td>
										<a class="btn btn-primary"
										href="/ItemsMVC/admin/editUserServlet?id=${customer.id}">Edit</a>
										<a class="btn btn-danger"
										href="/ItemsMVC/admin/deletelUserServlet?id=${customer.id}">Delete</a>
									</td>
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