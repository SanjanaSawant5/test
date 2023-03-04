package com.dropdown.bean;

public class Propertynames {
	private int id;
	private int code;
	private String property;
	private int units;
	private String address;
	private String manager;
	private String apt;
	private String ext;
	private String phone;
	private String fax;
	private String city;
	private int zip;
	private String state;
	private String emailid;
	private String days;
	private String start;
	private String end;
	
	public Propertynames(int id, int code, String property, int units, String address, String manager, String apt,
			String ext, String phone, String fax, String city, int zip, String state, String emailid, String days,
			String start, String end) {
		super();
		this.id = id;
		this.code = code;
		this.property = property;
		this.units = units;
		this.address = address;
		this.manager = manager;
		this.apt = apt;
		this.ext = ext;
		this.phone = phone;
		this.fax = fax;
		this.city = city;
		this.zip = zip;
		this.state = state;
		this.emailid = emailid;
		this.days = days;
		this.start = start;
		this.end = end;
	}
	
	public Propertynames() {
		super();
	}
	
	
	public Propertynames(int code, String property, int units, String address, String manager, String apt, String ext,
			String phone, String fax, String city, int zip, String state, String emailid, String days, String start,
			String end) {
		super();
		this.code = code;
		this.property = property;
		this.units = units;
		this.address = address;
		this.manager = manager;
		this.apt = apt;
		this.ext = ext;
		this.phone = phone;
		this.fax = fax;
		this.city = city;
		this.zip = zip;
		this.state = state;
		this.emailid = emailid;
		this.days = days;
		this.start = start;
		this.end = end;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getProperty() {
		return property;
	}
	public void setProperty(String property) {
		this.property = property;
	}
	public int getUnits() {
		return units;
	}
	public void setUnits(int units) {
		this.units = units;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getApt() {
		return apt;
	}
	public void setApt(String apt) {
		this.apt = apt;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getZip() {
		return zip;
	}
	public void setZip(int zip) {
		this.zip = zip;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	

}
