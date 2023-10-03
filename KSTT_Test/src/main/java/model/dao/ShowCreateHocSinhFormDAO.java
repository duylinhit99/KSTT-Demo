package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.form.CreateHocSinhForm;

public class ShowCreateHocSinhFormDAO extends BaseDAO {

	public ArrayList<CreateHocSinhForm> getCreateHocSinhForm() {
		ArrayList<CreateHocSinhForm> hocsinhList = new ArrayList<CreateHocSinhForm>();
		Connection connection = getConnection();
		String sql = "SELECT DISTINCT HOCSINH.GioiTinh FROM HOCSINH";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = connection.prepareStatement(sql);
			rs = pstmt.executeQuery();
			CreateHocSinhForm item = null;
			while (rs.next()) {
				item = new CreateHocSinhForm();
				item.setGioiTinh(rs.getBoolean("gioitinh"));
				hocsinhList.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}
		return hocsinhList;
	}

}
