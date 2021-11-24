<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark"
	style="flex-flow: column; height: 100%">
	<div style="min-width: 80px">
		<img alt="avt" style="width: 100%; border-radius: 60%"
			src='<c:url value="/image/anh3.jpg"></c:url>'>
	</div>
	<div class="mt-5">
		<ul class="navbar-nav " style="flex-flow: column;">
			<li class="nav-item "><a class="nav-link font-weight-bold"
				href="<%=request.getContextPath() + "/admin/welcomeAdminServlet"%>"><i
					class="fa fa-eye"></i> Customer List</a></li>
			<li class="nav-item "><a class="nav-link font-weight-bold"
				href="<%=request.getContextPath() + "/admin/viewDetailProduct"%>"><i
					class="fa fa-eye"></i> Product List </a></li>
			<li class="nav-item "><a class="nav-link font-weight-bold"
				href="<%=request.getContextPath() + "/admin/billList"%>">
					<i class="fa fa-plus-square"></i> Order List
			</a></li>
			<li class="nav-item "><a class="nav-link font-weight-bold"
				href="<%=request.getContextPath() + "/view/admin/AddUser.jsp"%>">
					<i class="fa fa-plus-square"></i> Add Customer
			</a></li>
			<li class="nav-item "><a class="nav-link font-weight-bold"
				href="<%=request.getContextPath() + "/admin/addProductServlet"%>">
					<i class="fa fa-plus-square"></i> Add Book
			</a></li>
			<li class="nav-item"><a class="nav-link font-weight-bold"
				href="<%=request.getContextPath() + "/admin/logoutAdmin"%>"> <i
					class="fa fa-archway"></i> Logout
			</a></li>
		</ul>
	</div>
</nav>

