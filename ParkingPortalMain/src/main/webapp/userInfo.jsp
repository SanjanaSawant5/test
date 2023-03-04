<%@page import="com.parkingportalmain.bean.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Users Information</title>
</head>
<body>
   <%
	User user = (User) session.getAttribute("user");
	%>
	<h1 style="background-color: SteelBlue; text-align: center; color: white; padding: 30px; font-size: 30px; font-family: verdana;">Welcome <%= user.getName()%></h1>	

<ul>
<li><a class="nav-link" href="#">Pending Document</a></li> 
<li><a class="nav-link" href="#">Rejected Document</a></li> 
<li><a class="nav-link" href="#">Approved Document</a></li>
</ul>

<table style="width:100%;border:1px;">
<tr>
<th>Property Name</th>
<th>Tenant Name</th>
<th>Vehicle Number 1</th>
<th>License Number 1</th>
<th>Vehicle Model 1</th>
<th>Registration V1 Document</th>
<th>Registration Expire Date 1</th>
<th>Insurance V1 Document</th>
<th>Insurance Expire Date 1</th>
<th>Status1</th>
<th>Vehicle Number 2</th>
<th>License Number 2</th>
<th>Vehicle Model 2</th>
<th>Registration V2 Document</th>
<th>Registration Expire Date 2</th>
<th>Insurance V2 Document</th>
<th>Insurance Expire Date 2</th>
<th>Status2</th>
</tr>

<tr>
<td><%= user.getPropertyname()%></td>
<td><%= user.getName()%></td>
<td><%= user.getVehiclenumber1()%></td>
<td><%= user.getLicensenumber1()%></td>
<td><%= user.getVehiclemodel1()%></td>
<td><%= user.getRegistrationv1doc()%><form action="/action_page.php"><input type="file" id="myfile" name="filename"><input type="submit"></form></td>
<td><%= user.getRegistrationexpiredate1()%></td>
<td><%= user.getInsurancev1doc()%><form action="/action_page.php"><input type="file" id="myfile" name="filename"><input type="submit"></form></td>
<td><%= user.getInsuranceexpiredate1()%></td>
<td><%= user.getStatus1()%></td>
<td><%= user.getVehiclenumber2()%></td>
<td><%= user.getVehiclemodel2()%></td>
<td><%= user.getRegistrationv2doc()%><form action="/action_page.php"><input type="file" id="myfile" name="filename"><input type="submit"></form></td>
<td><%= user.getRegistrationexpiredate2()%></td>
<td><%= user.getInsurancev2doc()%></td>
<td><%= user.getInsuranceexpiredate2()%></td>
<td><%= user.getStatus2()%></td>
</tr>
</table>
</body>
<style>
table {
  margin-top: 100px;
  width: 50%;
  height: 100px;
  border: 2px solid black;
  border-collapse: collapse;
  text-align: center;
  font-size: 10px;
}

table, th, td {
  border: 2px solid black;
  border-collapse: collapse;
  text-align: center;
   
}
 
ul {
  list-style-type: none;
  margin: 10px;
  padding: 0;
  overflow: hidden;
  background-color: SteelBlue;
  position: sticky;
  float: left;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 24px 26px;
  text-decoration: none;
}

li a:hover {
  background-color:#add6f7;
  border: #7c71c1;
}

button {
  background-color: SteelBlue;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  margin: auto;   
}

input[type="submit"] {
  background-color: SteelBlue;
  color: white;
  padding: 10px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type="submit"]:hover {
  background-color: #4682B4;
}

ul {
  list-style-type: none;
  margin: 10px;
  padding: 0;
  overflow: hidden;
  background-color: SteelBlue;
  position: sticky;
  float: left;
}

</style>
</html>