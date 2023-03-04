package com.test.dao;

import java.sql.CallableStatement;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.test.bean.Property;

public class PropertyDao {
	
	 private Connection con;

	   public PropertyDao(Connection con) {
	      this.con = con;
	   }

	   public Property callStoredProcedure(String username, String password) {
		   Property property = null;
	      try {
	         String storedProcedureCall = "CALL login(?,?)";
	         CallableStatement stmt = this.con.prepareCall(storedProcedureCall);
	         stmt.setString(1, username);
	         stmt.setString(2, password);
	         boolean hasResult = stmt.execute();
	         
	         if (hasResult) {
	        	 ResultSet rs = stmt.getResultSet();
	        	 
	        	 if (rs.next()) {
	            int age = rs.getInt("age");
	            String name = rs.getString("name");
	            String address = rs.getString("address");
	            String regdoc = rs.getString("regdoc");
	            String insdoc = rs.getString("insdoc");
	            property = new Property(username, password, name, age, address, regdoc, insdoc);
	         }
	         }
	         
	         hasResult = stmt.getMoreResults();
	         if(hasResult) {
	        	 ResultSet rs = stmt.getResultSet();
	        	 while(rs.next()) {
	         }
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return property;
	   }
	}