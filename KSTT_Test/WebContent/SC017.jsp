<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chi tiêt học sinh</title>
<link rel='stylesheet' type='text/css' media='screen' href='css/SC017.css'>
<link rel="stylesheet" type="text/css" media="screen" href="bootstrap/css/bootstrap.css">
</head>
<body>
	<nav class="navbar sticky-top flex-md-nowrap p-0">
		<div class="row container-fluid">
			<div class="col-md-7">
				<img src="img/logo.jpg" style="width: 90px;"> <a
					id="company-name" class="navbar-brand col-sm-3 col-md-2" href="">
					BỆNH VIỆN TÂM THẦN THÀNH PHỐ ĐÀ NẴNG </a>
			</div>
			<div class="phonenumber col-md-5" style="width: 300px;">
				<div style="float: left; text-align: center;">
					<img src="img/icon2.jpg"
						style="width: 20px; margin-top: 10px; margin-left: 15px;">
					<div class="text" style="float: right">
						<span style="font-size: 12px;">Cấp cứu 24/7</span> <br> <span
							style="color: red; font-size: 12px;">0236.3842.326</span>
					</div>
				</div>
				<div style="border-left: solid; float: right; border-radius: 30px;">
					<img src="img/icon3.jpg"
						style="width: 20px; margin-top: 10px; margin-left: 15px;">
					<div class="text"
						style="text-align: center; float: right; margin: 0px 10px 0px 10px;">
						<span style="font-size: 12px;">Đường dây nóng</span> <br> <span
							style="color: red; font-size: 12px;">0236.3842.326</span>
					</div>
				</div>
			</div>
			<div class="col-md-2 ml-5">
				<a href="blank" style="font-size: 20px; color: black;"><img
					src="img/user.jpg" style="width: 50px;"></a> <select
					style="width: 25px; background-color: #77E39D;">
					<option></option>
					<option value="a" style="background-color: #FFFFFF">Đổi
						mật khẩu</option>
					<option value="b" style="background-color: #FFFFFF">Đăng
						xuất</option>
				</select>
			</div>
		</div>
	</nav>

	<!-- Web's main page -->
	<div class="container-fluid">
		<div class="row">
			<!-- Left bar -->
			<nav id="left-bar"
				class="left-bar-admin col-md-2 d-none d-md-block sidebar">
				<div class="sidebar-sticky">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link active" href="blank">
								<img src="img/homepage.jpg"> <span>Trang chủ</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active" href="blank">
								<img src="img/school.jpg"> <span>Quản lý trường</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active" href="blank">
								<img src="img/class.png"> <span>Quản lý lớp</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active"
							href="ShowDanhSachHocSinhServlet"> <img src="img/student.jpg">
								<span>Quản lý thông tin học sinh</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active" href="blank">
								<img src="img/question.jpg"> <span>Quản lý bộ
									câu hỏi đánh giá</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active"
							href="ShowDanhSachKetQuaDanhGiaServlet"> <img
								src="img/result.jpg"> <span>Quản lý kết quả
									đánh giá</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active" href="blank">
								<img src="img/test.jpg"> <span>Quản lý thực
									hiện bài tập can thiệp</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active" href="blank">
								<img src="img/report.jpg"> <span>Báo cáo thống
									kê</span>
						</a></li>
					</ul>
				</div>
			</nav>
			<!-- End of left bar -->
			<div class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
				<p class="title">Quản Lý Học Sinh/ Xem Chi Tiết</p>
				<div class="pt-5">
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Mã Học Sinh</label>
						<div class="col-sm-10">
							<input type="text" class="form-control"
								style="width: 300px; background-color: darkgrey;"
								name="maHocSinh">
						</div>
					</div>
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Mật Khẩu</label>
						<div class="col-sm-10">
							<input type="text" class="form-control"
								style="width: 300px; background-color: darkgrey;" name="matKhau">
						</div>
					</div>
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Tên Học Sinh</label>
						<div class="col-sm-10">
							<input type="text" class="form-control"
								style="width: 300px; background-color: darkgrey;"
								name="tenHocSinh">
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Tên Trường</label>
						<div class="col-sm-10">
							<input type="text" class="form-control"
								style="width: 200px; background-color: darkgrey;"
								name="tenTruong">
						</div>
					</div>

					<div class="row g-3">
						<div class="col-sm-6">
							<div class="row mb-3">
								<label class="col col-form-label">Mã Lớp</label>
								<div class="col-sm-8">
									<input type="text" class="form-control"
										style="width: 300px; background-color: darkgrey;" name="maLop">
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="row mb-3">
								<label class="col col-form-label">Tên Lớp</label>
								<div class="col-sm-8">
									<input type="text" class="form-control"
										style="width: 200px; background-color: darkgrey;"
										name="tenlop">
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Năm Học</label>
						<div class="col-sm-10">
							<input type="text" class="form-control"
								style="width: 200px; background-color: darkgrey;" name="namHoc">
						</div>
					</div>

					<div class="row g-3">
						<div class="col-sm-6">
							<div class="row mb-3">
								<label class="col col-form-label">Giới Tính</label>
								<div class="col-sm-8">
									<input type="text" class="form-control"
										style="width: 200px; background-color: darkgrey;"
										name="gioiTinh">
								</div>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="row mb-3">
								<label class="col col-form-label">Tuổi</label>
								<div class="col-sm-8" style="margin-right: 10px;">
									<input type="text" class="form-control"
										style="width: 200px; background-color: darkgrey;" name="tuoi">
								</div>
							</div>
						</div>
					</div>
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Họ Tên Phụ Huynh</label>
						<div class="col-sm-10">
							<input type="text" class="form-control"
								style="width: 300px; background-color: darkgrey;"
								name="hotenPhuHuynh">
						</div>
					</div>
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Số Điện Thoại</label>
						<div class="col-sm-10">
							<input type="text" class="form-control"
								style="width: 300px; background-color: darkgrey;"
								name="soDienThoai">
						</div>
					</div>

					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Quận</label>
						<div class="col-sm-10">
							<input type="text" class="form-control"
								style="width: 300px; background-color: darkgrey;" name="quan">
						</div>
					</div>
					<div class="row mb-3">
						<label class="col-sm-2 col-form-label">Phường</label>
						<div class="col-sm-10">
							<input type="text" class="form-control"
								style="width: 300px; background-color: darkgrey;" name="phuong">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Web's footer-->
	<div class="card-footer text-muted text-left"
		style="background-color: #77D6B4;">
		<span>COPYRIGHT © 2014 - BỆNH VIỆN TÂM THẦN THÀNH PHỐ ĐÀ NẴNG</span><br>
		<span>Địa chỉ : 193 Nguyễn Lương Bằng, P.Hòa Khánh Bắc, Q.Liên
			Chiểu, TP. Đà Nẵng, Việt Nam</span><br> <span>Số điện thoại:
			0236.3.842.326</span>
	</div>
	<script src="bootstrap/js/bootstrap.js"></script>
</body>
</html>