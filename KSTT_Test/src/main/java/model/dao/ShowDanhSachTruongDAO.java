package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.bean.Truong;

/**
 * ShowDanhSachTruongDAO
 * 
 * version 1.0
 * 
 * Date 13-04-2023
 * 
 * Copyright
 * 
 * Modification Logs :
 * 
 * DATE         AUTHOR      DESCRIPTION 
 * 
 * -------------------------------------------
 * 13-04-2023   DuyLinh      Create
 * 
 *
 */
public class ShowDanhSachTruongDAO extends BaseDAO {

	/**
	 * get Truong data for page SC016 and SC047
	 * 
	 * @return
	 */
	public ArrayList<Truong> getDsTruong() {
		ArrayList<Truong> returnedDsTruong = new ArrayList<Truong>();
		Connection connection = getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		// Select data from Truong
		String sql = "select TenTruong from TRUONG";
		try {
			pstmt = connection.prepareStatement(sql);
			rs = pstmt.executeQuery();
			Truong item = null;
			while (rs.next()) {
				item = new Truong();
				item.setTenTruong(rs.getString("tentruong"));
				returnedDsTruong.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}

		return returnedDsTruong;
	}

}
