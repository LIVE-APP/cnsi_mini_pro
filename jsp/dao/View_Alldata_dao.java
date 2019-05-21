package com.cnsi.dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class View_Alldata_dao extends HttpServlet {

	String url = "jdbc:oracle:thin:@localhost/xe";
	
	String db_uname = "system";
	String db_pass = "appu@12345";
	
	public void check(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException, SQLException {
		PrintWriter out = res.getWriter();

		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String sql = "select * from bookings";
			Connection con = DriverManager.getConnection(url,db_uname,db_pass);
			
			
			PreparedStatement ps =  con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			String html = "<table><tr><th>ORDER ID</th><th>NAME</th><th>VEHICLE TYPE</th><th>VEHILE NAME</th><th>MOBILE</th><th>EMAIL</th><th>SOURCE</th>"
					+ "<th>DESTINATION</th><th>FROM_ADDRESS</th><th>TO_ADDRESS</th><th>REG_DATE</th><th>ORDER CODE</th></tr></table>";
			while(rs.next()){
				html+="<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td> <td>"+rs.getString(5)+"</td> <td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+
						"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td><td>"+rs.getString(12)+"</td></tr>";
			}
				html+="</table>";
				
				out.println(html);
				con.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			out.close();
		}
	}

}
