package com.test.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.test.bean.Propertynames;

public class PropertynamesDao {
	
	private Connection con;
	
	public PropertynamesDao(Connection con) {
		this.con = con;
	}
	
	public List<Propertynames> getPropertynamesByCodeAndProperty(int code, String property) {
		List<Propertynames> propertynamesList = new ArrayList<>();
		try {
			String query = "SELECT * FROM propertynames";
			PreparedStatement psmt = this.con.prepareStatement(query);
			psmt.setInt(1, code);
			psmt.setString(2, property);
			ResultSet rs = psmt.executeQuery();
			if(rs.next()) {
				int units = rs.getInt("units");
				String address = rs.getString("address");
				String manager = rs.getString("manager");
				String apt = rs.getString("apt");
				String ext = rs.getString("ext");
				String phone = rs.getString("phone");
				String fax = rs.getString("fax");
				String city = rs.getString("city");
				int zip = rs.getInt("zip");
				String state = rs.getString("state");
				String emailid = rs.getString("emailid");
				String days = rs.getString("days");
				String start = rs.getString("start");
				String end = rs.getString("end");
				Propertynames propertynames = new Propertynames(code, property, units, address, manager, apt, ext, phone, fax, city, zip, state, emailid, days, start, end);
				propertynamesList.add(propertynames);
			}
		} catch (SQLException e) {
	         e.printStackTrace();
	      }
		 return propertynamesList;
	}

}
