<%@page import="com.test.bean.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="styles.css">
<title>Display User Information</title>
</head>
<body>
    <%
	User user = (User) session.getAttribute("user");
	%>
	<h1 style="background-color: SteelBlue; text-align: center; color: white; padding: 30px; font-size: 30px; font-family: verdana;">Welcome <%=user.getName()%></h1>	
	<ul>
<li><a class="nav-link" href="#">Pending Document</a></li> 
<li><a class="nav-link" href="#">Rejected Document</a></li> 
<li><a class="nav-link" href="#">Approved Document</a></li>
</ul>
<table style="width:100%;border:1px;">
<tr>
	<th>Name</th>
	<th>Address</th>
	<th>Age</th>
	<th>Registration Document</th>                             
	<th>Insurance Document</th>
	</tr>
	<tr>
	<td><%=user.getName()%></td>
	<td><%=user.getAddress()%></td>
	<td><%=user.getAge()%></td>
	<td><%=user.getRegdoc()%><form action="/action_page.php"><input type="file" id="myfile" name="filename"><input type="submit"></form></td>
	<td><%=user.getInsdoc()%><form action="/action_page.php"><input type="file" id="myfile" name="filename"><input type="submit"></form></td>
</table>

<div class="container">
  <div class="center">	
 <form action="LogoutServlet" method="GET">
  <button type="submit">Logout</button>
</form>
</div>
</body>

<style>
table {
  margin-top: 200px;
  width: 100%;
  height: 100px;
  border: 2px solid black;
  border-collapse: collapse;
  text-align: center;
}

table, th, td {
  border: 2px solid black;
  border-collapse: collapse;
  text-align: center;
   
}
 
.container { 
  height: 200px;
  position: relative;
  border: none; 
}

.center {
  margin: 0;
  position: absolute;
  top: 100%;
  left: 50%;
  -ms-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}

.form {
  font-size: 18px;
  color: SteelBlue;
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
</style>
</html>