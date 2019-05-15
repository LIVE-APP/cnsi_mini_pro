package com.jdbc;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OfficeDao {
		String sql ="insert into  household values(?,?,?,?,?,?,?)";
		String url  = "jdbc:oracle:thin:@localhost:1521:xe";
		
		String db_uname = "system";
		String db_pass = "appu@12345";

		public boolean service(String name, String mno, String email, String source, String dest, String from_add, String to_add ) throws SQLException {
			
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				Connection con = DriverManager.getConnection(url,db_uname, db_pass);
				System.out.println("oracle Passed url");
				
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1,name);
				ps.setString(2,mno);
				ps.setString(3,email);
				ps.setString(4,source);
				ps.setString(5,dest);
				ps.setString(6,from_add);
				ps.setString(7,to_add);
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

