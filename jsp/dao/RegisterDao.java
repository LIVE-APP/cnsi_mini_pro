package com.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterDao {
	
	public boolean service(String username, String mobile, String email,String password ) throws SQLException{
		String sql = "insert into user_reg values(?,?,?,?)";
		String url = "jdbc:oracle:thin:@localhost:1521/xe";
		String db_usrname = "system";
		String db_pass ="appu@12345";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection conc = DriverManager.getConnection(url,db_usrname,db_pass);
			System.out.println("passed");
			PreparedStatement ps = conc.prepareStatement(sql);
			
			ps.setString(1, username);
			ps.setString(2, mobile);
			ps.setString(3, email);
			ps.setString(4, password);
			
			 ResultSet rs = ps.executeQuery();
			
			 if(rs.next()){
				 return true;
			 }
			
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
		
		
	}

}
