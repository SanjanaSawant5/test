package com.test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.test.bean.User;

public class UserDao {
	
	 private Connection con;

	   public UserDao(Connection con) {
	      this.con = con;
	   }

	   public User getUserByUsernameAndPassword(String username, String password) {
	      User user = null;
	      try {
	         String query = "SELECT * FROM users WHERE username=? AND password=?";
	         PreparedStatement psmt = this.con.prepareStatement(query);
	         psmt.setString(1, username);
	         psmt.setString(2, password);
	         ResultSet rs = psmt.executeQuery();
	         if (rs.next()) {
	            int age = rs.getInt("age");
	            String name = rs.getString("name");
	            String address = rs.getString("address");
	            user = new User(username, password, name, age, address);
	         }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return user;
	   }
	}
