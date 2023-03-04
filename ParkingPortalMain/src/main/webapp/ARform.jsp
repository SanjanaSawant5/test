<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="charset=UTF-8">
<link rel="stylesheet" type="text/css" href="styles.css">
<title>Accept & Reject Form</title>
</head>
<body>

<h1 style="background-color: SteelBlue; text-align: center; color: white; padding: 30px; font-size: 30px;">Admin Portal</h1>
	<form action="SearchServlet" method="POST">
    T-code :<input type="text" name="resident"></br>
    Property Name :<input type="text" name="propertyname"></br><input type="submit">
	</form>
	
</body>
<style>
 
body {
  font-family: Arial, sans-serif;
  background-color: #f5f5f5;
}

form {
  width: 50%;
  margin: 0 auto;
  text-align: center;
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
</style>
</html>