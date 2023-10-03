package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.Lop;

/**
 * ShowDanhSachLopDAO
 * 
 * version 1.0
 * 
 * Date 13-04-2023
 * 
 * Copyright
 * 
 * Modification Logs :
 * 
 * DATE         AUTHOR    DESCRIPTION
 *  -------------------------------------------
 * 13-04-2023    DuyLinh      Create
 *
 */
public class ShowDanhSachLopDAO extends BaseDAO {

	/**
	 * Get Lop data for SC016
	 * 
	 * @return
	 */
	public ArrayList<Lop> getDsLop() {
		ArrayList<Lop> returnedDsLop = new ArrayList<Lop>();
		Connection connection = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		// Select data MaLop , TenLop, NamHoc from Lop
		String sql = "SELECT MaLop, TenLop, NamHoc FROM LOP";
		try {
			pstmt = connection.prepareStatement(sql);
			rs = pstmt.executeQuery();
			Lop item = null;
			while (rs.next()) {
				item = new Lop();
				item.setMaLop(rs.getString("malop"));
				item.setTenLop(rs.getString("tenlop"));
				item.setNamHoc(rs.getString("namhoc"));
				returnedDsLop.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}

		return returnedDsLop;
	}

}
