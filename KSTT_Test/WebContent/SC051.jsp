<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Trang quản lý thông tin dành cho học sinh</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="icon/css/all.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap"
	rel="stylesheet">
</head>
<body>
	<%
	if (session.getAttribute("accountInfor") == null) {
		response.sendRedirect("SC001.jsp?error=1");
	}
	%>
	<nav class="navbar sticky-top flex-md-nowrap p-0"
		style="background-color: #108FCF;">
		<div class="row container-fluid">
			<div class="col-md-7">
				<img src="img/logo.jpg"> <a id="company-name"
					class="navbar-brand col-sm-3 col-md-2" href="">BỆNH BIỆN TÂM
					THẦN TP ĐÀ NẴNG</a>
			</div>
			<div class="phonenumber col-md-5" style="width: 300px;">
				<div style="float: left; text-align: center;">
					<img src="img/icon2.jpg">
					<div class="text" style="float: right;">
						<span style="font-size: 12px;">Cấp cứu 24/7</span><br> <span
							style="color: red; font-size: 12px;">0236.3842.326</span>
					</div>
				</div>
				<div style="border-left: solid; float: right; border-radius: 30px;">
					<img style="margin-left: 12px" src="img/icon3.jpg">
					<div class="text"
						style="text-align: center; float: right; margin: 0px 10px 0px 10px;">
						<span style="font-size: 12px;">Đường dây nóng</span><br> <span
							style="color: red; font-size: 12px;">0236.3842.326</span>
					</div>
				</div>
			</div>
			<div class="col-md-2 ml-5">
				<a href="blank"><img src="img/user.jpg"></a> <select
					style="width: 25px; background-color: #77D6B4;">
					<option><img src="img/icon1.jpg"></a></option>
					<option value="a" style="background-color: #FFFFFF">Đổi
						mật khẩu</option>
					<option value="b" style="background-color: #FFFFFF">Đăng
						xuất</option>
				</select>
			</div>
		</div>
	</nav>
	<!-- End of web's header -->
	<!-- Web's main page -->
	<div class="container-fluid">
		<div class="row">
			<!-- Left bar -->
			<nav id="left-bar"
				class="left-bar-student col-md-2 d-none d-md-block sidebar">
				<div class="sidebar-sticky">
					<ul class="nav flex-column">
						<li class="nav-item nav-item-student"><a
							class="nav-link active" href="blank"> <img
								src="img/homepage.jpg"> <span>Trang chủ</span>
						</a></li>
						<li class="nav-item nav-item-student"><a
							class="nav-link active" href="ShowDanhSachHocSinhServlet"> <img
								src="img/student.jpg"> <span>Thông tin học sinh</span>
						</a></li>
						<li class="nav-item nav-item-student"><a
							class="nav-link active" href="blank"> <img
								src="img/question.jpg"> <span>Bộ câu hỏi đánh
									giá</span>
						</a></li>
						<li class="nav-item nav-item-student"><a
							class="nav-link active" href="blank"> <img
								src="img/result.jpg"> <span>Lịch sử đánh giá</span>
						</a></li>
					</ul>
				</div>
			</nav>
			<!-- End of left bar -->
			<!-- Web's article -->
			<div class="welcome col-md-9 ml-sm-auto col-lg-10">
				<div class="welcome-main">
					<img src="img/welcome.png"> <span>Chào mừng bạn
						đến với phần mềm SESM Đà Nẵng</span>
				</div>
				<div class="welcome-rightbar">
					<img src="img/health2.png">
				</div>
			</div>
			<!-- End of web's article -->
		</div>
	</div>
	<div class="card-footer text-muted text-left"
		style="background-color: #108FCF;">
		<span>COPYRIGHT © 2014 - BỆNH VIỆN TÂM THẦN THÀNH PHỐ ĐÀ NẴNG</span><br>
		<span>Địa chỉ : 193 Nguyễn Lương Bằng, P.Hòa Khánh Bắc, Q.Liên
			Chiểu, TP. Đà Nẵng, Việt Nam</span><br> <span>Số điện thoại:
			0236.3.842.326</span>
	</div>

</body>
</html>