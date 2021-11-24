<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href='<c:url value="/assest/login.css"></c:url>' rel='stylesheet'>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
</head>
<body>
	<%
	String error = request.getParameter("e");
	request.setAttribute("error", error);
	%>
	<div class="container-fluid  contain">
		<div class="row ">
			<div class="col-6 login_img">
				<img alt="login" src='<c:url value="/assest/login.png"></c:url>'>
			</div>
			<div class="col-6">
				<div class="input_sigin">

					<form action="<%=request.getContextPath() + "/loginServlet"%>"
						method="post">
						<label class="font-weight-bold">UserName</label> <input class="form-control "
							placeholder="Username" name="username"> <br> <label class="font-weight-bold">PassWord</label>
						<input type="password" class="form-control" placeholder="Password"
							name="password">
						<c:if test="${error != null }">
							<br>
							<p style="color: #FF6347; background-color: #FFFACD; width: 100%"
								class="text-center font-weight-bold">Tài Khoản hoặc mật khẩu không đúng
							</h2>
						</c:if>
						<div class="w-100 text-center mt-5">
							<button type="submit" class="btn btn-success w-100 font-weight-bold">Đăng Nhập</button>
						</div>
					</form>
				</div>
				<a href="<%=request.getContextPath() + "/view/user/register.jsp"%>"
					class="w-100 btn btn-outline-info mt-3 font-weight-bold">Đăng Ky</a>
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