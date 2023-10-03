package model.bo;

import java.util.ArrayList;

import model.bean.Truong;
import model.dao.ShowDanhSachTruongDAO;

/**
 * ShowDanhSachTruongBO
 * 
 * version 1.0
 * 
 * Date 13-04-2023
 * 
 * Copyright
 * 
 * Modification
 * 
 * DATE       AUTHOR      DESCRIPTION 
 * -------------------------------------------
 * 13-04-2023 DuyLinh       Create
 * 
 *
 */
public class ShowDanhSachTruongBO {
	ShowDanhSachTruongDAO showDanhSachTruongDAO = new ShowDanhSachTruongDAO();

	/**
	 * Get data from ShowDanhSachTruongDAO
	 * 
	 * @return
	 */
	public ArrayList<Truong> getDsTruong() {
		return showDanhSachTruongDAO.getDsTruong();
	}

}
