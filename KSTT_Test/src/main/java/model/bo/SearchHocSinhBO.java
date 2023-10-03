package model.bo;

import java.util.ArrayList;

import model.bean.form.HocSinhForm;
import model.dao.SearchHocSinhDAO;

/**
 * SearchHocSinhBO
 * 
 * version 1.0
 * 
 * Date 13-04-2023
 * 
 * Copyright
 * 
 * Modification
 * 
 * DATE            AUTHOR           DESCRIPTION
 * -------------------------------------------
 * 13-04-2023      DuyLinh			  Create
 *
 *
 */
public class SearchHocSinhBO {
	SearchHocSinhDAO searchHocSinhDAO = new SearchHocSinhDAO();

	/**
	 * 
	 * @param searchMaHocSinh
	 * @param searchTenHocSinh
	 * @param searchTenTruong
	 * @param searchMaLop
	 * @param searchTenLop
	 * @param searchNamHoc
	 * @param pageNumber 
	 * @return
	 */
	public ArrayList<HocSinhForm> getDsHocSinhForm(String searchMaHocSinh, String searchTenHocSinh, String searchTenTruong,
			String searchMaLop, String searchTenLop, String searchNamHoc) {
		return searchHocSinhDAO.getDsHocSinhForm(searchMaHocSinh, searchTenHocSinh, searchTenTruong, searchMaLop, searchTenLop,
				searchNamHoc);
	}

	public ArrayList<HocSinhForm> getDsHocSinhForm(String searchMaHocSinh, String searchTenHocSinh,
			String searchTenTruong, String searchMaLop, String searchTenLop, String searchNamHoc, int pageNumber) {
		return searchHocSinhDAO.getDsHocSinhForm(searchMaHocSinh, searchTenHocSinh, searchTenTruong, searchMaLop, searchTenLop, searchNamHoc, pageNumber);
	}
	
	public int getTotalPageNumber(String searchMaHocSinh, String searchTenHocSinh, String searchTenTruong,
			String searchMaLop, String searchTenLop, String searchNamHoc) {
		
		return searchHocSinhDAO.getTotaPageNumber(searchMaHocSinh, searchTenHocSinh,
				searchTenTruong, searchMaLop, searchTenLop, searchNamHoc);
	}

	
}
