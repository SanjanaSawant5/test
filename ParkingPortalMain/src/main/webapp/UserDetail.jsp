<%@page import="com.parkingportalmain.bean.Search"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="styles.css">
<title>Insert title here</title>
</head>
<body>

     
     
    <% 
	Search search = (Search) session.getAttribute("search");
	%>
	<h1>Insert title here</h1>
	<table style="width: 100%">
	<tr>
	<th>Property Code</th>
	<th>Unit</th>
	<th>Tenant Name</th>
	<th>Parking Space</th>
	<th>Parking Level</th>
	<th>Parking Type</th>
	<th>Vehicle Number</th>
	<th>Registration Tenant Name</th>
	<th>License Number</th>
	<th>Vehicle Model</th>
	<th>Registration Vehicle Document</th>
	<th>Registration Expire Date</th>
	<th>Insurance Document</th>
	<th>Insurance Expire Date</th>
	<th>Status</th>
	<th>Parking Space</th>
	<th>Parking Level</th>
	<th>Parking Type</th>
	<th>Vehicle Number</th>
	<th>Registration Tenant Name</th>
	<th>License Number</th>
	<th>Vehicle Model</th>
	<th>Registration Vehicle Document</th>
	<th>Registration Expire Date</th>
	<th>Insurance Document</th>
	<th>Insurance Expire Date</th>
	<th>Status</th>
	</tr>
	
	<tr>
	<td><%= search.getPropertycode() %></td>
	<td><%= search.getUnit() %></td>
	<td><%= search.getName() %></td>
	<td><%= search.getParkingspace1() %></td>
	<td><%= search.getParkinglevel1() %></td>
	<td><%= search.getParkingtype1() %></td>
	<td><%= search.getVehiclenumber1() %></td>
	<td><%= search.getRegistrationtenantname1() %></td>
	<td><%= search.getLicensenumber1() %></td>
	<td><%= search.getVehiclemodel1() %></td>
	<td><%= search.getRegistrationv1doc() %><form method="POST">
	<input type="submit" name="accept" id="accept" value="Accept" style="background-color: #4CAF50; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;">
    <input type="submit" name="decline" id="decline" value="Decline" style="background-color: #f44336; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;"></td>
	<td><%= search.getRegistrationexpiredate1() %></td>
	<td><%= search.getInsurancev1doc() %><form method="POST">
	<input type="submit" name="accept" id="accept" value="Accept" style="background-color: #4CAF50; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;">
    <input type="submit" name="decline" id="decline" value="Decline" style="background-color: #f44336; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;"></td>
	<td><%= search.getInsuranceexpiredate1() %></td>
	<td><%= search.getStatus1() %></td>
	<td><%= search.getParkingspace2() %></td>
	<td><%= search.getParkinglevel2() %></td>
	<td><%= search.getParkingtype2() %></td>
	<td><%= search.getVehiclenumber2() %></td>
	<td><%= search.getRegistrationtenantname2() %></td>
	<td><%= search.getLicensenumber2() %></td>
	<td><%= search.getVehiclemodel2() %></td>
	<td><%= search.getRegistrationv2doc() %><form method="POST">
	<input type="submit" name="accept" id="accept" value="Accept" style="background-color: #4CAF50; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;">
    <input type="submit" name="decline" id="decline" value="Decline" style="background-color: #f44336; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;"></td>
	<td><%= search.getRegistrationexpiredate2() %></td>
	<td><%= search.getInsurancev2doc() %><form method="POST">
	<input type="submit" name="accept" id="accept" value="Accept" style="background-color: #4CAF50; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;">
    <input type="submit" name="decline" id="decline" value="Decline" style="background-color: #f44336; color: white; padding: 10px 20px; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;"></td>
	<td><%= search.getInsuranceexpiredate2() %></td>
	<td><%= search.getStatus2() %></td>
	</tr>
	</table>
	  
	</form>
	</form> 
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