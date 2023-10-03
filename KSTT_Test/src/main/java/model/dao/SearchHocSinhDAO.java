package model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.bean.form.HocSinhForm;

/**
 * SearchHocSinhDAO
 * 
 * version 1.0
 * 
 * 
 * Date 13-04-2023
 * 
 * Copyright
 * 
 * Modification Logs :
 * 
 * DATE         AUTHOR      DESCRIPTION
 *  -------------------------------------------
 * 13-04-2023    DuyLinh       Create
 * 
 *
 */
public class SearchHocSinhDAO extends BaseDAO {

	/**
	 * 
	 * get data for search function
	 * 
	 * @param searchMaHocSinh
	 * @param searchTenHocSinh
	 * @param searchTenTruong
	 * @param searchMaLop
	 * @param searchTenLop
	 * @param searchNamHoc
	 * @return
	 */

	public ArrayList<HocSinhForm> getDsHocSinhForm(String searchMaHocSinh, String searchTenHocSinh, String searchTenTruong,
			String searchMaLop, String searchTenLop, String searchNamHoc) {
		ArrayList<HocSinhForm> hocsinhList = new ArrayList<HocSinhForm>();
		Connection connection = getConnection();
		String sql = "SELECT HOCSINH.MaHocSinh,HOCSINH.TenHocSinh ,TRUONG.TenTruong,LOP.MaLop, LOP.TenLop , LOP.NamHoc FROM HOCSINH\r\n"
				+ "inner join LOP on LOP.MaLop = HOCSINH.MaLop\r\n"
				+ "inner join TRUONG on TRUONG.MaTruong = LOP.MaTruong\r\n"
				+ "WHERE MaHocSinh like ? and TenHocSinh like ? and TenTruong like ? and TenLop like ? and NamHoc like ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, "%" + searchMaHocSinh + "%");
			pstmt.setString(2, "%" + searchTenHocSinh + "%");
			pstmt.setString(3, "%" + searchTenTruong + "%");
			pstmt.setString(4, "%" + searchTenLop + "%");
			pstmt.setString(5, "%" + searchNamHoc + "%");
			rs = pstmt.executeQuery();

			HocSinhForm item = null;

			while (rs.next()) {
				item = new HocSinhForm();
				item.setMaHocSinh(rs.getString("mahocsinh"));
				item.setTenHocSinh(rs.getString("tenhocsinh"));
				item.setTenLop(rs.getString("tenlop"));
				item.setNamHoc(rs.getString("namhoc"));
				item.setTenTruong(rs.getString("tentruong"));
				item.setMaLop(rs.getString("malop"));
				hocsinhList.add(item);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			closeConnection(connection, pstmt, rs);
		}
		return hocsinhList;
	}

	
	/**
	 * getTotaPageNumber()
	 * 
	 * @param searchMaHocSinh
	 * @param searchTenHocSinh
	 * @param searchTenTruong
	 * @param searchMaLop
	 * @param searchTenLop
	 * @param searchNamHoc
	 * @return
	 */
	public int getTotaPageNumber(String searchMaHocSinh, String searchTenHocSinh, String searchTenTruong,
			String searchMaLop, String searchTenLop, String searchNamHoc) {
		Connection connection = getConnection();
		String sql = "SELECT COUNT(MaHocSinh) as tongsodong  FROM HOCSINH\r\n"
				+ "	inner join LOP on LOP.MaLop = HOCSINH.MaLop\r\n"
				+ "	inner join TRUONG on TRUONG.MaTruong = LOP.MaTruong\r\n"
				+ "WHERE MaHocSinh like ? and TenHocSinh like ? and TenTruong like ? and TenLop like ? and NamHoc like ?";
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int totalPageNumber = 0 ;
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, "%" + searchMaHocSinh + "%");
			pstmt.setString(2, "%" + searchTenHocSinh + "%");
			pstmt.setString(3, "%" + searchTenTruong + "%");
			pstmt.setString(4, "%" + searchTenLop + "%");
			pstmt.setString(5, "%" + searchNamHoc + "%");
		
			rs = pstmt.executeQuery();
			
            if (rs.next()) {
               totalPageNumber = rs.getInt("tongsodong");
            }
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			closeConnection(connection, pstmt, rs);
		}
	    return (int)Math.ceil(totalPageNumber / 10.0);
	}

	/**
	 * getDsHocSinhForm()
	 * 
	 * @param searchMaHocSinh
	 * @param searchTenHocSinh
	 * @param searchTenTruong
	 * @param searchMaLop
	 * @param searchTenLop
	 * @param searchNamHoc
	 * @param pageNumber
	 * @return
	 */
	public ArrayList<HocSinhForm> getDsHocSinhForm(String searchMaHocSinh, String searchTenHocSinh,
			String searchTenTruong, String searchMaLop, String searchTenLop, String searchNamHoc, int pageNumber) {
		ArrayList<HocSinhForm> tempList = new ArrayList<HocSinhForm>();
		ArrayList<HocSinhForm> returnedList = new ArrayList<HocSinhForm>();
		Connection connection = getConnection();
		String sql = "SELECT * FROM (SELECT RowNum = ROW_NUMBER() OVER (ORDER BY MaHocSinh), MaHocSinh, TenHocSinh, LOP.TenLop, LOP.MaLop, TRUONG.TenTruong, LOP.NamHoc FROM HOCSINH \r\n"
				+ "inner join LOP on HOCSINH.MaLop = LOP.MaLop\r\n"
				+ "inner join TRUONG on LOP.MaTruong = TRUONG.MaTruong\r\n"
				+ "WHERE MaHocSinh like ? and TenHocSinh like ? and TenTruong like ? and TenLop like ? and NamHoc like ?)"
				+ "AS tempTable WHERE RowNum > (? * (? - 1)) AND RowNum <= (? * (? - 1)) + ? ORDER BY MaHocSinh";      
		PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
        	pstmt = connection.prepareStatement(sql);
        	pstmt.setString(1, "%" + searchMaHocSinh + "%");
			pstmt.setString(2, "%" + searchTenHocSinh + "%");
			pstmt.setString(3, "%" + searchTenTruong + "%");
			pstmt.setString(4, "%" + searchTenLop + "%");
			pstmt.setString(5, "%" + searchNamHoc + "%");
			pstmt.setString(6, "10");
            pstmt.setString(7, String.valueOf(pageNumber));
            pstmt.setString(8, "10");
            pstmt.setString(9, String.valueOf(pageNumber));
            pstmt.setString(10, "10");                        
            rs = pstmt.executeQuery();
            HocSinhForm item = null;
            while(rs.next()) {
            	item = new HocSinhForm();
				item.setMaHocSinh(rs.getString("mahocsinh"));
				item.setTenHocSinh(rs.getString("tenhocsinh"));
				item.setTenLop(rs.getString("tenlop"));
				item.setNamHoc(rs.getString("namhoc"));
				item.setTenTruong(rs.getString("tentruong"));
				item.setMaLop(rs.getString("malop"));
				returnedList.add(item);
            }
        }catch(SQLException e) {
        	e.printStackTrace();
        }finally {
        	closeConnection(connection, pstmt, rs);
       }   
    	return returnedList;
	}

}
