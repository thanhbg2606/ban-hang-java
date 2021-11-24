<%@page import="CustomerDAO.AddressDAOImpl"%>
<%@page import="CustomerDAO.AddressDAO"%>
<%@page import="CustomerDAO.FullNameDAO"%>
<%@page import="CustomerDAO.FullNameDAOImpl"%>
<%@page import="CustomerDAO.AccountDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order List</title>

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
<link rel="stylesheet" href='<c:url value="/assest/welcome2css.css"></c:url>'>
<link rel="stylesheet"
	href='<c:url value="/assest/BillDetail.css"></c:url>'>
</head>
<%
int stt = 0;
%>

<body>
	<jsp:include page="/view/common/header.jsp"></jsp:include>

	<div style="height: 50px"></div>
	<div class=" content mt-5 bill_list container" style="min-height: 500px;">
		<h1 class="text-center mt-5">Order history</h1>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">STT</th>
					<th scope="col">Name</th>
					<th scope="col">Date</th>
					<th scope="col">Price ToTal</th>
					<th scope="col">Street</th>
					<th scope="col">District</th>
					<th scope="col">City</th>
					<th scope="col">Fee</th>
					<th scope="col"></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${orderList}" var="order">
					<tr>
						<th scope="row"><%=++stt%></th>
						<td>${order.user.fullName.firtName} ${order.user.fullName.lastName}</td>
						<td>${order.getDate()}</td>
						<td>${order.getTotalPrice() }VNĐ</td>
						<td>${order.shipment.street }</td>
						<td>${order.shipment.district }</td>
						<td>${order.shipment.city }</td>
						<td>${order.shipment.fee }VND</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
	<!-- Footer -->
	<jsp:include page="/view/common/footer.jsp"></jsp:include>
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