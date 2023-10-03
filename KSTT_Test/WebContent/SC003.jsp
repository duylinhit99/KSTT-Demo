<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Lấy lại mật khẩu</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="icon/css/all.css">
</head>
<body>
	<%
	if (session.getAttribute("accountInfor") == null) {
		response.sendRedirect("SC001.jsp?error=1");
	}
	%>
	<div id="main-page">
		<!-- include img and login -->
		<!-- left bar -->
		<div id="picture">
			<img src="img/health.png">
		</div>
		<!-- main page -->
		<div id="login">
			<div id="forgot-form">
				<div id="login-box-1">QUÊN MẬT KHẨU?</div>
				<h6 style="text-align: center;">Nhập số điện thoại để
					nhận mã xác thực</h6>
				<br>
				<div id="login-box-2">
					<form style="width: 90%;">
						<!-- file input data from user -->
						<i class="fa-solid fa-mobile"></i> <input id="phone"
							class="form-control" type="email"
							placeholder="Nhập số điện thoại"><br> <input
							type="button" class="btn btn-warning" value="Tiếp tục"><br>
						<br> <a class="forgot1" style="display: block;" href="blank"><i
							class="fa-solid fa-backward"></i> Quay về</a>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>