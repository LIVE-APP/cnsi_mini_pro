package com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Logindao {
	String sql ="select * from user_login where c_email =? and c_pass = ?";
	String url  = "jdbc:oracle:thin:@localhost:1521:xe";
	
	String db_uname = "system";
	String db_pass = "appu@12345";

	public boolean service(String email, String password) throws SQLException {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con = DriverManager.getConnection(url,db_uname, db_pass);
			
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1,email);
			ps.setString(2,password);
			
			ResultSet Rs = ps.executeQuery();
			
			if(Rs.next()){
				return true;
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
		
	}
	
	
}
