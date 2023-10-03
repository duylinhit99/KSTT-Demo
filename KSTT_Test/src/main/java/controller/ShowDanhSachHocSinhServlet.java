package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.bean.Lop;
import model.bean.Truong;
import model.bean.form.HocSinhForm;
import model.bo.ShowDanhSachHocSinhBO;
import model.bo.ShowDanhSachLopBO;
import model.bo.ShowDanhSachTruongBO;

/**
 * Servlet implementation class ShowDanhSachHocSinhServlet
 */
public class ShowDanhSachHocSinhServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ShowDanhSachHocSinhServlet() {
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
		session.removeAttribute("searchHocSinh");

		ShowDanhSachHocSinhBO showDanhSachHocSinhBO = new ShowDanhSachHocSinhBO();
		ShowDanhSachTruongBO showDanhSachTruongBO = new ShowDanhSachTruongBO();
		ShowDanhSachLopBO showDanhSachLopBO = new ShowDanhSachLopBO();

		
		String page = request.getParameter("page");
        int pageNumber = 1; 
        if (page != null && !"".equals(page)) {
                pageNumber = Integer.valueOf(page);
        }
		
		ArrayList<HocSinhForm> dsHocSinhForm = showDanhSachHocSinhBO.getDsHocSinhForm(pageNumber);
		ArrayList<Truong> dsTruong = showDanhSachTruongBO.getDsTruong();
		ArrayList<Lop> dsLop = showDanhSachLopBO.getDsLop();

		int totalPageNumber = showDanhSachHocSinhBO.getTotalPageNumber();
		
		request.setAttribute("currentPageNumber", pageNumber);
		request.setAttribute("totalPageNumber", totalPageNumber);
		
		request.setAttribute("dsTruong", dsTruong);
		request.setAttribute("dsHocSinhForm", dsHocSinhForm);
		request.setAttribute("dsLop", dsLop);

		RequestDispatcher rd = request.getRequestDispatcher("SC016.jsp");
		rd.forward(request, response);
	}
}
