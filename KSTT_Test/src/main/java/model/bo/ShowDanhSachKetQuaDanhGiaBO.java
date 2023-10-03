package model.bo;

import java.util.ArrayList;

import model.bean.KetQuaDanhGia;
import model.bean.form.KetQuaDanhGiaForm;
import model.dao.ShowDanhSachKetQuaDanhGiaDAO;

/**
 * ShowDanhSachKetQuaDanhGiaBO
 * 
 * Version 1.0
 * 
 * Date: 15-04-2023
 * 
 * Copyright
 * 
 * Modification Logs: 
 * 
 * DATE 	    	  AUTHOR 			    	DESCRIPTION
 * --------------------------------------------------------- 
 * 15-04-2023          LoLV                      Create
 */
public class ShowDanhSachKetQuaDanhGiaBO {
	ShowDanhSachKetQuaDanhGiaDAO showDanhSachKetQuaDanhGiaDAO = new ShowDanhSachKetQuaDanhGiaDAO();

	/**
	 * get data for Review Results List page
	 * 
	 * @return
	 */
	public ArrayList<KetQuaDanhGiaForm> getDsKetQuaDanhGia() {
		return showDanhSachKetQuaDanhGiaDAO.getDsKetQuaDanhGia();
	}

	/**
	 * get data for combobox
	 * 
	 * @return
	 */
	public ArrayList<KetQuaDanhGia> getDsTrangThai() {
		return showDanhSachKetQuaDanhGiaDAO.getDsTrangThai();
	}

}
