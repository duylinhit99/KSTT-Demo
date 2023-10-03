package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CreateHocSinhDAO extends BaseDAO {

	public void insertHocSinh(String maHocSinh, String matKhau, String tenHocSinh, String maLop, String gioiTinh,
			String tuoi, String hotenPhuHuynh, String soDienThoai, String quan, String phuong) {

		Connection connection = getConnection();
		String sql = "INSERT INTO HOCSINH (MaHocSinh, MatKhau, TenHocSinh, MaLop, GioiTinh, HoTenPhuHuynh, SoDienThoai, Quan, Phuong, Tuoi )\r\n"
				+ "VALUES (?, ?, ? , ? , ? , ?, ?, ? , ? , ?);";
		PreparedStatement pstmt = null;

		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, maHocSinh);
			pstmt.setString(2, matKhau);
			pstmt.setString(3, tenHocSinh);
			pstmt.setString(4, maLop);
			pstmt.setBoolean(5, Boolean.valueOf(gioiTinh));
			pstmt.setString(6, hotenPhuHuynh);
			pstmt.setInt(7, Integer.valueOf(soDienThoai));
			pstmt.setString(8, quan);
			pstmt.setString(9, phuong);
			pstmt.setInt(10, Integer.valueOf(tuoi));
			int x = pstmt.executeUpdate();
			System.out.println("Đã Chèn số record = " + x);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, null);
		}
	}

}
