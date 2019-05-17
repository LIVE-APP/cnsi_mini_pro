<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="dashboard.css">
  <header class="haed">
    <img src="compnay-name.png" align="left" />
    <script src = "scripts.js"></script>
   <div class ="logout">
      <form  action="Logout_Controller">
      <input type="submit" class ="btn btn-danger" name="" value="logout">
    </form>
    </div>
  </header>
</head>
<body>
				<%
				
				response.setHeader("Cache-Control","no-cache, no-store, must-revalidate"); 	// HTTP 1.1
				
				response.setHeader("Pragma","no-cache"); //version less than HTTP 1.1 
				
				response.setHeader("Expires","0"); //Proxy servers
				
				if(session.getAttribute("email") == null){
					response.sendRedirect("index2.jsp");
				}
				%>
  <script>
  function alerts(){
    alert("Form Submitted");
  }

 </script>

  <div class = "orderId">
    <label for="fname"><h4>Order Id :</h4>
    
  </div>
  <div id = "imgg">
  <form name= "form1">
    <label for="fname">Category*</label>
    <select class="form-control" name="source" id="sel" >
              <option value="">Select</option>
              <option value="Household">Household Shifting</option>
              <option value="Office">Office Shifting</option>
              <option value="Vehicle">Vehicle Shifting</option>
              
              </select><br>
              <!--  <input type="number" id="order_id" name="o_Id"  placeholder="" > -->
              </form>
              <p id = "small" style = "color: red"></p> 
    <button class = "btn btn-primary" onclick="myfunc()">start Moving</button>
    

  </div>

 
  <div id = "hide" hidden=true>
<form action="Household_Packers" method="post" accept-charset="utf-8">
    <table>
      <tr>
        <div class= "div1">

          <td class = "td1"> 
            <label for="fname">Name*</label>
            <input class ="form-control" type="text" name="h_name" value="" placeholder="Name">
          </td>
        </div>

        <div>

          <td class = "td1">
            <label for="num">Booking Mobile Number*</label>
            <input class ="form-control" type="number" name="h_num" value="" placeholder="Mobile Number">
          </td>
        </div>

        <div>

          <td class = "td1"> <label for="email">Email Address*</label> 
            <input class ="form-control" type="email" name="h_email" value="" placeholder="Email">
          </td>
        </div>

        <div>

          <td class = "td1"> 
            <label for="source">Source*</label> 
            <!-- <input class ="form-control" type="email" name="email" value="" placeholder=""> -->
            <select class="form-control" name="h_source">
              <option value="">Select</option>
              <option value="Chennai">Chennai</option>
              <option value="vellore">Vellore</option>
              <option value="salem">Salem</option>
              <option value="Erode">Erode</option>
              <option value="Coimbatore">Coimbatore</option>
            </select>

          </td>
        </div>

        <div>

          <td class = "td1"> <label for="email">Destination*</label> 
           <select class="form-control" name="h_dest">
            <option value="">Select</option>
            <option value="Chennai">Chennai</option>
            <option value="vellore">Vellore</option>
            <option value="salem">Salem</option>
            <option value="Erode">Erode</option>
            <option value="Coimbatore">Coimbatore</option>
          </select>
        </td>
      </div>
    </tr>

    <tr>
      <div>
        <td style = "padding: 10px"> 
          <label for="fname">From Address*</label>
          <textarea class="form-control" name="h_fromadd" rows="3"></textarea>
        </td>
      </div>

      <div>

        <td style = "padding: 10px">
          <label for="num">To Address*</label>
          <textarea class="form-control" name="h_toadd" rows="3"></textarea>
        </td>
      </div>
              <td style = "padding: 10px">
            <input type="number" id="order_id" name="o_Id"  placeholder="" hidden>
        </td>

    </tr>
      </table>
      <input style = "position: relative; float: right; margin-right: 25%"class ="btn btn-primary" type="submit" name="" value="Submit Form" >
    </form>
   </div>
   
   
   
   
   
   
   
   
   
<!-- Office Shift -->
     <div id = "hide2" hidden=true>
<form action="Office_Controller" method="post" accept-charset="utf-8">
    <table>
      <tr>
        <div class= "div1">

          <td class = "td1"> 
            <label for="fname">Office Name*</label>
            <input class ="form-control" type="text" name="o_name" value="" placeholder="Name">
          </td>
        </div>

        <div>

          <td class = "td1">
            <label for="num">Booking Mobile Number*</label>
            <input class ="form-control" type="number" name="o_mno" value="" placeholder="Mobile Number">
          </td>
        </div>

        <div>

          <td class = "td1"> <label for="email">Email Address*</label> 
            <input class ="form-control" type="email" name="o_email" value="" placeholder="Email">
          </td>
        </div>

        <div>

          <td class = "td1"> 
            <label for="source">Office Source*</label> 
            <!-- <input class ="form-control" type="email" name="email" value="" placeholder=""> -->
            <select class="form-control" name="o_source">
              <option value="">Select</option>
              <option value="Chennai">Chennai</option>
              <option value="vellore">Vellore</option>
              <option value="salem">Salem</option>
              <option value="Erode">Erode</option>
              <option value="Coimbatore">Coimbatore</option>
            </select>

          </td>
        </div>

        <div>

          <td class = "td1"> <label for="">To Destination*</label> 
           <select class="form-control" name="o_dest">
            <option value="">Select</option>
            <option value="Chennai">Chennai</option>
            <option value="vellore">Vellore</option>
            <option value="salem">Salem</option>
            <option value="Erode">Erode</option>
            <option value="Coimbatore">Coimbatore</option>
          </select>
        </td>
      </div>
    </tr>

    <tr>
      <div>
        <td style = "padding: 10px"> 
          <label for="fname">From Address*</label>
          <textarea class="form-control" name="o_fromaddress" rows="3"></textarea>
        </td>
      </div>

      <div>

        <td style = "padding: 10px">
          <label for="num">To Address*</label>
          <textarea class="form-control" name="o_toaddress" rows="3"></textarea>
        </td>
        <td style = "padding: 10px">
           <input type="number" id="order_id" name="o_Id"  placeholder="" hidden>
        </td>
      </div>
      </table>
      <input style = "position: relative; float: right; margin-right: 25%"class ="btn btn-primary" type="submit" name="" value="Submit Form" >
    </form>
   </div>

<div id = "hide3" hidden=true>

<form action="Vehicle_Controller" method="post" accept-charset="utf-8">
    <table>
      <tr>
         <div>

          <td class = "td1"> <label for="email">Vehicle Type*</label> 
           <select class="form-control" name="source">
            <option value="">Select</option>
            <option value="Bike">Bike</option>
            <option value="Car">Car</option>
            <option value="Bicyles">Biycles</option>
          </select>
        </td>
      </div>
        <div class= "div1">

          <td class = "td1"> 
            <label for="fname">Vehicle Name and Number*</label>
            <input class ="form-control" type="text" name="fname" value="" placeholder="Vehicle Name / Number
            ">
          </td>
        </div>

        <div>

          <td class = "td1">
            <label for="num">Booking Mobile Number*</label>
            <input class ="form-control" type="number" name="num" value="" placeholder="Mobile Number">
          </td>
        </div>

        <div>

          <td class = "td1"> <label for="email">Email Address*</label> 
            <input class ="form-control" type="email" name="email" value="" placeholder="Email Address">
          </td>
        </div>

        <div>

          <td class = "td1"> 
            <label for="source">Source*</label> 
            <!-- <input class ="form-control" type="email" name="email" value="" placeholder=""> -->
            <select class="form-control" name="source">
              <option value="">Select</option>
              <option value="Chennai">Chennai</option>
              <option value="vellore">Vellore</option>
              <option value="salem">Salem</option>
              <option value="Erode">Erode</option>
              <option value="Coimbatore">Coimbatore</option>
            </select>

          </td>
        </div>

        <div>

          <td class = "td1"> <label for="email">Destination*</label> 
           <select class="form-control" name="source">
            <option value="">Select</option>
            <option value="Chennai">Chennai</option>
            <option value="vellore">Vellore</option>
            <option value="salem">Salem</option>
            <option value="Erode">Erode</option>
            <option value="Coimbatore">Coimbatore</option>
          </select>
        </td>
      </div>
    </tr>

    <tr>
      <div>
        <td style = "padding: 10px"> 
          <label for="fname">From Address*</label>
          <textarea class="form-control" name="" rows="3"></textarea>
        </td>
      </div>

      <div>

        <td style = "padding: 10px">
          <label for="num">To Address*</label>
          <textarea class="form-control" name="" rows="3"></textarea>
        </td>
      </div>
    </tr>
    </div>
      </table>
      <input style = "position: relative; float: right; margin-right: 25%"class ="btn btn-primary" type="button" name="" value="Submit Form" onclick="alerts()">
    </form>
   </div>

<footer>

  <p><strong>NO: 23, BHARATHIYAR STREET, POSTAL COLONY, KOYAMBEDU, CHENNAI-25.</strong></p>
  <small>CONTACT NO : 9865098422.</small>


</footer> 
</body>

</html>
