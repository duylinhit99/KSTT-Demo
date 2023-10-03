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
				<div id="login-box-1">MÃ XÁC THỰC OTP</div>
				<h6 class="mb-0">Mã xác thực đã được gửi qua SĐT</h6>
				<span style="text-align: center; display: block;"></span> <br>
				<h6>Nhập mã OTP:</h6>
				<div id="login-box-2">
					<form style="width: 90%;">
						<!-- file input data from user -->
						<div class="card-body p-0">
							<input type="textbox" name=""> <input type="textbox"
								name=""> <input type="textbox" name=""> <input
								type="textbox" name="">
						</div>
						<span></span> <br> <span>Bạn chưa nhận được mã?</span> <a
							id="otp1" href="">Gửi lại OTP</a> <input type="button"
							class="btn btn-warning" value="Tiếp tục"><br> <a
							class="forgot1" style="display: block;" href="blank"><i
							class="fa-solid fa-backward"></i> Quay về</a>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>