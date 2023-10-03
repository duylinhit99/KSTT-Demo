<%@page import="model.bean.form.CreateHocSinhForm"%>
<%@page import="model.bean.form.HocSinhForm"%>
<%@page import="model.bean.HocSinh"%>
<%@page import="model.bean.Lop"%>
<%@page import="model.bean.Truong"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm Học Sinh</title>
<link rel='stylesheet' type='text/css' media='screen'
	href='css/main.css'>
<link rel="stylesheet" type="text/css" media="screen"
	href="bootstrap 5/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="font-awesome/css/all.css">
<script src='main.js'></script>
</head>
<body>
	<%
	if (session.getAttribute("accountInfor") == null) {
		response.sendRedirect("SC001.jsp?error=1");
	} else {
	%>
	<!-- Web's header  -->
	<nav class="navbar sticky-top flex-md-nowrap p-0"
		style="background-color: #77D6B4;">
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
					<option><img src="img/icon1.jpg"></option>
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
								<img src="img/class.jpg"> <span>Quản lý lớp</span>
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
			<!-- Web's article -->
			<div class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
					<p class="title" style="font-size: 20px; font-weight: bold;border-bottom: solid black 2px;">Quản lý thông tin học sinh/Tạo mới học
						sinh</p>
				<!-- Web's insert button-->
				<!-- FORM INSERT STUDENT-->
				<div class="pt-5">
					<form action="CreateHocSinhServlet"
						class="row gy-2 gx-3 align-items-center">
						<div class="row mb-3">
							<label class="col-sm-2 col-form-label">Mã Học Sinh</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" style="width: 300px;"
									name="maHocSinh">
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-2 col-form-label">Mật Khẩu</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" style="width: 300px;"
									name="matKhau">
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-2 col-form-label">Tên Học Sinh</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" style="width: 300px;"
									name="tenHocSinh">
							</div>
						</div>

						<%
						ArrayList<Truong> dsTruong = (ArrayList<Truong>) request.getAttribute("dsTruong");
						%>
						<div class="row mb-3">
							<label class="col-sm-2 col-form-label">Tên Trường</label>
							<div class="col-sm-10">
								<select class="form-select" id="autoSizingSelect"
									style="width: 300px;" name="tenTruong">
									<option selected="selected"></option>
									<%
									for (Truong tr : dsTruong) {
									%>
									<option value="<%=tr.getTenTruong()%>"><%=tr.getTenTruong()%></option>
									<%
									}
									%>
								</select>
							</div>
						</div>
						<%
						ArrayList<Lop> dsLop = (ArrayList<Lop>) request.getAttribute("dsLop");
						%>
						<div class="row g-3">
							<div class="col-sm-6">
								<div class="row mb-3">
									<label class="col col-form-label">Mã Lớp</label>
									<div class="col-sm-8">
										<input type="text" class="form-control" style="width: 300px;"
									name="maLop">
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="row mb-3">
									<label class="col col-form-label">Tên Lớp</label>
									<div class="col-sm-8">
										<select class="form-select" id="autoSizingSelect"
											style="width: 200px;" name="tenLop">
											<option selected="selected"></option>
											<%
											for (Lop tenLop : dsLop) {
											%>
											<option value="<%=tenLop.getTenLop()%>"><%=tenLop.getTenLop()%></option>
											<%
											}
											%>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-2 col-form-label">Năm Học</label>
							<div class="col-sm-10">
								<select class="form-select" id="autoSizingSelect"
									style="width: 300px;" name="namHoc">
									<option selected="selected"></option>
									<%
									for (Lop namHoc : dsLop) {
									%>
									<option value="<%=namHoc.getNamHoc()%>"><%=namHoc.getNamHoc()%></option>
									<%
									}
									%>
								</select>
							</div>
						</div>
						<%
						ArrayList<CreateHocSinhForm> createHocSinhForm = (ArrayList<CreateHocSinhForm>) request.getAttribute("createHocSinhForm");
						%>
						<div class="row g-3">
							<div class="col-sm-6">
								<div class="row mb-3">
									<label class="col col-form-label">Giới Tính</label>
									<div class="col-sm-8">
										<select class="form-select" id="autoSizingSelect"
											style="width: 200px;" name="gioiTinh">
											<option selected="selected"></option>
											<%
											for (CreateHocSinhForm gioiTinh : createHocSinhForm) {
											%>
											<%
											if (gioiTinh.isGioiTinh() == true) {
											%>
											<option value="1">Nam</option>
											<%
											} else {
											%>
											<option value="0">Nữ</option>
											<%
											}
											}
											%>
										</select>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="row mb-3">
									<label class="col col-form-label">Tuổi</label>
									<div class="col-sm-8" style="margin-right: 10px;">
										<input type="text" class="form-control" style="width: 200px;"
											name="tuoi">
									</div>
								</div>
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-2 col-form-label">Họ Tên Phụ Huynh</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" style="width: 300px;"
									name="hotenPhuHuynh">
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-2 col-form-label">Số Điện Thoại</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" style="width: 300px;"
									name="soDienThoai">
							</div>
						</div>

						<div class="row mb-3">
							<label class="col-sm-2 col-form-label">Quận</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" style="width: 300px;"
									name="quan">
							</div>
						</div>
						<div class="row mb-3">
							<label class="col-sm-2 col-form-label">Phường</label>
							<div class="col-sm-10">
								<input type="text" class="form-control" style="width: 300px;"
									name="phuong">
							</div>
						</div>
						<div class="row g-3 mb-2">
							<div class="col">
								<button class="btn"
									style="width: 120px; background-color: #9CE5A8;" type="button">
									<img src="img/quayve.png"
										style="width: 20px; margin-bottom: 3px;"> Quay Về
								</button>

							</div>
							<div class="col">
								<button class="btn btn-danger" type="reset">
									<img src="img/reset.png"
										style="width: 20px; margin-bottom: 3px;"> Reset
								</button>
							</div>
							<div class="col">
								<button class="btn" type="submit"
									style="width: 100px; background-color: #93BBD2;">Hoàn
									Tất</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Web's pagination -->

	<!-- End FROM INSERT STUDENT-->
	<!-- Web's footer-->
	<div class="card-footer text-muted text-left"
		style="background-color: #77D6B4;">
		<span>COPYRIGHT © 2014 - BỆNH VIỆN TÂM THẦN THÀNH PHỐ ĐÀ NẴNG</span><br>
		<span>Địa chỉ : 193 Nguyễn Lương Bằng, P.Hòa Khánh Bắc, Q.Liên
			Chiểu, TP. Đà Nẵng, Việt Nam</span><br> <span>Số điện thoại:
			0236.3.842.326</span>
	</div>
	<!-- End of web's footer-->
	<script src="bootstrap 5/js/bootstrap.min.js" type="text/js"></script>
	<%
	}
	%>
</body>
</html>