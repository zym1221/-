package zym;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Test {
	public Test() {
		// TODO Auto-generated constructor stub
	}

	public static Connection getConnection() throws SQLException,ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");  
		String url = "jdbc:mysql://localhost:3306/user?characterEncoding=UTF-8";
		return DriverManager.getConnection(url, "root", "037441zym");
		//����URLΪ   jdbc:mysql//��������ַ/���ݿ���  �������2�������ֱ��ǵ�½�û���������

	}

	public boolean executeDML(String sql, Object[] args) throws SQLException,
			ClassNotFoundException {
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setObject(1, args[0]);
		pstmt.setObject(2, args[1]);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			return true;
		} else {
			return false;
		}
	}
	

	public boolean executeREG(String sql, Object[] args) throws SQLException,
			ClassNotFoundException {
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setObject(1, args[0]);
		pstmt.setObject(2, args[1]);
		pstmt.setObject(3, args[2]);
		pstmt.setObject(4, args[3]);
		pstmt.setObject(5, args[4]);
		int rs = pstmt.executeUpdate();
		if (rs > 0) {
			return true;
		} else {
			return false;
		}

	}

}