
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

	<c:if test="<%=e != null%>">
		<h1 class="text-center" style="background-color: blue; color: yellow">Successfully</h1>
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
						action="<%=request.getContextPath() + "/ItemsMVC/admin/editProductServlet"%>"
						method="post">
							<div class="mb-3">
								<label class="form-label">ID</label>
								 <input readonly value="${productUpdate.getId()}" name="id2" class="form-control">
							</div>
							<div class="mb-3">
							<label class="form-label">Name</label>
							 <input   value="${productUpdate.getName() }" name="name" class="form-control">
							</div>
						<div class="mb-3">
							<label  class="form-label">Description</label>
							<input  value="${productUpdate.getDescription() }" name="description" class="form-control" >
						</div>
						<div class="mb-3">
							<label  class="form-label">Price</label>
							<input value="${productUpdate.getPrice() }" name="price"  class="form-control">
						</div>
						<div>
							<label class="form-label">Image</label>
							 <input readonly value="${productUpdate.getImage() }" name="image" class="form-control">
						</div>
						<div>
							<label class="form-label">Quantity</label> 
							<input name="quantity" value="${productUpdate.getQuantity() }" class="form-control">
						</div>
						<div>
							<label class="form-label">Category Name</label> 
							<input readonly  value="${productUpdate.getCategory().getId() }" name="category" class="form-control">
						</div>
							<div>
							<label class="form-label">ID Publisher</label> 
							<input readonly  value="${productUpdate.publisher.idPublisher }" name="idPublisher" class="form-control">
						</div>
						<div>
							<label class="form-label">Publisher Name</label> 
							<input   value="${productUpdate.publisher.name }" name="namePublisher" class="form-control">
						</div>
						<div>
							<label class="form-label">Publisher Location</label> 
							<input   value="${productUpdate.publisher.location }" name="locationPublisher" class="form-control">
						</div>
						<div>
							<label class="form-label">ID Author</label> 
							<input readonly="readonly"  value="${productUpdate.author.idAuthor }" name="idAuthor" class="form-control">
						</div>
						<div>
							<label class="form-label">Author Name</label> 
							<input   value="${productUpdate.author.name }" name="nameAuthor" class="form-control">
						</div>
						<div>
							<label class="form-label">Author Name</label> 
							<input   value="${productUpdate.author.age }" name="ageAuthor" class="form-control">
						</div>
						<div class="text-center">
							<button type="submit"
								class="btn btn-primary mt-3 text-center mb-2 pr-4 pl-4">Submit</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>