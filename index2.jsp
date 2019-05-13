<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="index2.css">
	<script src="scripts.js" type="text/javascript" charset="utf-8" async defer></script>

	<title>User Login Page</title>
	<header class= "div1">
	<img class="img1" src="src.jpg">
	<button class= "btn btn-success" id="log">LogIn/SignUp</button>
</header>
</head>
<body>
	<div class ="wrapper2">
		<form action="LoginController" method="post" accept-charset="utf-8" onsubmit ="">
			<label for="fname">Email Address*</label>
			<input type="email"  class="form-control" name="email" value="" placeholder="emailaddress*" required autocomplete="off">
				<label for="fname">Password*</label>
		<input type="password"  class="form-control" name="pass" value="" placeholder="password*">
		<p class="forgot"><a href="#"><u>Forgot Password?</u></a></p>
		<p id = "smal" style= "color:#EB3749"></p>

		
		<input type="submit"  class="btn btn-primary" name="" value="Login" ><br><br>
		<p class="forgot"><a href="index.jsp"><u>Register Here as New User</u></a></p>

		</form>

			
		</div>


</body>
</html>