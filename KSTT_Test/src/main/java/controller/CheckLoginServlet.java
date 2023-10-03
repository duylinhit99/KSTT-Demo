package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bo.CheckLoginBO;
import common.Constants;

/**
 * Servlet implementation class CheckLoginServlet
 */
public class CheckLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckLoginServlet() {
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

		String maHocSinh = request.getParameter("MaHocSinh");
		String matKhau = request.getParameter("MatKhau");

		CheckLoginBO checkLoginBO = new CheckLoginBO();
		RequestDispatcher rd = null;

		String accountInfor = null;
		HttpSession session = request.getSession();

		Constants constants = new Constants();
		
		if (checkLoginBO.getAccountRole(maHocSinh, matKhau) == constants.INVALID_ACCOUNT) {
			rd = request.getRequestDispatcher("SC001.jsp?error=2");
		} else if (checkLoginBO.getAccountRole(maHocSinh, matKhau) == constants.STUDENT_ACCOUNT) {
			accountInfor = maHocSinh;
			session.setAttribute("accountInfor", accountInfor);
			rd = request.getRequestDispatcher("SC051.jsp");
		} else {
			accountInfor = maHocSinh;
			session.setAttribute("accountInfor", accountInfor);
			rd = request.getRequestDispatcher("SC006.jsp");
		}
		rd.forward(request, response);
	}

}
