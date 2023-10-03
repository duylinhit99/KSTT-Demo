package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bo.CreateHocSinhBO;

/**
 * Servlet implementation class CreateHocSinhServlet
 */
public class CreateHocSinhServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CreateHocSinhServlet() {
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

		String maHocSinh = request.getParameter("maHocSinh");
		String matKhau = request.getParameter("matKhau");
		String tenHocsinh = request.getParameter("tenHocSinh");
		String maLop = request.getParameter("maLop");
		String gioiTinh = request.getParameter("gioiTinh");
		String tuoi = request.getParameter("tuoi");
		String hotenPhuHuynh = request.getParameter("hotenPhuHuynh");
		String soDienThoai = request.getParameter("soDienThoai");
		String quan = request.getParameter("quan");
		String phuong = request.getParameter("phuong");

		
		CreateHocSinhBO createHocSinhBO = new CreateHocSinhBO();
		createHocSinhBO.insertHocSinh(maHocSinh, matKhau, tenHocsinh, maLop, gioiTinh, tuoi,
				hotenPhuHuynh, soDienThoai, quan, phuong);

		
	}

}
