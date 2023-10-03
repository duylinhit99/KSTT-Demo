package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.KetQuaDanhGia;
import model.bean.Lop;
import model.bean.Truong;
import model.bean.form.KetQuaDanhGiaForm;
import model.bo.SearchKetQuaDanhGiaBO;
import model.bo.ShowDanhSachKetQuaDanhGiaBO;
import model.bo.ShowDanhSachLopBO;
import model.bo.ShowDanhSachTruongBO;

/**
 * Servlet implementation class SearchKetQuaDanhGiaServlet
 */
public class SearchKetQuaDanhGiaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SearchKetQuaDanhGiaServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession();
		if (session.getAttribute("accountInfor") == null) {
			response.sendRedirect("SC001.jsp?error=1");
		} else {

			String searchMaHocSinh = request.getParameter("searchMaHocSinh");
			String searchTenHocSinh = request.getParameter("searchTenHocSinh");
			String searchMaLop = request.getParameter("searchMaLop");
			String searchTenLop = request.getParameter("searchTenLop");
			String searchTenTruong = request.getParameter("searchTenTruong");
			String searchNamHoc = request.getParameter("searchNamHoc");
			String searchTrangThai = request.getParameter("searchTrangThai");

			SearchKetQuaDanhGiaBO searchKetQuaDanhGiaBO = new SearchKetQuaDanhGiaBO();
			ShowDanhSachKetQuaDanhGiaBO showDanhSachKetQuaDanhGiaBO = new ShowDanhSachKetQuaDanhGiaBO();
			ShowDanhSachLopBO showDanhSachLopBO = new ShowDanhSachLopBO();
			ShowDanhSachTruongBO showDanhSachTruongBO = new ShowDanhSachTruongBO();
			ArrayList<KetQuaDanhGiaForm> dsKetQuaDanhGia = showDanhSachKetQuaDanhGiaBO.getDsKetQuaDanhGia();

			ArrayList<KetQuaDanhGia> dsTrangThai = showDanhSachKetQuaDanhGiaBO.getDsTrangThai();
			ArrayList<Lop> dsLop = showDanhSachLopBO.getDsLop();
			ArrayList<Truong> dsTruong = showDanhSachTruongBO.getDsTruong();

			System.out.println("searchMaHocSinh = " + searchMaHocSinh);
			System.out.println("searchTenHocSinh = " + searchTenHocSinh);
			System.out.println("searchMaLop = " + searchMaLop);
			System.out.println("searchTenLop = " + searchTenLop);
			System.out.println("searchTenTruong = " + searchTenTruong);
			System.out.println("searchNamHoc = " + searchNamHoc);
			System.out.println("searchTrangThai = " + searchTrangThai);

			ArrayList<KetQuaDanhGiaForm> dsSearchKetQuaDanhGia = searchKetQuaDanhGiaBO.getDsKetQuaDanhGia(
					searchMaHocSinh, searchTenHocSinh, searchMaLop, searchTenLop, searchTenTruong, searchNamHoc,
					searchTrangThai);
			request.setAttribute("dsKetQuaDanhGia", dsSearchKetQuaDanhGia);
			request.setAttribute("dsLop", dsLop);
			request.setAttribute("dsTruong", dsTruong);
			request.setAttribute("dsTrangThai", dsTrangThai);
			RequestDispatcher rd = request.getRequestDispatcher("SC047.jsp");
			rd.forward(request, response);
		}
	}
}
