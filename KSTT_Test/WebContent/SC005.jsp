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
				<div id="login-box-1">THAY ĐỔI MẬT KHẨU</div>
				<div id="login-box-2">
					<form style="width: 90%;">
						<!-- file input data from user -->
						<label>Nhập mật khẩu mới</label><br> <input id="email"
							class="form-control" type="text"> <label>Nhập
							lại mật khẩu mới</label><br> <input id="password"
							class="form-control" type="text"><br> <input
							id="btn-warning" type="button" class="btn btn-danger"
							value="Xác nhận"><br>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>