package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * CheckLoginDAO 
 * 
 * Version 1.0
 * 
 * Date 13-04-2023
 * 
 * Copyright
 * 
 * Modification Logs :
 * 
 * DATE           AUTHOR         DESCRIPTION 
 * -------------------------------------------
 * 13-04-2023     DuyLinh            Create
 * 
 */
public class CheckLoginDAO extends BaseDAO {

	/**
	 * 
	 * get data and check for login page
	 * 
	 * @param maHocSinh
	 * @param matKhau
	 * @return
	 */
	public int getAccountRole(String maHocSinh, String matKhau) {
		Connection connection = getConnection();
		String sql = "SELECT * FROM (SELECT MaHocSinh, MatKhau FROM HOCSINH UNION ALL SELECT Username, Password FROM ADMIN) AS SUBTABLE WHERE mahocsinh = ? AND matkhau = ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, maHocSinh);
			pstmt.setString(2, matKhau);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if ((rs.getString("mahocsinh")).contains("HS")) {
					return 1;
				} else {
					return 2;
				}
			} else {
				return 0;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}
		return 0;
	}

}
