package model.bo;

import model.dao.DeleteHocSinhDAO;
/**
 * DeleteHocSinhBO
 * 
 * version 1.0
 * 
 * 
 * Date 13-04-2023	
 * 
 * Copyright
 * 
 * 
 * Modification
 * 
 * DATE            AUTHOR           DESCRIPTION
 * -------------------------------------------
 * 13-04-2023      DuyLinh			  Create
 *
 *
 */
public class DeleteHocSinhBO {
	DeleteHocSinhDAO deleteHocSinhDAO = new DeleteHocSinhDAO();

	/**
	 * 
	 * @param studId
	 */
	public void deleteHocSinh(String studId) {
		deleteHocSinhDAO.deleteHocSinh(studId);
	}
}
