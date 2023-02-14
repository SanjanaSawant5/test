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
	<h1>User Information</h1>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parkinginfo", "root", "Intern@1234");
			stmt = conn.prepareStatement("SELECT * FROM users WHERE username=? AND password=?");
			stmt.setString(1, username);
			stmt.setString(2, password);
			rs = stmt.executeQuery();

			if (rs.next()) {
				int age = rs.getInt("age");
				String name = rs.getString("name");
				String address = rs.getString("address");
	%>
				<p>Age: <%= age %></p>
				<p>Name: <%= name %></p>
				<p>Address: <%= address %></p>
	<%
			} else {
	%>
				<p>No user found with the given username and password</p>
	<%
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	%>
</body>
</html>
