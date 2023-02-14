<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display User Information</title>
</head>
<body>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/parkinginfo", "root", "Intern@1234");
			stmt = con.createStatement();
			rs = stmt.executeQuery("SELECT * FROM users WHERE username='" + username + "' AND password='" + password + "'");
			if (rs.next()) {
		%>
			<table>
				<tr>
					<td>Username:</td>
					<td><%=rs.getString("username")%></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><%=rs.getString("password")%></td>
				</tr>
				 
			</table>
		<%
			} else {
		%>
			<p>No user found with the given username and password.</p>
		<%
			}
		} catch (Exception e) {
			out.println("Error: " + e.getMessage());
		} finally {
			try {
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e) {
				out.println("Error: " + e.getMessage());
			}
		}
	%>
</body>

<style>
  table {
    border-collapse: collapse;
    width: 80%;
    margin: auto;
  }
  th, td {
    border: 1px solid black;
    padding: 8px;
    text-align: left;
  }
  th {
    background-color: #f2f2f2;
  }
  p {
    text-align: center;
    font-size: 1.5em;
  }
</style>

</html>
