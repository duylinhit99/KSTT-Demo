<%@page import="model.bean.KetQuaDanhGia"%>
<%@page import="model.bean.Truong"%>
<%@page import="model.bean.Lop"%>
<%@page import="model.bean.form.KetQuaDanhGiaForm"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="content-type"
	content="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/SC047.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="icon/css/all.css">
<script src="https://code.jquery.com/jquery-3.6.1.min.js"
	integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&display=swap"
	rel="stylesheet">
<title>Kết quả đánh giá</title>
</head>
<body>
	<%
	if (session.getAttribute("accountInfor") == null) {
		response.sendRedirect("SC001.jsp?error=1");
	} else {
	%>
	<!-- Web's header  -->
	<nav class="navbar sticky-top flex-md-nowrap p-0"
		style="background-color: #98EAB5; height: 70px;">
		<div>
			<img src="img/logo.jpg" width="200px"> <a id="company-name"
				class="navbar-brand col-sm-3 col-md-2 mr-0" href="">BỆNH VIỆN
				TÂM THẦN TP ĐÀ NẴNG</a>
		</div>
		<div
			style="border: solid; width: 400px; height: 50px; border-radius: 30px; background-color: #FFFFFF;">
			<div class="div_left"
				style="width: 180px; height: 48px; float: left; text-align: center;">
				<img src="img/icon2.jpg"
					style="width: 35px; height: 30px; margin-top: 8px;">
				<div class="text" style="float: right;">
					<span style="font-size: 15px;">Cấp cứu 24/7</span><br> <span
						style="color: red; font-size: 15px;">0236.3842.326</span>
				</div>
			</div>
			<div class="div_right"
				style="width: 200px; height: 48px; border-left: solid; float: right; border-radius: 30px;">
				<img src="img/icon3.jpg"
					style="width: 35px; height: 30px; margin-top: 10px; margin-left: 15px;">
				<div class="text"
					style="text-align: center; float: right; margin-right: 20px;">
					<span style="font-size: 15px;">Đường dây nóng</span><br> <span
						style="color: red; font-size: 15px;">0236.3842.326</span>
				</div>
			</div>
		</div>
		<div class="col-md-1">
			<a href="blank" style="font-size: 20px; color: black;"><img
				src="img/user.jpg" style="width: 50px;"></a> <select
				style="width: 25px; background-color: #77D6B4;">
				<option><img src="img/icon1.jpg"></a></option>
				<option value="a" style="background-color: #FFFFFF">Đổi
					mật khẩu</option>
				<option value="b" style="background-color: #FFFFFF">Đăng
					xuất</option>
			</select>
		</div>
	</nav>
	<!-- End of web's header -->
	<!-- Web's main page -->
	<div class="container-fluid">
		<div class="row">
			<!-- Left bar -->
			<nav id="left-bar" class="col-md-2 d-none d-md-block sidebar">
				<div class="sidebar-sticky">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link active" href="blank">
								<img src="img/homepage.jpg"> <span>Trang chủ</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active" href="blank">
								<img src="img/school.jpg"> <span>Quản lý trường</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active" href="blank">
								<img src="img/class.png"> <span>Quản lý lớp</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active" href="ShowDanhSachHocSinhSevlet">
								<img src="img/student.jpg"> <span>Quản lý thông
									tin học sinh</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active" href="blank">
								<img src="img/question.jpg"> <span>Quản lý bộ
									câu hỏi đánh giá</span>
						</a></li>
						<li class="nav-item"><a class="nav-link active" href="blank">
								<img src="img/result.jpg"> <span>Quản lý kết
									quả đánh giá</span>
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
				<div class="title">
					<a href="blank">Quản lý kết quả đánh giá</a>
				</div>
				<!-- Web's insert button-->
				<!--<a class="insert-button btn btn-danger col-md-auto mr-4" href="blank">Tạo mới học sinh <i class="fa-solid fa-circle-plus"></i></a>
				<a class="insert-button btn btn-warning col-md-auto mr-4" style="color: #FFFFFF" href="blank">Tạo mới học sinh theo file <i class="fa-solid fa-circle-plus"></i></a>
				<a class="insert-button btn btn-info col-md-auto" style="color: #FFFFFF" href="blank">Hướng dẫn import file </a>-->
				<div class="article">
					<table class="table table-borderless">
						<tr>
							<th>Mã học sinh</th>
							<th>Tên học sinh</th>
							<th>Mã lớp</th>
							<th>Tên lớp</th>
							<th>Tên trường</th>
							<th>Năm học</th>
							<th>Trạng thái</th>
							<th></th>
							<th></th>
						<tr>
						<tr>
							<%
							String searchMaHocSinh = request.getParameter("searchMaHocSinh") != null ? request.getParameter("searchMaHocSinh") : "";
							String searchTenHocSinh = request.getParameter("searchTenHocSinh") != null ? request.getParameter("searchTenHocSinh")
									: "";
							String searchMaLop = request.getParameter("searchMaLop") != null ? request.getParameter("searchMaLop") : "";
							String searchTenLop = request.getParameter("searchTenLop") != null ? request.getParameter("searchTenLop") : "";
							String searchTenTruong = request.getParameter("searchTenTruong") != null ? request.getParameter("searchTenTruong") : "";
							String searchNamHoc = request.getParameter("searchNamHoc") != null ? request.getParameter("searchNamHoc") : "";
							String searchTrangThai = request.getParameter("searchTrangThai") != null ? request.getParameter("searchTrangThai") : "";
							%>

							<form action="SearchKetQuaDanhGiaServlet" method="post">
								<td><input class="card pb-2" type="textbox"
									name="searchMaHocSinh" value="<%=searchMaHocSinh%>"></td>
								<td><input class="card pb-2" type="textbox"
									name="searchTenHocSinh" value="<%=searchTenHocSinh%>"></td>
								<td><input class="card pb-2" type="textbox"
									name="searchMaLop" value="<%=searchMaLop%>"></td>
								<%
								ArrayList<Lop> dsLop = (ArrayList<Lop>) request.getAttribute("dsLop");
								%>
								<td><select class="card pb-2" name="searchTenLop"
									value="<%=searchTenLop%>">

										<option value="">(All)</option>
										<%
										for (Lop lop : dsLop) {
										%>

										<option><%=lop.getTenLop()%></option>
										<%
										}
										%>
								</select></td>

								<%
								ArrayList<Truong> dsTruong = (ArrayList<Truong>) request.getAttribute("dsTruong");
								%>
								<td><select class="card pb-2" name="searchTenTruong"
									value="<%=searchTenTruong%>">

										<option value="">(All)</option>
										<%
										for (Truong truong : dsTruong) {
										%>
										<option><%=truong.getTenTruong()%></option>
										<%
										}
										%>
								</select></td>
								<td><select class="card pb-2" name="searchNamHoc"
									value="<%=searchNamHoc%>">
										<option value="">(All)</option>
										<%
										for (Lop namhoc : dsLop) {
										%>

										<option><%=namhoc.getNamHoc()%></option>
										<%
										}
										%>
								</select></td>
								<%
								ArrayList<KetQuaDanhGia> dsTrangThai = (ArrayList<KetQuaDanhGia>) request.getAttribute("dsTrangThai");
								%>
								<td><select class="card pb-2 select-status"
									name="searchTrangThai" value="<%=searchTrangThai%>">
										<option value="">(All)</option>
										<%
										for (KetQuaDanhGia trangthai : dsTrangThai) {
										%>

										<option><%=trangthai.getTrangThai()%></option>
										<%
										}
										%>
								</select></td>
								<td><button type="submit" class="btn btn-primary"
										style="width: 120px; height: 33px; background-color: #93BBD2; color: black; font-weight: bolder;"
										value="Tìm kiếm">
										<label>Tìm kiếm</label> <img src="img/search.png"
											style="width: 20px; margin-bottom: 3px;">
									</button></td>
								<td><button class="btn btn-primary"
										style="width: 120px; height: 33px;; background-color: #93BBD2; color: black; font-weight: bolder;">
										<label>Xuất</label> <img src="img/icons-export.png"
											style="width: 20px; margin-bottom: 3px; background-color: #93BBD2;">
									</button></td>
							</form>
						<tr>
					</table>
				</div>
				<!-- Table -->
				<div class="pt-3 student-table">
					<%
					ArrayList<KetQuaDanhGiaForm> dsKetQuaDanhGia = (ArrayList<KetQuaDanhGiaForm>) request.getAttribute("dsKetQuaDanhGia");
					%>
					<table class="student-info table table-sm table-bordered">
						<tr class="table-info">
							<th>STT</th>
							<th>Mã học sinh</th>
							<th>Tên học sinh</th>
							<th>Mã lớp</th>
							<th>Tên Lớp</th>
							<th>Tên trường</th>
							<th>Năm học</th>
							<th>Phân loại SKTT</th>
							<th>Trạng thái</th>
							<th>Hành động</th>
							<th>Chọn</th>
						</tr>
						<%
						int i = 1;
						%>
						<%
						for (KetQuaDanhGiaForm kqdgf : dsKetQuaDanhGia) {
						%>
						<tr>
							<td><%=i++%></td>
							<td><%=kqdgf.getMaHocSinh()%></td>
							<td><%=kqdgf.getTenHocSinh()%></td>
							<td><%=kqdgf.getMaLop()%></td>
							<td><%=kqdgf.getTenLop()%></td>
							<td><%=kqdgf.getTenTruong()%></td>
							<td><%=kqdgf.getNamHoc()%></td>
							<td><%=kqdgf.getPhanLoaiSucKhoe()%></td>
							<td><%=kqdgf.getTrangThai()%></td>
							<td><input style="background-color: #E87A7A;"
								class="btn-info" type="button" value="Chi tiết" /></td>
							<td><input class="btn-info" type="checkbox" /></td>
						</tr>
						<%
						}
						%>
					</table>
				</div>
				<div class="col">
					<button type="button" class="btn"
						style="width: 120px; background-color: #9CE5A8;">
						<img src="img/back.png" style="width: 20px; margin-bottom: 3px;">
						Quay Về
					</button>
				</div>
				<!-- Web's pagination -->
				<div class="web-pagination">
					<nav aria-label="Page navigation example">
						<ul class="pagination">
							<!-- <li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
									<span class="sr-only">Previous</span>
							</a></li> -->



							<%
							int currentPageNumber = 3;
							int totalPageNumber = 8;
							boolean isLastPage = false;
							int[] pageNumberList = new int[7];
							int pageQuantity = 0;

							//TH1: Nếu tổng số trang = 7
							if (totalPageNumber <= 7) {
								for (int j = 0; j < totalPageNumber; j++) {
									pageNumberList[j] = j + 1;
									pageQuantity++;
								}
								if (currentPageNumber > 1) {
							%>
							<a class="page-link"
								href="ShowDanhSachKetQuaDanhGiaServlet?page=<%=currentPageNumber - 1%>">Previous</a>
							<%
							}
							for (int k = 0; k < pageQuantity; k++) {
							if (pageNumberList[k] == currentPageNumber) {
							%>
							<a class="page-link"
								href="ShowDanhSachKetQuaDanhGiaServlet?page=<%=pageNumberList[k]%>"><b><%=pageNumberList[k]%></b></a>
							<%
							} else {
							%>
							<a class="page-link"
								href="ShowDanhSachKetQuaDanhGiaServlet?page=<%=pageNumberList[k]%>"><%=pageNumberList[k]%></a>
							<%
							}
							}
							if (currentPageNumber < totalPageNumber) {
							%>
							<a class="page-link"
								href="ShowDanhSachKetQuaDanhGiaServlet?page=<%=currentPageNumber + 1%>">Next</a>
							<%
							}
							}
							%>




							<%
							//TH2: Nếu tổng số trang = 8 
							if (totalPageNumber > 7 && currentPageNumber < 5) {
								for (int j = 0; j < 7 - 1; j++) {
									pageNumberList[j] = j + 1;
									pageQuantity++;
								}

								if (currentPageNumber > 1) {
							%>
							<a class="page-link"
								href="ShowDanhSachKetQuaDanhGiaServlet?page=<%=currentPageNumber - 1%>">Previous</a>
							<%
							}
							for (int k = 0; k < pageQuantity; k++) {
							if (pageNumberList[k] == currentPageNumber) {
							%>
							<a class="page-link"
								href="ShowDanhSachKetQuaDanhGiaServlet?page=<%=pageNumberList[k]%>"><b><%=pageNumberList[k]%></b></a>
							<%
							} else if (pageNumberList[k] == totalPageNumber - 1) {
							isLastPage = true;
							%>
							<a class="page-link" href="#">...</a>
							<%
							} else {
							%>
							<a class="page-link"
								href="ShowDanhSachKetQuaDanhGiaServlet?page=<%=pageNumberList[k]%>"><%=pageNumberList[k]%></a>

							<%
							}
							}
							if (currentPageNumber < totalPageNumber) {
							%>
							<a class="page-link"
								href="ShowDanhSachKetQuaDanhGiaServlet?page=<%=currentPageNumber + 1%>">Next</a>
							<%
							}
							}
							%>

							<%
							//TH3: Nếu tổng số trang > 9
							if (totalPageNumber > 7 && currentPageNumber >= 5) {

								for (int j = 0; j < 7; j++) {
									pageNumberList[j] = j + 1;
									pageQuantity++;
								}

								for (int k = 0; k < pageQuantity; k++) {

									if (pageNumberList[k] == pageNumberList[0]) {
							%>
							<a class="page-link"
								href="ShowDanhSachKetQuaDanhGiaServlet?page=<%=currentPageNumber - 1%>">Previous</a>
							<a class="page-link"
								href="ShowDanhSachKetQuaDanhGiaServlet?page=<%=pageNumberList[k]%>">1</a>
							<%
							} else if (pageNumberList[k] == pageNumberList[1]) {
							%>
							<a class="page-link"
								href="ShowDanhSachKetQuaDanhGiaServlet?page=<%=pageNumberList[k]%>">2</a>
							<%
							} else if (pageNumberList[k] == pageNumberList[2]) {
							%>
							<a class="page-link" href="#">...</a>
							<%
							} else if (pageNumberList[k] == pageQuantity) {
							isLastPage = true;
							%>
							<a class="page-link" href="#">...</a>
							<%
							} else if (pageNumberList[k] == pageNumberList[3]) {
							%>
							<a class="page-link"
								href="ShowDanhSachKetQuaDanhGiaServlet?page=<%=currentPageNumber - 1%>"><%=currentPageNumber - 1%></a>
							<%
							} else if (pageNumberList[k] == pageNumberList[4]) {
							%>
							<a class="page-link"
								href="ShowDanhSachKetQuaDanhGiaServlet?page=<%=currentPageNumber%>"><b><%=currentPageNumber%></b></a>
							<%
							} else if (pageNumberList[k] == pageNumberList[5]) {
							%>
							<a class="page-link"
								href="ShowDanhSachKetQuaDanhGiaServlet?page=<%=currentPageNumber + 1%>"><%=currentPageNumber + 1%></a>

							<%
							}
							}
							}
							%>

							<!-- <li class="page-item"><a class="page-link" href="#"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
									class="sr-only">Next</span>
							</a></li> -->
						</ul>
					</nav>
				</div>
				<!-- End of Web's pagination -->
			</div>
			<!-- End of web's article -->
		</div>
	</div>
	<div class="card-footer text-muted text-left"
		style="background-color: #6EE197;">
		<span>COPYRIGHT © 2014 - BỆNH VIỆN TÂM THẦN THÀNH PHỐ ĐÀ NẴNG</span><br>
		<span>Địa chỉ : 193 Nguyễn Lương Bằng, P.Hòa Khánh Bắc, Q.Liên
			Chiểu, TP. Đà Nẵng, Việt Nam</span><br> <span>Số điện thoại:
			0236.3.842.326</span>
	</div>

	<!-- JS đưa xuống cuối trước thẻ đóng thẻ 'body' để tăng tốc độ load website  -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
		integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk"
		crossorigin="anonymous"></script>
	<%
	}
	%>
</body>
</html>