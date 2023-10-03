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
import model.bo.SearchHocSinhBO;
import model.bo.ShowDanhSachLopBO;
import model.bo.ShowDanhSachTruongBO;

/**
 * Servlet implementation class SearchHocSinhServlet
 */
public class SearchHocSinhServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchHocSinhServlet() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html ; charset = utf-8");

		ShowDanhSachTruongBO showDanhSachTruongBO = new ShowDanhSachTruongBO();
		ShowDanhSachLopBO showDanhSachLopBO = new ShowDanhSachLopBO();

		ArrayList<Truong> dsTruong = showDanhSachTruongBO.getDsTruong();
		ArrayList<Lop> dsLop = showDanhSachLopBO.getDsLop();

		String searchMaHocSinh = request.getParameter("searchMaHocSinh");
		String searchTenHocSinh = request.getParameter("searchTenHocSinh");
		String searchTenTruong = request.getParameter("searchTenTruong");
		String searchMaLop = request.getParameter("searchMaLop");
		String searchTenLop = request.getParameter("searchTenLop");
		String searchNamHoc = request.getParameter("searchNamHoc");

		SearchHocSinhBO searchHocSinhBO = new SearchHocSinhBO();
		
		

		String page = request.getParameter("page");
        int pageNumber = 1; 
        if (page != null && !"".equals(page)) {
                pageNumber = Integer.valueOf(page);
        }

		ArrayList<HocSinhForm> dsHocSinhForm = searchHocSinhBO.getDsHocSinhForm(searchMaHocSinh, searchTenHocSinh,
				searchTenTruong, searchMaLop, searchTenLop, searchNamHoc , pageNumber);
		
		
		int totalPageNumber = searchHocSinhBO.getTotalPageNumber(searchMaHocSinh, searchTenHocSinh,
				searchTenTruong, searchMaLop, searchTenLop, searchNamHoc);
		
		
		request.setAttribute("currentPageNumber", pageNumber);
		request.setAttribute("totalPageNumber", totalPageNumber);
		
		request.setAttribute("dsHocSinhForm", dsHocSinhForm);
		request.setAttribute("dsTruong", dsTruong);
		request.setAttribute("dsLop", dsLop);
		
		HttpSession session = request.getSession();
		session.setAttribute("searchMaHocSinh", searchMaHocSinh);
		
		session.setAttribute("searchTenHocSinh", searchTenHocSinh);
		
		session.setAttribute("searchTenTruong", searchTenTruong);
		
		session.setAttribute("searchMaLop", searchMaLop);
		
		session.setAttribute("searchTenLop", searchTenLop);
		
		session.setAttribute("searchNamHoc", searchNamHoc);
	
		
		RequestDispatcher rd = request.getRequestDispatcher("SC016.jsp");
		rd.forward(request, response);
	}

}
