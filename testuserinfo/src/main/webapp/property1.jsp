<%@page import="com.test.bean.Property"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="styles.css">
<title>Accept & Reject Form</title>
</head>
<body>
	<h1 style="background-color: SteelBlue; text-align: center; color: white; padding: 30px; font-size: 30px;">Admin Portal</h1>
	<form action="PropertyServlet" method="POST">
    T-code :<input type="text" name="username"></br>
    Password :<input type="password" name="password"></br><input type="submit">
	</form>
	<%
	Property property = (Property) session.getAttribute("property");
	if (property != null) {
	%>
	<table style="width:100%">
	<tr>
	<th>Name</th>
	<th>Address</th>
	<th>Age</th>
	<th>Registration Document</th>                             
	<th>Insurance Document</th>
</tr>

<tr>
<td><%=property.getName()%></td>
<td><%=property.getAddress()%></td>
<td><%=property.getAge()%></td>
<td><%=property.getRegdoc()%><form method="POST">
  <input type="submit" name="accept" id="accept" value="Accept" style="background-color: #4CAF50; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;">
  <input type="submit" name="decline" id="decline" value="Decline" style="background-color: #f44336; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;">
</form></td>
<td><%=property.getInsdoc()%><form method="POST">
  <input type="submit" name="accept" id="accept" value="Accept" style="background-color: #4CAF50; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;">
  <input type="submit" name="decline" id="decline" value="Decline" style="background-color: #f44336; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;">
</form></td>
</table>
	<% 
	}
	%>
 
 

</body>

<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  text-align: center;
}

form {
  width: 50%;
  margin: 0 auto;
  text-align: center;
}

body {
  font-family: Arial, sans-serif;
  background-color: #f5f5f5;
}

button {
  background-color: LightSkyBlue;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  margin: auto;   
}

input[type="submit"] {
  background-color: LightSkyBlue;
  color: white;
  padding: 14px 20px;
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
  margin: 20px;
  padding: 0;
  overflow: hidden;
  background-color: LightSkyBlue;
  position: sticky;
}

li {
  float: left;
}

li a {
  display: block;
  color: black;
  text-align: center;
  padding: 24px 26px;
  text-decoration: none;
}

li a:hover {
  background-color:#4682B4;
  border: #7c71c1;
}
</style>
</html>