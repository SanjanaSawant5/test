<%@page import="com.test.bean.Propertynames"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>
	<h1 style="background-color: SteelBlue; text-align: center; color: white; padding: 30px; font-size: 30px; font-family: verdana;">Property Names</h1>	
	<%
	Propertynames propertynames = (Propertynames) session.getAttribute("propertynames");
	if (propertynames != null) {
	%>
<table style="width:100%;border:1px;">
<tr>
	<th>Code</th>
	<th>Property Name</th>
	<th>Units</th>
	<th>Address</th>
	<th>Manager</th>
	<th>Apt</th>
	<th>Ext</th>
	<th>Phone</th>
	<th>Fax</th>
	<th>City</th>
	<th>Zip</th>
	<th>State</th>
	<th>EmailID</th>
	<th>Days</th>
	<th>Start</th>                             
	<th>End</th>
	</tr>
	<tr>
	<td><%=propertynames.getCode()%></td>
	<td><%=propertynames.getProperty()%></td>
	<td><%=propertynames.getUnits()%></td>
	<td><%=propertynames.getAddress()%></td>
	<td><%=propertynames.getManager()%></td>
	<td><%=propertynames.getApt()%></td>
	<td><%=propertynames.getExt()%></td>
	<td><%=propertynames.getPhone()%></td>
	<td><%=propertynames.getFax()%></td>
	<td><%=propertynames.getCity()%></td>
	<td><%=propertynames.getZip()%></td>
	<td><%=propertynames.getState()%></td>
	<td><%=propertynames.getEmailid()%></td>
	<td><%=propertynames.getDays()%></td>
	<td><%=propertynames.getStart()%></td>
	<td><%=propertynames.getEnd()%></td>
	</tr>
	<% 
	}
	%>
</table>
</body>
</html>