package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.form.HocSinhForm;

/**
 * ShowDanhSachHocSinhDAO
 * 
 * version 1.0
 * 
 * Date 13-04-2023
 * 
 * Copyright
 * 
 * Modification Logs :
 * 
 * DATE               AUTHOR       DESCRIPTION 
 * -------------------------------------------
 * 13-04-2023         DuyLinh        Create
 *
 *
 */
public class ShowDanhSachHocSinhDAO extends BaseDAO {

	/**
	 * get data for student list management page
	 * 
	 * @return
	 */
	public ArrayList<HocSinhForm> getDsHocSinhForm() {
		ArrayList<HocSinhForm> returnList = new ArrayList<HocSinhForm>();
		Connection connection = getConnection();

		// select data from HocSinh and inner join Lop and Truong
		String sql = "SELECT HOCSINH.MaHocSinh,HOCSINH.TenHocSinh ,TRUONG.TenTruong,LOP.MaLop, LOP.TenLop , LOP.NamHoc FROM HOCSINH\r\n"
				+ "	inner join LOP on HOCSINH.MaLop = LOP.MaLop\r\n"
				+ "	inner join TRUONG on LOP.MaTruong = TRUONG.MaTruong";

		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = connection.prepareStatement(sql);
			rs = pstmt.executeQuery();
			HocSinhForm item = null;
			while (rs.next()) {
				item = new HocSinhForm();
				item.setMaHocSinh(rs.getString("mahocsinh"));
				item.setTenHocSinh(rs.getString("tenhocsinh"));
				item.setTenTruong(rs.getString("tentruong"));
				item.setMaLop(rs.getString("malop"));
				item.setTenLop(rs.getString("tenlop"));
				item.setNamHoc(rs.getString("namhoc"));
				returnList.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}
		return returnList;
	}

	
	/**
	 * SELECT DATA FROM HocSinh in ascending order
	 * 
	 * @param pageNumber
	 * @return
	 */
	public ArrayList<HocSinhForm> getDsHocSinhForm(int pageNumber) {
		ArrayList<HocSinhForm> tempList = new ArrayList<HocSinhForm>();
		ArrayList<HocSinhForm> returnedList = new ArrayList<HocSinhForm>();
		Connection connection = getConnection();
		String sql = "SELECT HOCSINH.MaHocSinh,HOCSINH.TenHocSinh ,TRUONG.TenTruong,LOP.MaLop, LOP.TenLop , LOP.NamHoc FROM HOCSINH\r\n"
				+ "	inner join LOP on HOCSINH.MaLop = LOP.MaLop\r\n"
				+ "inner join TRUONG on LOP.MaTruong = TRUONG.MaTruong\r\n"
				+ "WHERE HOCSINH.Status = ? \r\n"
				+ "ORDER BY MaHocSinh";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setInt(1, 1);
			rs = pstmt.executeQuery();
			
			HocSinhForm item = null;
			
			while(rs.next()) {
				item = new HocSinhForm();
				item.setMaHocSinh(rs.getString("mahocsinh"));
				item.setTenHocSinh(rs.getString("tenhocsinh"));
				item.setTenTruong(rs.getString("tentruong"));
				item.setMaLop(rs.getString("malop"));
				item.setTenLop(rs.getString("tenlop"));
				item.setNamHoc(rs.getString("namhoc"));
			
				tempList.add(item);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			closeConnection(connection, pstmt, rs);
		}
		 int pageQuantity = (int)Math.ceil(tempList.size() / 10.0);
         if (pageNumber > pageQuantity || pageNumber <=0) {
                 return returnedList;
         } else {
        	 for (int i = (pageNumber - 1) * 10; (i < pageNumber * 10) && (i < tempList.size()); i++) {
                   returnedList.add(tempList.get(i));
             }
        }   
        return returnedList;
}

	
	/**
	 * calculate
	 * 
	 * @return
	 */
	public int getTotalPageNumber() {
		Connection connection = getConnection();
		String sql = "SELECT count(MaHocSinh) as tongsodong FROM HOCSINH";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int totalPageNumber = 0;
		
		try {
			pstmt = connection.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				  totalPageNumber = rs.getInt("tongsodong");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			closeConnection(connection, pstmt, rs);
		}
		return totalPageNumber;
	}

}
