
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
<title>Register</title>
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
	href='<c:url value="/assest/welcome.css"></c:url>'>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-info d-flex justify-content-between">
		<a class="navbar-brand" href="#"><i class="fa fa-globe-americas" style="font-size: 20px"></i>Đăng Ký</a>
		<ul class="navbar-nav ">
			<li class="nav-item active"><a style="color: white;font-size: 17px"
				class="nav-link btn btn-outline-warning px-5"
				href="<%=request.getContextPath() + "/view/user/Login.jsp"%>">Đăng Nhập</a>
			</li>
		</ul>

	</nav>
	<c:if test="<%=e != null%>">
		<h1 class="text-center" style="background-color:#FFFACD; color: #1E90FF">Đăng Ký Thành Công</h1>
	</c:if>
	<div class="mt-5 container">
		<form action="<%=request.getContextPath() + "/ClientSigin"%>"
			method="post">
			<div class="mb-3">
				<label class="form-label">First Name</label> <input name="firstname"
					class="form-control">
			</div>
			<div class="mb-3">
				<label class="form-label">Last Name</label> <input name="lastname"
					class="form-control">
			</div>
			<div class="mb-3">
				<label class="form-label">Age</label> <input name="age"
					class="form-control">
			</div>
			<div class="mb-3">
				<label class="form-label">Gender</label> <input name="gender"
					class="form-control">
			</div>
			<div class="mb-3">
				<label class="form-label">Username</label> <input type="username"
					class="form-control" name="username">
			</div>
			<div class="mb-3">
				<label class="form-label">Password</label> <input type="password"
					name="password" class="form-control" id="exampleInputPassword1">
			</div>
			<div>
				<label class="form-label">Phone</label> <input name="phone"
					class="form-control">
			</div>
			<div>
				<label class="form-label">Role</label> <input name="role"
					class="form-control">
			</div>
			<div>
				<label class="form-label">Street</label> <input name="street"
					class="form-control">
			</div>
			<div>
				<label class="form-label">District</label> <input name="district"
					class="form-control">
			</div>
			<div>
				<label class="form-label">City</label> <input name="city"
					class="form-control">
			</div>
			<div class="text-center">
				<button type="submit" class="btn btn-primary mt-3 mb-3 w-100 text-center">Submit</button>
			</div>
		</form>

	</div>
</body>
</html>