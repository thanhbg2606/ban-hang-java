	


<div id="header2" style="position: fixed; z-index: 5; width: 100%;">
	<nav class="navbar navbar-expand-lg p-3  navbar-light bg-white"
		style="background-color: #0B0C11">
            <a class="navbar-brand" href="<%=request.getContextPath() + "/ItemsMVC/member/welcomeClientServlet"%>" style="cursor: pointer;"> <img src="/image/logo.png"
			class="card-img-top" ></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse d-flex justify-content-center"
			id="navbarSupportedContent">
			<form action="<%=request.getContextPath() + "/ItemsMVC/member/searchByName"%>"
				method="post" class="form-inline my-2 my-lg-0 w-50"
				style="margin-left: 200px">
				<input class="form-control mr-sm-2" style="width: 80%"
					name="nameProduct" type="search" placeholder="Search Book"
					aria-label="Search">
				<button class="btn btn-dark px-3 py-2 font-weight-bold my-2 my-sm-0" type="submit">Search</button>
			</form>
			<ul class="navbar-nav mr-auto ">

<!--				<li class="nav-item active"><a style="color: white;"
					class="nav-link btn btn-secondary ml-3 font-weight-bold"
					href="<%=request.getContextPath() + "/ItemsMVC/member/welcomeClientServlet"%>">Book List
				</a></li>-->

				
				<li class="nav-item"><a style="color: white;"
					class="nav-link btn btn-dark ml-3 font-weight-bold"
					href="<%=request.getContextPath() + "/ItemsMVC/member/CartController"%>"><i
						class="fa fa-cart-plus" style="font-size: 25px; color: white;"></i>
						<span class="w3-badge w3-red">${totalQuantity }</span> </a></li>
				<li class="nav-item ml-3"><a style="color: white;"
					class="nav-link btn btn-dark ml-3 font-weight-bold"
					href="<%=request.getContextPath() + "/ItemsMVC/member/BillController"%>">View Order</a></li>
                                <li class="nav-item"><a style="color: white;"
					class="nav-link btn btn-dark ml-3 font-weight-bold"
					href="<%=request.getContextPath() + "/logout"%>">Log Out</a></li>        
			</ul>

		</div>
	</nav>
</div>


