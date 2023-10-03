package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * DeleteHocSinhDAO
 * 
 * Date 15-04-2023
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
public class DeleteHocSinhDAO extends BaseDAO {

	/**
	 * detele data table HocSinh
	 * 
	 * update hocsinh set status = 0 where mahocsinh
	 * 
	 * @param studId
	 */
	public void deleteHocSinh(String studId) {
		Connection connection = getConnection();
		String sql = "Update HOCSINH SET Status = 0 "
				+ "WHERE MaHocSinh = ?";
		PreparedStatement pstmt = null;

		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, studId);
			int x = pstmt.executeUpdate();
			System.out.println("Đã Xóa số record : " + x);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, null);
		}
	}

}
