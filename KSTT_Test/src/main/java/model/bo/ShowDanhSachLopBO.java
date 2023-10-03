package model.bo;

import java.util.ArrayList;

import model.bean.Lop;
import model.dao.ShowDanhSachLopDAO;

/**
 * ShowDanhSachLopBO
 * 
 * version 1.0
 * 
 * Date 13-04-2023
 * 
 * Copyright
 * 
 * Modification
 * 
 * DATE AUTHOR DESCRIPTION -------------------------------------------
 * 13-04-2023 DuyLinh Create
 * 
 *
 */
public class ShowDanhSachLopBO {
	ShowDanhSachLopDAO showDanhSachLopDAO = new ShowDanhSachLopDAO();

	/**
	 * get data from ShowDanhSachLopDAO
	 * 
	 * @return
	 */
	public ArrayList<Lop> getDsLop() {
		return showDanhSachLopDAO.getDsLop();
	}

}
