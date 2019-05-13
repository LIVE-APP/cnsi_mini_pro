function myfunc(){
//alert("function worked");
if(document.getElementById('sel').value=="Household"){
document.getElementById('hide').hidden = false;
document.getElementById('hide2').hidden = true;
document.getElementById('hide3').hidden = true;
    document.getElementById('imgg').style.margin = "0% 30%";
 
}
else if(document.getElementById('sel').value=="Office")
{
document.getElementById('hide3').hidden = true;
document.getElementById('hide2').hidden = false;
document.getElementById('hide').hidden = true;
document.getElementById('imgg').style.margin = "0% 30%";
    //document.getElementById('hide').hidden= true;
  }else if(document.getElementById('sel').value=="Vehicle"){
document.getElementById('hide3').hidden = false;
document.getElementById('hide2').hidden = true;
document.getElementById('hide').hidden = true;
document.getElementById('imgg').style.margin = "0% 30%";
}
}
function validate(){

let fname = document.getElementById("fname").value;
let pass =  document.getElementById("pass").value;
console.log(fname);
	console.log(pass);
if((fname != "appu@gmail.com")&(pass != "appu")){
	document.getElementById("smal").innerHTML = "Invalid Username and Password";
	
}else {
	window.open("dashboard.jsp", '_self');
	
}

}