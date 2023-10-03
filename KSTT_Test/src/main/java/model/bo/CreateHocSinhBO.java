package model.bo;

import model.dao.CreateHocSinhDAO;

public class CreateHocSinhBO {

	CreateHocSinhDAO createHocSinhDAO = new CreateHocSinhDAO();

	public void insertHocSinh(String maHocSinh, String matKhau, String tenHocsinh, String maLop, String gioiTinh,
			String tuoi, String hotenPhuHuynh, String soDienThoai, String quan, String phuong) {
		
		createHocSinhDAO.insertHocSinh(maHocSinh, matKhau, tenHocsinh, maLop, gioiTinh, tuoi, hotenPhuHuynh,
				soDienThoai, quan, phuong);
	}

}
