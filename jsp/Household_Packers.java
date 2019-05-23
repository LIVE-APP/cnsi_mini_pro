package com.cnsi;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cnsi.dao.House_hold_dao;


public class Household_Packers extends HttpServlet {
	
	public void doPost(HttpServletRequest req , HttpServletResponse res){
		//String s0 = req.getParameter("");
		String s1 = req.getParameter("h_name");
		String s2 = req.getParameter("h_num");
		String s3 = req.getParameter("h_email");
		String s4 = req.getParameter("h_source");
		String s5 = req.getParameter("h_dest");
		String s6 = req.getParameter("h_fromadd");
		String s7 = req.getParameter("h_toadd");
		String s8 = req.getParameter("o_Id");
		System.out.println(s8);
		//String s9 = req.getParameter("");
		
		try{  
			
			HttpSession session = req.getSession();
			session.setAttribute("email", s3);
			
			
			System.out.println(s8);
			House_hold_dao dao = new House_hold_dao();
			
			if(dao.service(s1,s2,s3,s4,s5,s6,s7,s8)){
				System.out.println("eneterd in side success");
				res.sendRedirect("success.jsp");
			}else{
				System.out.println("Sorry");
				res.sendRedirect("dashboard.jsp");
			}
						
			}catch(Exception e){ System.out.println(e);}  
			}  
	}



