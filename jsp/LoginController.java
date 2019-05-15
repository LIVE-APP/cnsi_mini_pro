
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdbc.Logindao;

public class LoginController extends HttpServlet {
	
	public void doPost(HttpServletRequest req , HttpServletResponse res){
		String s1 = req.getParameter("email");
		String s2 = req.getParameter("pass");
		//String s3 = req.getParameter("pass");
		try{  
			
			HttpSession session = req.getSession();
			session.setAttribute("email", s1);
			
			
			Logindao dao = new Logindao();
			
			if(dao.service(s1,s2)){
				res.sendRedirect("dashboard.jsp");
			}else{
				res.sendRedirect("index2.jsp");
			}
			
			}catch(Exception e){ System.out.println(e);}  
			}  
	}


