package com.cnsi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cnsi.dao.OfficeDao;

public class Office_Controller extends HttpServlet {
	
	public void doPost(HttpServletRequest req , HttpServletResponse res){
		String s1 = req.getParameter("o_name");
		String s2 = req.getParameter("o_mno");
		String s3 = req.getParameter("o_email");
		String s4 = req.getParameter("o_source");
		String s5 = req.getParameter("o_dest");
		String s6 = req.getParameter("o_fromaddress");
		String s7 = req.getParameter("o_toaddress");
		String s8 = req.getParameter("o_Id");
		//String s3 = req.getParameter("pass");
		System.out.println("o_eneterd");
		try{  
			
			HttpSession session = req.getSession();
			session.setAttribute("email", s1);
			
		
			
			
			OfficeDao Doa = new OfficeDao();
			System.out.println("o_eneterd");
			System.out.println("o_eneterd");
			
			if(Doa.o_service(s1,s2,s3,s4,s5,s6,s7,s8)){
				res.sendRedirect("success.jsp");
			}else{
				res.sendRedirect("dashboard.jsp");
			}
			
			}catch(Exception e){ System.out.println(e);}  
			}  
	}


