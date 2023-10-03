package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.KetQuaDanhGia;
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
 * DATE         AUTHOR          DESCRIPTION
 * --------------------------------------------------------- 
 * 15-04-2023    LoLV              Create
 */
public class ShowDanhSachKetQuaDanhGiaDAO extends BaseDAO {

	/**
	 * get data for Review Results List page
	 * 
	 * @return
	 */
	public ArrayList<KetQuaDanhGiaForm> getDsKetQuaDanhGia() {
		ArrayList<KetQuaDanhGiaForm> returnedList = new ArrayList<KetQuaDanhGiaForm>();
		Connection connection = getConnection();

		// Select data from 4 table
		String sql = "select HOCSINH.MaHocSinh, HOCSINH.TenHocSinh,LOP.MaLop, LOP.TenLop, TRUONG.TenTruong, LOP.NamHoc, KETQUADANHGIA.PhanLoaiSucKhoe, KETQUADANHGIA.TrangThai\r\n"
				+ "from TRUONG\r\n" + "inner join LOP on TRUONG.MaTruong = LOP.MaTruong\r\n"
				+ "inner join HOCSINH on LOP.MaLop = HOCSINH.MaLop\r\n"
				+ "inner join KETQUADANHGIA on HOCSINH.MaHocSinh = KETQUADANHGIA.MaHocSinh";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sql);
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
				returnedList.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}
		return returnedList;
	}

	public ArrayList<KetQuaDanhGia> getDsTrangThai() {
		ArrayList<KetQuaDanhGia> returnedDsTrangThai = new ArrayList<KetQuaDanhGia>();
		Connection connection = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select DISTINCT TrangThai from KETQUADANHGIA";
		try {
			pstmt = connection.prepareStatement(sql);
			rs = pstmt.executeQuery();
			KetQuaDanhGia item = null;
			while (rs.next()) {
				item = new KetQuaDanhGia();
				item.setTrangThai(rs.getString("trangthai"));
				returnedDsTrangThai.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}

		return returnedDsTrangThai;
	}

}
