package model.bo;

import java.util.ArrayList;

import model.bean.form.CreateHocSinhForm;
import model.dao.ShowCreateHocSinhFormDAO;

public class ShowCreateHocSinhFormBO {
	
	ShowCreateHocSinhFormDAO showCreatHocSinhFormDAO = new ShowCreateHocSinhFormDAO();

	public ArrayList<CreateHocSinhForm> getCreateHocSinhForm() {
		
		return showCreatHocSinhFormDAO.getCreateHocSinhForm();
	}

}
