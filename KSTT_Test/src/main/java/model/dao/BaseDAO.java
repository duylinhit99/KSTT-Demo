package model.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * BaseDAO
 * 
 * 
 * 
 *
 */
public class BaseDAO {

	private static String hostName = "LAPTOP-DC46HEJ6"; // 127.0.0.1

	private static String password = "123";

	private static String usename = "sa";

	private static String database = "KSTT_Test";

	/**
	 *
	 * 
	 * 
	 * get connection to database
	 *
	 * 
	 * 
	 * @return Connection to database if connect success
	 * 
	 * @throws ClassNotFoundException
	 * 
	 * @throws SQLException
	 * 
	 */
	public Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("net.sourceforge.jtds.jdbc.Driver");
			String connectionURL = "jdbc:jtds:sqlserver://" + hostName + ":1433/" + database + ";CharacterSet=UTF-8";
			conn = DriverManager.getConnection(connectionURL, usename, password);
			System.out.println("Connected!");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	/**
	 * closeConnection
	 * 
	 */
	public void closeConnection(Connection conn, PreparedStatement ps, ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void main(String[] args) {

		BaseDAO baseDAO = new BaseDAO();

		baseDAO.getConnection();

	}

}
