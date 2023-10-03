package model.bo;

import model.dao.CheckLoginDAO;
/**
 * CheckLoginBO
 * 
 * version 1.0 
 * 
 * 
 * Date 13-04-2023
 * 
 * Copyright
 * 
 * Modification
 * 
 *  DATE            AUTHOR           DESCRIPTION
 * -------------------------------------------
 * 13-04-2023      DuyLinh			  Create
 *
 *
 */
public class CheckLoginBO {
	CheckLoginDAO checkLoginDAO = new CheckLoginDAO();

	
	/**
	 * getAccountRole
	 * @param maHocSinh
	 * @param matKhau
	 * @return
	 */
	public int getAccountRole(String maHocSinh, String matKhau) {
		return checkLoginDAO.getAccountRole(maHocSinh, matKhau);
	}
}
