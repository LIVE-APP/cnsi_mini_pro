package com.cnsi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class House_hold_dao {
	//String sql = "insert into household(,,,,,,) values(?,?,?,?,?,?,?,?,?,?)";
	String db_url = "jdbc:oracle:thin:@10.86.25.49:1521/hcedev";
	String db_usrname = "tester";
	String db_pass ="tester";
	
	public boolean service(String username, String mobile, String email, String source, String dest, String fromadd, String toadd,String Order_Code) throws SQLException{
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(db_url,db_usrname, db_pass);
			String sql = "insert into household(name,mobile,email,source,destination,from_address,to_address,ordercode) values('"+username+"','"+mobile+"','"+email+"','"+source+"','"+dest+"','"+fromadd+"','"+toadd+"','"+Order_Code+"')";

			PreparedStatement ps = con.prepareStatement(sql);
			//ps.setString(1, Order_id);
			//System.out.println("1. eneterd");
			/*ps.setString(2, username);
			System.out.println("1. eneterd");
			ps.setString(3, mobile);
			System.out.println("eneterd");
			ps.setString(4, email);
			ps.setString(5, source);
			ps.setString(6, dest);
			System.out.println("eneterd");
			ps.setString(7, fromadd);
			System.out.println("eneterd");
			ps.setString(8, toadd);
			System.out.println("eneterd");
			ps.setString(9, Order_Code);*/
			//ps.setString(10, hire_date);
			System.out.println("eneterd");
			System.out.println("eneterd");
			System.out.println("eneterd");
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
