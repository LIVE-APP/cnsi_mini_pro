package com.cnsi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cnsi.dao.VehicleDao;

public class Vehicle_Controller extends HttpServlet {
	
	public void doPost(HttpServletRequest req , HttpServletResponse res){
		
		String s1 = req.getParameter("v_name");
		String s2 = req.getParameter("v_type");
		String s3 = req.getParameter("v_namenum");
		String s4 = req.getParameter("v_mno");
		String s5 = req.getParameter("v_email");
		String s6 = req.getParameter("v_source");
		String s7 = req.getParameter("v_dest");
		String s8 = req.getParameter("v_fromaddress");
		String s9 = req.getParameter("v_toaddress");
		String s10 = req.getParameter("v_Id");
		String s11 = req.getParameter("o_Id");
		System.out.println("Static Order Code :"+s10);
		System.out.println("Dynamic Order Code :"+s11);
		//String s3 = req.getParameter("pass");
		try{  
			
			HttpSession session = req.getSession();
			session.setAttribute("email", s5);
			
		
			
			
			VehicleDao dao = new VehicleDao();
			
			if(dao.service(s1,s2,s3,s4,s5,s6,s7,s8,s9,s10)){
				res.sendRedirect("success.jsp");
			}else{
				res.sendRedirect("dashboard.jsp");
			}
			
			}catch(Exception e){ System.out.println(e);}  
			}  
	}


