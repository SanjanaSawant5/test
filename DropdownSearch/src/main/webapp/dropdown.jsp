<%@page import="com.dropdown.bean.Propertynames"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="java.util.*"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dropdown</title>
</head>
<body>
	<center>
	 
		<label for="property-name">Property Name:</label>
		<select name="property-name" id="property-name">
		<option value="-1">Select Property Name</option>
			
			<%
				try {  
					String Query = "select * from propertyname";
					Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parkingportal","root","Intern@1234");
					Statement stm = conn.createStatement();
					ResultSet rs =  stm.executeQuery(Query);
					while(rs.next()) {
			%>
			<option value="<%=rs.getInt("id")%>"><%=rs.getString("property")%></option>
			<%
					}
				}
				catch(Exception ex) {
					ex.printStackTrace();
					out.println("Error  " + ex.getMessage());
				}
			%>
		</select>
		
		 
		<label for="tcode">Tcode:</label>
		<select name="tcode" id="tcode">
			<option value="-1">Select Tcode</option>
			
			
			<%
				try {  
					String Query = "select * from propertyname";
					Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
					Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parkingportal","root","Intern@1234");
					Statement stm = conn.createStatement();
					ResultSet rs =  stm.executeQuery(Query);
					while(rs.next()) {
			%>
			<option value="<%=rs.getInt("id")%>"><%=rs.getString("code")%></option>
			<%
					}
				}
				catch(Exception ex) {
					ex.printStackTrace();
					out.println("Error  " + ex.getMessage());
				}
			%>
		</select>
		
		
	        <%
	        Property property = (Property) session.getAttribute("property");
	        if (property != null) {
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
	<td><%=propertyname.getCode()%></td>
	<td><%=propertyname.getProperty()%></td>
	<td><%=propertyname.getUnits()%></td>
	<td><%=propertyname.getAddress()%></td>
	<td><%=propertyname.getManager()%></td>
	<td><%=propertyname.getApt()%></td>
	<td><%=propertyname.getExt()%></td>
	<td><%=propertyname.getPhone()%></td>
	<td><%=propertyname.getFax()%></td>
	<td><%=propertyname.getCity()%></td>
	<td><%=propertyname.getZip()%></td>
	<td><%=propertyname.getState()%></td>
	<td><%=propertyname.getEmailid()%></td>
	<td><%=propertyname.getDays()%></td>
	<td><%=propertyname.getStart()%></td>
	<td><%=propertyname.getEnd()%></td>
	</tr>
	</table>
	<% 
	}
	%>
	<button type="submit">Submit</button> 
</form>

</center>
</body>

</html>