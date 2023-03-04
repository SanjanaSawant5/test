<%@page import="com.test.bean.Property"%>
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
<h1 style="background-color: SteelBlue; text-align: center; color: white; padding: 30px; font-size: 30px;">Property Names</h1>	
<form action="PropertyServlet" method="POST">
    T-Code :<input type="text" name="username"></br>
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
 
</form>
<form action="PropertynamesServlet" method="POST">
<center>
       <label style="margin-right: 10px;"> T-code: </label>
       <select class="form-control" style="width: 250px;">
         <option value="-1">Select T-code</option>
         <%
            try
            {  
            String Query = "select * from propertyname";
            Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parkingportal","root","Intern@1234");
            Statement stm = conn.createStatement();
            ResultSet rs =  stm.executeQuery(Query);
            while(rs.next())
            {
               %>
           <option value="<%=rs.getInt("id")%>"><%=rs.getString("property")%></option>
               <%
            }
            
            }
            catch(Exception ex)
            {
                 out.println("<p style=\"color:red\">Error: " + ex.getMessage() + "</p>");
            }
         
            %>
       </select>
       <br>
       <button type="submit" class="btn btn-primary" id="search-btn">Search</button>
    </center>
</form>

<%
           Connection connection = DriverManager.getConnection ("jdbc:mysql://localhost:3306/parkingportal","root","Intern@1234");
           Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from propertyname") ;
       %>
      <TABLE BORDER="1">
      <TR>
      <TH>ID</TH>
      <TH>CODE</TH>
      <TH>POPERTY</TH>
      <TH>UNITS</TH>
      <TH>ADDRESS</TH>
      <TH>MANAGER</TH>
      <TH>APT</TH>
      <TH>EXT</TH>
      <TH>PHONE</TH>
      <TH>FAX</TH>
      <TH>CITY</TH>
      <TH>ZIP</TH>
      <TH>STATE</TH>
      <TH>EmailID</TH>
      <TH>DAYS</TH>
      <TH>START</TH>
      <TH>END</TH>
      </TR>
      <% while(resultset.next()){ %>
      <TR>
       <TD> <%= resultset.getInt(1) %></td> 
       <TD> <%= resultset.getInt(2) %></TD>
       <TD> <%= resultset.getString(3) %></TD>
       <TD> <%= resultset.getString(4) %></TD>
       <TD> <%= resultset.getString(5) %></TD>
       <TD> <%= resultset.getString(6) %></TD>
       <TD> <%= resultset.getString(7) %></TD>
       <TD> <%= resultset.getString(8) %></TD>
       <TD> <%= resultset.getString(9) %></TD>
       <TD> <%= resultset.getString(10) %></TD>
       <TD> <%= resultset.getString(11) %></TD>
       <TD> <%= resultset.getInt(12) %></TD>
       <TD> <%= resultset.getString(13) %></TD>
       <TD> <%= resultset.getString(14) %></TD>
       <TD> <%= resultset.getString(15) %></TD>
       <TD> <%= resultset.getString(16) %></TD>
       <TD> <%= resultset.getString(17) %></TD>      
      </TR>
      <% } %>
     </TABLE>

</body>
<style>
table {
  margin-top: 10px;
  width: 100%;
  height: 100px;
  border: 1px solid black;
  border-collapse: collapse;
  text-align: center;
}

table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
  text-align: center;
   
}
</style>
</html>
