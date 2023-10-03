<%@page import="model.bean.Truong"%>
<%@page import="model.bean.Lop"%>
<%@page import="model.bean.form.HocSinhForm"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản Lý Học Sinh</title>
<link rel='stylesheet' type='text/css' media='screen'
	href='css/main.css'>
<link rel="stylesheet" type="text/css" media="screen"
	href="bootstrap 5/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">

</head>
<body>
	<%
	if (session.getAttribute("accountInfor") == null) {
		response.sendRedirect("SC001.jsp?error=1");
	} else {
	%>
	<!-- Web's header  -->
	<nav class="navbar sticky-top flex-md-nowrap p-0"
		style="background-color: #77E39D">
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
			<!-- ĐANG CODE BACKEND -->
			<div class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
				<p class="title" style="font-size: 20px; font-weight: bold;border-bottom: solid black 2px;">Quản
					Lý Thông Tin Học Sinh</p>
				<!-- Web's insert button-->
				<div>
					<a class="insert-button btn btn-danger col-md-auto mr-4"
						style="color: black; background-color: #E87A7A;"
						href="ShowCreateHocSinhServlet"><b>Tạo mới học sinh</b><img
						style="width: 20px;" src="img/icon-plus.jpg"> </a> <a
						class="insert-button btn btn-warning col-md-auto mr-4"
						style="color: black; background-color: #F9C53A;" href="blank">
						<b>Tạo mới học sinh theo file</b> <img style="width: 20px;"
						src="img/icon-plus.jpg">
					</a> <a class="insert-button btn btn-info col-md-auto mr-4"
						style="color: black; background-color: #A6BEED;" href="blank">
						Hướng dẫn import file </a>
				</div>
				<div class="article" style="display: block">
					<%
					String searchMaHocSinh = session.getAttribute("searchMaHocSinh") != null
							? (String) session.getAttribute("searchMaHocSinh")
							: "";

					String searchTenHocSinh = session.getAttribute("searchTenHocSinh") != null
							? (String) session.getAttribute("searchTenHocSinh")
							: "";

					String searchTenTruong = session.getAttribute("searchTenTruong") != null
							? (String) session.getAttribute("searchTenTruong")
							: "";

					String searchMaLop = session.getAttribute("searchMaLop") != null ? (String) session.getAttribute("searchMaLop") : "";

					String searchTenLop = session.getAttribute("searchTenLop") != null ? (String) session.getAttribute("searchTenLop") : "";

					String searchNamHoc = session.getAttribute("searchNamHoc") != null ? (String) session.getAttribute("searchNamHoc") : "";

					String functionPrefix = "".equals(searchMaHocSinh) ? "ShowDanhSachHocSinh" : "SearchHocSinh";

					functionPrefix = "".equals(searchTenHocSinh) ? "ShowDanhSachHocSinh" : "SearchHocSinh";

					functionPrefix = "".equals(searchTenTruong) ? "ShowDanhSachHocSinh" : "SearchHocSinh";

					functionPrefix = "".equals(searchMaLop) ? "ShowDanhSachHocSinh" : "SearchHocSinh";

					functionPrefix = "".equals(searchTenLop) ? "ShowDanhSachHocSinh" : "SearchHocSinh";

					functionPrefix = "".equals(searchNamHoc) ? "ShowDanhSachHocSinh" : "SearchHocSinh";
					%>
					<!-- SEARCH HOC SINH -->
					<div>
						<form action="SearchHocSinhServlet" method="post">
							<div class="row">
								<div class="col">
									<label class="row col-form-label">Mã Học Sinh</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" style="width: 100px;"
											name="searchMaHocSinh" value="<%=searchMaHocSinh%>">
									</div>
								</div>
								<div class="col">
									<label class="row col-form-label">Tên Học Sinh</label>
									<div class="col-sm-10">
										<input type="text" class="form-control" style="width: 100px;"
											name="searchTenHocSinh" value="<%=searchTenHocSinh%>">
									</div>
								</div>
								<%
								ArrayList<Truong> dsTruong = (ArrayList<Truong>) request.getAttribute("dsTruong");
								%>
								<div class="col">
									<label class="row col-form-label">Tên Trường</label>
									<div class="col-sm-10">
										<select class="form-select" id="autoSizingSelect"
											style="width: 200px;" name="searchTenTruong">
											<option selected="selected"></option>
											<%
											for (Truong tr : dsTruong) {
											%>
											<option><%=tr.getTenTruong()%></option>
											<%
											}
											%>
										</select>
									</div>
								</div>
								<%
								ArrayList<Lop> dsLop = (ArrayList<Lop>) request.getAttribute("dsLop");
								%>
								<div class="col">
									<label class="row col-form-label">Tên Lớp</label>
									<div class="col-sm-10">
										<select class="form-select" id="autoSizingSelect"
											style="width: 100px;" name="searchTenLop">
											<option selected="selected"></option>
											<%
											for (Lop lop : dsLop) {
											%>
											<option><%=lop.getTenLop()%></option>
											<%
											}
											%>
										</select>
									</div>
								</div>

								<div class="col">
									<label class="row col-form-label">Năm Học</label>
									<div class="col-sm-10">
										<select class="form-select" id="autoSizingSelect"
											style="width: 100px; font-size: 15px;" name="searchNamHoc">
											<option selected="selected"></option>
											<%
											for (Lop nh : dsLop) {
											%>
											<option><%=nh.getNamHoc()%></option>
											<%
											}
											%>
										</select>
									</div>
								</div>
								<div class="col" style="margin-top: 33px;">
									<input type="submit" class="btn btn-primary"
										style="background-color: #93BBD2; width: 130px;"
										value="Tìm Kiếm">
								</div>
							</div>
						</form>
						<!-- Start Table -->

						<%
						ArrayList<HocSinhForm> dsHocSinhForm = (ArrayList<HocSinhForm>) request.getAttribute("dsHocSinhForm");
						%>

						<%
						String error = request.getParameter("message");
						%>
						<%=("3".equals(error)) ? "Đã Xóa Thành Công" : ""%>

						<%
						int currentPageNumber = (Integer) request.getAttribute("currentPageNumber");
						int totalPageNumber = (Integer) request.getAttribute("totalPageNumber");
						int[] pageNumberList = new int[7];
						int pageQuantity = 0;
						%>
						<table class="student-table table table-bordered table-hover"
							style="margin-top: 10px; border: black;">
							<tr style="text-align: center; font-weight: bold;">
								<th>STT</th>
								<th>Mã Học Sinh
								<th>Tên Học Sinh</th>
								<th>Tên Trường</th>
								<th>Mã Lớp</th>
								<th>Tên Lớp</th>
								<th>Năm Học</th>
								<th>Hành Động</th>
							</tr>
							<%
							int i = (currentPageNumber - 1) * 10 + 1; // 20 là số dòng trên 1 trang
							%>
							<%
							for (HocSinhForm hs : dsHocSinhForm) {
							%>
							<tr>
								<td><%=i++%></td>
								<td><%=hs.getMaHocSinh()%></td>
								<td><%=hs.getTenHocSinh()%></td>
								<td><%=hs.getTenTruong()%></td>
								<td><%=hs.getMaLop()%></td>
								<td><%=hs.getTenLop()%></td>
								<td><%=hs.getNamHoc()%></td>
								<td>
								<input style="background-color: #E87A7A; width: 70px;"
									class="btn-info" type="button" onclick="location.href='ShowChiTietHocSinhServlet'" value="Chi tiết" />
								<input
									style="background-color: #D0E6A5; width: 50px;"
									class="btn-info" type="button" onclick="location.href='ShowEditHocSinhServlet'" value="Sửa" />
								<input
									style="background-color: #A6BEED; width: 50px; border-radius: 10px;"
									class="btn-info" type="button"
									onclick="deleteHocSinh('<%=hs.getMaHocSinh()%>')" value="Xóa" />
							</tr>
							<%
							}
							%>
						</table>
					</div>
					<!-- END TABLE -->
					<div class="backbutton">
						<a class="btn" href="QuayVeTrangChuServlet"><img
							src="img/quayve.png" style="width: 15px; margin-right: 5px;">
							Quay về</a>
					</div>
					<!-- Web's pagination -->
					<div class="web-pagination">
						<nav aria-label="Page navigation example">
							<ul class="pagination">
								<%
								if (totalPageNumber <= 7) {
									for (int j = 0; j < totalPageNumber; j++) {
										pageNumberList[j] = j + 1;
										pageQuantity++;
									}
								%>

								<%
								if (currentPageNumber > 1) {
								%>
								<li><a class="page-link"
									href='<%=functionPrefix%>Servlet?page=<%=currentPageNumber - 1%>'>Previous</a>
								</li>
								<%
								}
								%>

								<%
								for (int k = 0; k < pageQuantity; k++) {
									if (pageNumberList[k] == currentPageNumber) {
								%>
								<li class="page-item"><a class="page-link"
									href="<%=functionPrefix%>Servlet?page=<%=pageNumberList[k]%>">
										<b><%=pageNumberList[k]%></b>
								</a></li>
								<%
								} else {
								%>
								<li class="page-item"><a class="page-link"
									href="<%=functionPrefix%>Servlet?page=<%=pageNumberList[k]%>">
										<%=pageNumberList[k]%>
								</a></li>
								<%
								}
								}
								%>
								<%
								if (currentPageNumber < totalPageNumber) {
								%>
								<li><a class="page-link"
									href='<%=functionPrefix%>Servlet?page=<%=currentPageNumber + 1%>'>Next</a>
								</li>
								<%
								}
								%>
								<%
								}
								%>

								<%
								if (totalPageNumber > 7 && currentPageNumber < 5) {
									for (int j = 0; j < 7; j++) {
										pageNumberList[j] = j + 1;
										pageQuantity++;
									}
								%>
								<%
								if (currentPageNumber > 1) {
								%>
								<li><a class="page-link"
									href='<%=functionPrefix%>Servlet?page=<%=currentPageNumber - 1%>'>Previous</a>
								</li>
								<%
								}
								%>

								<%
								for (int k = 0; k < pageQuantity; k++) {
									if (pageNumberList[k] == currentPageNumber) {
								%>
								<li class="page-item"><a class="page-link"
									href="<%=functionPrefix%>Servlet?page=<%=pageNumberList[k]%>">
										<b><%=pageNumberList[k]%></b>
								</a></li>
								<%
								} else if (pageNumberList[k] == totalPageNumber - 1) {
								%>
								<li><a class="page-link" href="<%=functionPrefix%>Servlet">...</a>
								</li>
								<%
								} else {
								%>
								<li class="page-item"><a class="page-link"
									href="<%=functionPrefix%>Servlet?page=<%=pageNumberList[k]%>">
										<%=pageNumberList[k]%>
								</a></li>
								<%
								}
								}
								%>
								<%
								if (currentPageNumber < totalPageNumber) {
								%>
								<li><a class="page-link"
									href='<%=functionPrefix%>Servlet?page=<%=currentPageNumber + 1%>'>Next</a>
								</li>
								<%
								}
								%>
								<%
								}
								%>

								<%
								if (totalPageNumber > 7 && currentPageNumber >= 5) {
									for (int j = 0; j < 7; j++) {
										pageNumberList[j] = j + 1;
										pageQuantity++;
									}
								%>
								<%
								if (currentPageNumber > 1) {
								%>
								<li><a class="page-link"
									href='<%=functionPrefix%>Servlet?page=<%=currentPageNumber - 1%>'>Previous</a>
								</li>
								<%
								}
								%>
								<%
								for (int k = 0; k < pageQuantity; k++) {
									if (pageNumberList[k] == pageNumberList[0]) {
								%>

								<li><a class="page-link"
									href="<%=functionPrefix%>Servlet?page=<%=pageNumberList[k]%>">1</a>
								</li>
								<%
								} else if (pageNumberList[k] == pageNumberList[1]) {
								%>
								<li><a class="page-link"
									href="<%=functionPrefix%>Servlet?page=<%=pageNumberList[k]%>">2</a>
								</li>
								<%
								} else if (pageNumberList[k] == pageNumberList[2]) {
								%>
								<li><a class="page-link">...</a></li>
								<%
								} else if (pageNumberList[k] == pageNumberList[3]) {
								%>
								<li><a class="page-link"
									href="<%=functionPrefix%>Servlet?page=<%=currentPageNumber - 1%>"><%=currentPageNumber - 1%></a></li>
								<%
								} else if (pageNumberList[k] == pageNumberList[4]) {
								%>
								<li><a class="page-link"
									href="<%=functionPrefix%>Servlet?page=<%=currentPageNumber%>"><b><%=currentPageNumber%></b></a></li>
								<%
								} else if (pageNumberList[k] == pageNumberList[5]) {
								%>
								<li><a class="page-link"
									href="<%=functionPrefix%>Servlet?page=<%=currentPageNumber + 1%>"><%=currentPageNumber + 1%></a></li>
								<%
								} else if (pageNumberList[k] == pageQuantity) {
								%>
								<li class="page-item"><a class="page-link" href="">...</a>
								</li>
								<%
								}
								}
								%>
								<%
								if (currentPageNumber < totalPageNumber) {
								%>
								<li><a class="page-link"
									href='<%=functionPrefix%>Servlet?page=<%=currentPageNumber + 1%>'>Next</a>
								</li>
								<%
								}
								%>
								<%
								}
								%>
							</ul>
						</nav>
					</div>
					<!-- End of Web's pagination -->
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
	<!-- End of web's footer-->
	<script src="bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript">
		function deleteHocSinh(studId) {
			if (confirm('Bạn Muốn Xóa Không?')) {
				location.href = "DeleteHocSinhServlet?studId=" + studId;
			}
		}
	</script>
	<%
	}
	%>
</body>
</html>