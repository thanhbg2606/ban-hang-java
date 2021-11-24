
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
<title>Add User</title>
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

	<c:if test="<%=e != null%>">
		<h1 class="text-center" style="background-color:  #FFFACD; color: #1E90FF">Thêm Sản Phẩm Thành Công</h1>
	</c:if>
	<div class="container-fluid">
		<div class="row">
			<div class="col-2">
				<!-- NAV -->
				<jsp:include page="/view/common/headerAdmin.jsp"></jsp:include>
			</div>
			<div class="col-10">
				<div class="mt-5 container-fluid" style="min-height: 700px">
					<form
						action="<%=request.getContextPath() + "/ItemsMVC/admin/addProductServlet"%>"
						method="post">

						<div class="mb-3">
							<label class="form-label font-weight-bold">Name</label> <input name="name"
								class="form-control">
						</div>
						<div class="mb-3">
							<label class="form-label font-weight-bold">Description</label> <input
								" name="description" class="form-control">
						</div>
						<div class="mb-3">
							<label class="form-label font-weight-bold">Price</label> <input name="price"
								class="form-control">
						</div>
						<div>
							<label class="form-label font-weight-bold">Image</label> <input name="image"
								class="form-control">
						</div>
						<div>
							<label class="form-label font-weight-bold">Quantity</label> <input name="quantity"
								placeholder="${productUpdate.getQuantity()}"
								class="form-control">
						</div>
						<div>
							<label class="form-label font-weight-bold">Category Name</label> <input
								name="category" class="form-control">
						</div>
						<div>
							<label class="form-label font-weight-bold">Publisher Name</label> <input
								name="namePublisher" class="form-control">
						</div>
						<div>
							<label class="form-label font-weight-bold">Publisher Location</label> <input
								name="locationPublisher" class="form-control">
						</div>
						<div>
							<label class="form-label font-weight-bold">Author Name</label> <input
								name="nameAuthor" class="form-control">
						</div>
						<div>
							<label class="form-label font-weight-bold">Author Age</label> <input
								name="ageAuthor" class="form-control">
						</div>
						<div class="text-center">
							<button type="submit"
								class="btn btn-primary mt-5 mb-3 w-100 font-weight-bold text-center">Submit</button>
						</div>
				</div>
				</form>
			</div>
		</div>
	</div>
	</div>
</body>
</html>