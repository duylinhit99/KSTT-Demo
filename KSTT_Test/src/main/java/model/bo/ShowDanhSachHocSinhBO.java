package model.bo;

import java.util.ArrayList;

import model.bean.form.HocSinhForm;
import model.dao.ShowDanhSachHocSinhDAO;

/**
 * ShowDanhSachHocSinhBO
 * 
 * version 1.0
 * 
 * Date 13-04-2023
 * 
 * Copyright
 * 
 * Modification
 * 
 * DATE            AUTHOR       DESCRIPTION
 *  -------------------------------------------
 * 13-04-2023      DuyLinh        Create
 * 
 *
 */
public class ShowDanhSachHocSinhBO {
	ShowDanhSachHocSinhDAO showDanhSachHocSinhDAO = new ShowDanhSachHocSinhDAO();

	/**
	 * getDsHocSinhForm
	 * 
	 * @return
	 */
	public ArrayList<HocSinhForm> getDsHocSinhForm() {
		return showDanhSachHocSinhDAO.getDsHocSinhForm();
	}
	
	/**
	 * getDsHocSinhForm
	 * 
	 * @param pageNumber
	 * @return
	 */

	public ArrayList<HocSinhForm> getDsHocSinhForm(int pageNumber) {

		return showDanhSachHocSinhDAO.getDsHocSinhForm(pageNumber);
	}

	
	/**
	 * getTotalPageNumber
	 * @return
	 */
	public int getTotalPageNumber() {
		
		return showDanhSachHocSinhDAO.getTotalPageNumber();
	}
}
