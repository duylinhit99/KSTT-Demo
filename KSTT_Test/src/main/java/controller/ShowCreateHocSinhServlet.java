package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Lop;
import model.bean.Truong;
import model.bean.form.CreateHocSinhForm;
import model.bo.ShowCreateHocSinhFormBO;
import model.bo.ShowDanhSachLopBO;
import model.bo.ShowDanhSachTruongBO;

/**
 * Servlet implementation class ShowCreateHocSinhServlet
 */
public class ShowCreateHocSinhServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShowCreateHocSinhServlet() {
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

		ShowCreateHocSinhFormBO showCreateHocSinhFormBO = new ShowCreateHocSinhFormBO();
		ShowDanhSachTruongBO showDanhSachTruongBO = new ShowDanhSachTruongBO();
		ShowDanhSachLopBO showDanhSachLopBO = new ShowDanhSachLopBO();
		
		
		
		ArrayList<CreateHocSinhForm> createHocSinhForm = showCreateHocSinhFormBO.getCreateHocSinhForm();
		ArrayList<Truong> dsTruong = showDanhSachTruongBO.getDsTruong();
		ArrayList<Lop> dsLop = showDanhSachLopBO.getDsLop();

		request.setAttribute("dsTruong", dsTruong);
		request.setAttribute("dsLop", dsLop);
		request.setAttribute("createHocSinhForm", createHocSinhForm);
		RequestDispatcher rd = request.getRequestDispatcher("SC020.jsp");
		rd.forward(request, response);
	}

}
