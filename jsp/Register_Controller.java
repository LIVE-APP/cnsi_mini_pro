import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
* Servlet implementation class LoginController
*/
public class Register_Controller extends HttpServlet {
                
                protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
                                String bid=request.getParameter("name");
                                String un=request.getParameter("phone_number");
                                String pwd=request.getParameter("pswd");
                                String email=request.getParameter("email");
                     
                                // Connect to mysql and verify username password
                                
                                try {
                                                Class.forName("oracle.jdbc.driver.OracleDriver");
                                // loads driver
                                Connection c = DriverManager.getConnection("jdbc:oracle:thin:@10.86.25.49:1521:hcedev","tester","tester"); // gets a new connection
                                PreparedStatement ps = c.prepareStatement("insert into user_login values(?,?,?,?)");
                                ps.setString(1, bid);
                                ps.setString(2, un);
                                ps.setString(3, pwd);
                                ps.setString(4, email);
                                ResultSet rs = ps.executeQuery();
                                while(rs.next()) {
                                      response.sendRedirect("index2.jsp");
                                      return;
                                }
                                
                                response.sendRedirect("error.html");
                                return;
                                
                                } catch (ClassNotFoundException | SQLException e) {
                                                // TODO Auto-generated catch block
                                                e.printStackTrace();
                                }
                }

}

