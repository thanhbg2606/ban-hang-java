
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String e = request.getParameter("e");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<!-- main CSS -->
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

				<div class="mt-5 container-fluid" style="min-height: 700px">
					<form
						action="<%=request.getContextPath() + "/ItemsMVC/admin/editUserServlet"%>"
						method="post">
						<div class="mb-3">
							<label class="form-label">ID</label> 
							<input readonly value="${customer.id}" name="id" class="form-control">
						</div>
						<div class="mb-3">
							<label class="form-label">ID FullName</label> <input type="text" readonly="readonly" value="${customer.fullName.idFullName}"
								class="form-control" name="idFullName">
						</div>
						<div class="mb-3">
							<label class="form-label">First Name</label> 
							<input value="${customer.fullName.firtName}" name="firstname" class="form-control">
						</div>
						<div class="mb-3">
							<label class="form-label">Last Name</label> <input value="${customer.fullName.lastName}"
								name="lastname" class="form-control">
						</div>
						<div class="mb-3">
							<label class="form-label">Age</label> <input name="age" value="${customer.age }"
								class="form-control">
						</div>
						<div class="mb-3">
							<label class="form-label">Gender</label> <input name="gender" value="${customer.gender }"
								class="form-control">
						</div>
						<div class="mb-3">
							<label class="form-label">ID Account</label> <input type="text" readonly="readonly" value="${customer.account.idAccount}"
								class="form-control" name="idAccount">
						</div>
						<div class="mb-3">
							<label class="form-label">Username</label> <input type="text" value="${customer.account.username}"
								class="form-control" name="username">
						</div>
						<div class="mb-3">
							<label class="form-label">Password</label> <input type="password" value="${customer.account.password}"
								name="password" class="form-control" >
						</div>
						<div>
							<label class="form-label">Phone</label> <input name="phone" value="${customer.phone }"
								class="form-control">
						</div>
						<div>
							<label class="form-label">Role</label> <input name="role" value="${customer.role }"
								class="form-control">
						</div>
							<div class="mb-3">
							<label class="form-label">ID Address</label> <input type="text" readonly="readonly" value="${customer.address.idAddress}"
								class="form-control" name="idAddress">
						</div>
						<div>
							<label class="form-label">Street</label> <input name="street" value="${customer.address.street }"
								class="form-control">
						</div>
						<div>
							<label class="form-label">District</label> <input name="district" value="${customer.address.district }"
								class="form-control">
						</div>
						<div>
							<label class="form-label">City</label> <input name="city" value="${customer.address.city }"
								class="form-control">
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary mt-3 text-center">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>