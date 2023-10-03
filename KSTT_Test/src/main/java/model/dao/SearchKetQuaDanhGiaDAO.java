package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.form.KetQuaDanhGiaForm;

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
 *  DATE                 AUTHOR           DESCRIPTION
 * --------------------------------------------------------- 
 * 15-04-2023             LoLV               Create
 */
public class SearchKetQuaDanhGiaDAO extends BaseDAO {

	/**
	 * search data for Review Results List page
	 * 
	 * @param searchMaHocSinh, searchTenHocSinh, searchMaLop, searchTenLop,
	 *                         searchTenTruong, searchNamHoc, searchTrangThai
	 * @return
	 */
	public ArrayList<KetQuaDanhGiaForm> getDsKetQuaDanhGia(String searchMaHocSinh, String searchTenHocSinh,
			String searchMaLop, String searchTenLop, String searchTenTruong, String searchNamHoc,
			String searchTrangThai) {
		ArrayList<KetQuaDanhGiaForm> returnedDsSearch = new ArrayList<KetQuaDanhGiaForm>();
		Connection connection = getConnection();

		// Select and search data from 4 table
		String sql = "select HOCSINH.MaHocSinh, HOCSINH.TenHocSinh, LOP.MaLop, LOP.TenLop, TRUONG.TenTruong, LOP.NamHoc, KETQUADANHGIA.PhanLoaiSucKhoe, KETQUADANHGIA.TrangThai\r\n"
				+ "from TRUONG\r\n" + "inner join LOP on TRUONG.MaTruong = LOP.MaTruong\r\n"
				+ "inner join HOCSINH on LOP.MaLop = HOCSINH.MaLop\r\n"
				+ "inner join KETQUADANHGIA on HOCSINH.MaHocSinh = KETQUADANHGIA.MaHocSinh\r\n"
				+ "where HOCSINH.MaHocSinh like ? AND HOCSINH.TenHocSinh like ? AND LOP.MaLop like ? AND LOP.TenLop like ? AND TRUONG.TenTruong like ? AND LOP.NamHoc like ? AND KETQUADANHGIA.TrangThai like ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, "%" + searchMaHocSinh + "%");
			pstmt.setString(2, "%" + searchTenHocSinh + "%");
			pstmt.setString(3, "%" + searchMaLop + "%");
			pstmt.setString(4, "%" + searchTenLop + "%");
			pstmt.setString(5, "%" + searchTenTruong + "%");
			pstmt.setString(6, "%" + searchNamHoc + "%");
			pstmt.setString(7, "%" + searchTrangThai + "%");

			rs = pstmt.executeQuery();
			KetQuaDanhGiaForm item = null;
			while (rs.next()) {
				item = new KetQuaDanhGiaForm();
				item.setMaHocSinh(rs.getString("mahocsinh"));
				item.setTenHocSinh(rs.getString("tenhocsinh"));
				item.setMaLop(rs.getString("malop"));
				item.setTenLop(rs.getString("tenlop"));
				item.setTenTruong(rs.getString("tentruong"));
				item.setNamHoc(rs.getString("namhoc"));
				item.setPhanLoaiSucKhoe(rs.getString("phanloaisuckhoe"));
				item.setTrangThai(rs.getString("trangthai"));
				returnedDsSearch.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}
		return returnedDsSearch;
	}

}
