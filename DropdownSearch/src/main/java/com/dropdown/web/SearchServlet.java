package com.dropdown.web;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // Get the selected dropdown values from the form
    String propertyName = request.getParameter("property-name");
    String tcode = request.getParameter("tcode");
    String tenantName = request.getParameter("tenant-name");

    // Fetch the data from the database based on the selected dropdown values
    try {
      Class.forName("com.mysql.jdbc.Driver");
      Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/parkingportal", "root", "Intern@1234");
      Statement stmt = conn.createStatement();
      String query = "SELECT * FROM propertyname WHERE property = '" + propertyName + "' AND code = '" + tcode + "'";
      ResultSet rs = stmt.executeQuery(query);

      // Process the fetched data and generate the HTML response
      // ...
    } catch (Exception ex) {
      // Handle any exceptions
      // ...
    }
  }
}
