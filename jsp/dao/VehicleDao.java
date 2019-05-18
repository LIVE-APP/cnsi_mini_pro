package com.cnsi.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VehicleDao {

			String sql ="insert into household values(?,?,?,?,?,?,?)";
			String url = "jdbc:oracle:thin:@10.86.25.49:1521/hcedev";
			
			String db_uname = "tester";
			String db_pass = "tester";

			public boolean service(String username,String v_type, String v_namenum, String mobile, String email, String source, String dest, String fromadd, String toadd,String Order_Code ) throws SQLException {
				
				try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
					String sql = "insert into vehicle_shift(name,vehicle_type, v_namenum,mobile,email,source,destination,from_address,to_address,ordercode) values ('"+username+"','"+v_type+"','"+v_namenum+"','"+mobile+"','"+email+"','"+source+"','"+dest+"','"+fromadd+"','"+toadd+"','"+Order_Code+"')";
					Connection con = DriverManager.getConnection(url,db_uname, db_pass);
					System.out.println("oracle Passed url");
					
					PreparedStatement ps = con.prepareStatement(sql);
/*					ps.setInt(1,OrderCode);
					ps.setInt(2,orderId);
					ps.setString(3, name);
					ps.setString(4,type);
					ps.setString(5,v_name);
					ps.setString(6,mno);
					ps.setString(7,email);
					ps.setString(8,source);
					ps.setString(9,dest);
					ps.setString(10,from_add);
					ps.setString(11,to_add);*/
					
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
