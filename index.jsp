<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>User Login Page</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="index2.css">
	
	<header class= "div1">
		<img class="img1" src="src.jpg">
		<button class= "btn btn-success" id="log" onclick="page2()">LogIn/SignUp</button>
	</header>
	<script>
		function sign_upscript(){
			var letters = /[^a-zA-Z\-\/]/;
			var name= document.getElementById("name");
			var phone_number= document.getElementById("phone_number").value;
			var email= document.getElementById("email").value;
			var check_mail = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
			var pswd = document.getElementById("pswd").value;
			console.log(pswd);
			var new_pswd = document.getElementById("new_pswd").value;


			if(letters.test(name.value)||(!isNaN(name.value))){
//alert("Use valid alphabets No special Characters Allowed")
document.getElementById('username_div').style.color = "red";
console.log(name.value);
document.getElementById("NameHelp").innerHTML = "Use valid alphabets No special Characters Allowed";
return false;
}else if(name.value != ""){
	name.style.border = "1px solid #5e6e66";
	document.getElementById('username_div').style.color = "#5e6e66";
	NameHelp.innerHTML = "";
	return true;
}
else if(phone_number.length!=10){
	document.getElementById("PhoneHelp").innerHTML = "Number should contains 10 digits only";
	return false;
}
else if (!check_mail.test(email)) {

	document.getElementById("emailHelp").innerHTML = "Provide valid Email Address";
	return false;
}
else if(pswd.length < 8){  
	document.getElementById("PassHelp").innerHTML = "Password must be at least 8 characters long.";
	return false;
}

else if(pswd!=new_pswd){  
	document.getElementById("CPassHelp").innerHTML = "Password must be same on both fields";
	return false; 
}  
}
function page2() {
	console.log("passed1")
	window.location.href="index2.jsp";
}
</script>

</head>
<body>
	<div class ="wrapper1">
		<form action="" onsubmit="return sign_upscript()" method="POST" accept-charset="utf-8" name= "vform">	
			<div class="form-group" id="username_div">
				<label for="fname">Name*</label>
				<input type="text"  class="form-control" id="name" name="username" value="" placeholder="Name" required autocomplete="off">
				<small id="NameHelp" style = "color:#D5293B" class="form-text text-muted"></small>
			</div>
		<!-- <div class="form-group">
			<label for="text">LastName*</label>
			<input type="text"  class="form-control" id="name" name="lname" value="" placeholder="LastName*" required autocomplete="off">
		</div> -->

		<div class="form-group">
			<label for="Mno">MobileNumber*</label>
			<input type="number"  class="form-control"  id="phone_number" name="Mno" value="" placeholder="MobileNumber*" required autocomplete="off">
			<small id="PhoneHelp" style = "color:#D5293B" class="form-text text-muted"></small>
		</div>
		<!-- <div class="form-group">
			<label for="email">Email Address*</label>
			<input type="email"  class="form-control" name="Emailadd" value="" 
			placeholder="emailaddress*" required autocomplete="off">
		</div> -->
		<div class="form-group">
			<label for="exampleInputEmail1">Email address</label>
			<input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="Enter email">
			<small id="emailHelp" style = "color:#D5293B" class="form-text text-muted"></small>
		</div>
		<div class="form-group">
			<label for="pass">Password*</label>

			<input type="password"  class="form-control" id="pswd" name="pass" value="" placeholder="password*">
			<small id="PassHelp" style = "color:#D5293B" class="form-text text-muted"></small>
			
			<div class="form-group">
				<label for="pass">Confirm Password*</label>

				<input type="password"  class="form-control" id="new_pswd" name="pass" value="" placeholder="Confirm password*">
				<small id="CPassHelp" style = "color:#D5293B" class="form-text text-muted"></small><br>
				<!-- <input type="submit" class="btn btn-primary" value="Register" onclick="Validate()" > -->

				<input type = "submit" class="btn btn-primary" value="Register" onclick="sign_upscript()">
				<!-- onclick="sign_upscript()"	 -->
				<p id = "demo"></p>
			</div>		

		</form>


	</div>


</body>
</html>