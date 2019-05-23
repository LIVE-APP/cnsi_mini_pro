<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page  import ="java.io.PrintWriter"%>
<%@page import = "java.sql.PreparedStatement"%>
<%@ page import = "java.io.*,java.util.*" %>
<%@page import ="javax.servlet.http.HttpServletRequest" %>
<!DOCTYPE html>
<html>
<head>
	<title>Admin portal</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <link rel="stylesheet" type="text/css" href="dashboard.css" />
  <style>
th, td {
  border: 1px solid black;
}
#sel {
	width: 50%;
    margin: auto;
    margin-top: 15%;
}

</style>
  <header class="haed"></header>
</head>
<body>
		<div>
			<form  method ="post">
					<select class="form-control" name="source" id="sel">
              <option value="">Select</option>
              <option value="All">All Bookings</option>
              <option value="Household">Household Shifting</option>
              <option value="Office">Office Shifting</option>
              <option value="Vehicle">Vehicle Shifting</option>
              </select><br>
             
              <input type = "submit"   class = "btn btn-primary" name ="test" value ="Fetch Data"/>       
</form>
</div>

<div id="all_book" >
	<table style=" text-align: left">
		<tr>
			<th>ORDER ID</th>
			<th>NAME</th>
			<th>VEHICLE TYPE</th>
			<th>VEHILE NAME</th>
			<th>MOBILE</th>
			<th>EMAIL</th>
			<th>SOURCE</th>
			<th>DESTINATION</th>
			<th>FROM_ADDRESS</th>
			<th>TO_ADDRESS</th>
			<th>REG_DATE</th>
			<th>ORDER CODE</th>
			<th>STATUS</th>
		</tr>
		<br>
		<br>
		
<%
String url = "jdbc:oracle:thin:@10.86.25.49:1521/hcedev";
	
	//String db_uname = "system";
	//String db_pass = "appu@12345";
	String db_uname = "tester";
	String db_pass = "tester";

	try {
		
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		//String sql = "select * from bookings order by reg_date asc";
		//String sql = "select * from bookings where ordercode = 1";
		Connection con = DriverManager.getConnection(url,db_uname,db_pass);
		String s1 =request.getParameter("source");
		System.out.println(s1);
		String sql ="";
		if(s1.equals("All")){
			 sql = "select * from bookings order by reg_date asc";
			 
		}else if(s1.equals("Household")){
			 sql = "select * from bookings where ordercode = 1";
		}else if(s1.equals("Office")){
			 sql = "select * from bookings where ordercode = 2";
		}
		else if(s1.equals("Vehicle")){
			 sql = "select * from bookings where ordercode = 3";
		} 
		System.out.println(sql);
		PreparedStatement ps =  con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()){
		%>
		
			<tr bgcolor="#DEB887">

			<td><%=rs.getString("orderno")%></td>
			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("vehicle_type")%></td>
			<td><%=rs.getString("v_namenum")%></td>
			<td><%=rs.getString("mobile")%></td>
			<td><%=rs.getString("email")%></td>
			<td><%=rs.getString("source")%></td>
			<td><%=rs.getString("destination")%></td>
			<td><%=rs.getString("from_address")%></td>
			<td><%=rs.getString("to_address")%></td>
			<td><%=rs.getString("reg_date")%></td>
			<td><%=rs.getString("ordercode")%></td>
			<td><input type = button class = "btn btn-primary" value= "pending"></td>
			</tr>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%> 
 </table> 
 </div> 
</body>
</html>
