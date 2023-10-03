package model.bo;

import java.util.ArrayList;

import model.bean.form.KetQuaDanhGiaForm;
import model.dao.SearchKetQuaDanhGiaDAO;

/**
 * SearchKetQuaDanhGiaBO
 * 
 * Version 1.0
 * 
 * Date: 15-04-2023
 * 
 * Copyright
 * 
 * Modification Logs:
 * 
 * DATE             AUTHOR              DESCRIPTION
 * ---------------------------------------------------------
 * 15-04-2023       LoLV                Create
 */
public class SearchKetQuaDanhGiaBO {
	SearchKetQuaDanhGiaDAO searchKetQuaDanhGiaDAO = new SearchKetQuaDanhGiaDAO();

	/**
	 * search data for Review Results List page
	 * @param searchMaHocSinh, searchTenHocSinh, searchMaLop, searchTenLop, searchTenTruong, searchNamHoc, searchTrangThai
	 * @return
	 */
	public ArrayList<KetQuaDanhGiaForm> getDsKetQuaDanhGia(String searchMaHocSinh, String searchTenHocSinh, String searchMaLop,
			String searchTenLop, String searchTenTruong, String searchNamHoc, String searchTrangThai) {
		return searchKetQuaDanhGiaDAO.getDsKetQuaDanhGia(searchMaHocSinh, searchTenHocSinh, searchMaLop, searchTenLop,
				searchTenTruong, searchNamHoc, searchTrangThai);
	}
}
