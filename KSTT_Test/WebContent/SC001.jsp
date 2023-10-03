<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome to login page</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" media="screen"
	href="bootstrap 5/bootstrap-5.3.0-alpha1-dist/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="icon/css/all.css">
</head>
<body>
	<%
	String error = request.getParameter("error");
	%>
	<%=("1".equals(error)) ? "Mời bạn đăng nhập!" : ""%>
	<%=("2".equals(error)) ? "Thông tin đăng nhập không đúng!" : ""%>
	<div id="main-page">
		<!-- include img and login -->
		<!-- left bar -->
		<div id="picture">
			<img src="img/health.png">
		</div>
		<!-- main page -->
		<div id="login">
			<div id="login-form" class="box1">
				<div id="login-box-1">ĐĂNG NHẬP</div>
				<div id="login-box-2">
					<form style="width: 90%;" action="login" method="post">
						<!-- file input data from user -->
						<label>Mã học sinh</label><br> <input id="email"
							class="form-control" type="text" name="MaHocSinh"
							placeholder="Nhập mã học sinh"><br> <label>Password</label><br>
						<input id="password" class="form-control" type="password"
							name="MatKhau" placeholder="Your password"><br> <input
							id="rm-pass" type="checkbox"> Remember me <a
							id="forgot-link" href="blank">Forgot Password?</a> <input
							id="btn-warning" type="submit" class="btn btn-warning"
							value="Login"><br> <span
							style="text-align: center; display: block;">or</span> <input
							id="fb" type="button" class="btn btn-primary"
							value="Login with Facebook"><i
							class="fa-brands fa-facebook-f"></i><br> <input
							type="button" class="btn btn-danger" value="Login with Google"><i
							class="fa-brands fa-google"></i>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>