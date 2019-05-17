package com.cnsi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class OfficeDao {
	
		String url = "jdbc:oracle:thin:@10.86.25.49:1521/hcedev";
		
		String db_uname = "system";
		String db_pass = "appu@12345";

		public boolean o_service(String username, String mobile, String email, String source, String dest, String fromadd, String toadd,String Order_Code) throws SQLException {
			System.out.println("oracle Passed url");
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
				Connection con = DriverManager.getConnection(url,db_uname, db_pass);
				System.out.println("oracle Passed url");
				String sql = "insert into office(name,mobile,email,source,destination,from_address,to_address,ordercode) values ('"+username+"','"+mobile+"','"+email+"','"+source+"','"+dest+"','"+fromadd+"','"+toadd+"','"+Order_Code+"')";
				PreparedStatement ps = con.prepareStatement(sql);
/*				ps.setString(1,orderId);
				ps.setString(2,name);
				ps.setString(3,mno);
				ps.setString(4,email);
				ps.setString(5,source);
				ps.setString(6,dest);
				ps.setString(7,from_add);
				ps.setString(8,to_add);*/
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
