<%@page import="Book.CartBook"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Cart</title>
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
	<link rel="stylesheet"
	href='<c:url value="/assest/shipment.css"></c:url>'>
</head>
<% int id=0; %>
<body>
	<jsp:include page="/view/common/header.jsp"></jsp:include>
	<div style="height: 50px"></div>
	<h2 class="text-center mt-5">Giỏ Hàng</h2>
	<div class="cartList mt-2" style="min-height: 500px;">
		<table class="table">
			<thead>
				<tr>
					<th scope="col">STT</th>
					<th scope="col">Name</th>
					<th scope="col">Quantity</th>
					<th scope="col">Price</th>
					<th scope="col">Image</th>
					<th scope="col">Total</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${cartBookList }" var="cartBook">
					<tr>
						<td scope="row"><%= id++ %>
						</th>
						<td scope="row">${cartBook.book.name}
						</th>
						<td>${cartBook.quantity}</td>
						<td>${cartBook.price}VNĐ</td>
						<td style="width: 12%"><img style="width: 100%"
							alt="product image"
							src='<c:url value="${cartBook.book.image}"></c:url>'>
						</td>
						<td scope="row">${cartBook.quantity * cartBook.price}
							VĐN</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
		<form action="<%=request.getContextPath() + "/ItemsMVC/member/AddToOrder"%>" method="post">
	    <section class="Contact" id="contact">
        <h1 style="font-weight: bold;" class="text-center">Shipment Delivery</h1>
        <div class="Contact_content ">
            <input type="text" name="street" id="" placeholder="Street">
            <input type="text" name="district" id="" placeholder="District">
            <input type="text" name="city" id="" placeholder="City">
            <textarea name="" id="" placeholder="Messenger"></textarea>
           	<button type="submit">Submit</button>
        </div>
   		 </section>
   		 </form>
	<!-- Footer -->
	<jsp:include page="/view/common/footer.jsp"></jsp:include>
	<script>
		window.onscroll = function() {

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










