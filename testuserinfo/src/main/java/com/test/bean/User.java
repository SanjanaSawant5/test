package com.test.bean;

public class User {
	
	private int id;
	   private String username;
	   private String password;
	   private String name;
	   private int age;
	   private String address;
	   private String regdoc;
	   private String insdoc;
	   
	   public User(int id, String username, String password, String name, int age, String address, String regdoc, String insdoc) {
		      this.id = id;
		      this.username = username;
		      this.password = password;
		      this.name = name;
		      this.age = age;
		      this.address = address;
		      this.regdoc = regdoc;
		      this.insdoc = insdoc;
		   }
		   

		public User() {
		   }

	   public User(String username, String password, String name, int age, String address, String regdoc, String insdoc) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.age = age;
		this.address = address;
		this.regdoc = regdoc;
	    this.insdoc = insdoc;
	}

	   public int getId() {
	      return id;
	   }

	   public void setId(int id) {
	      this.id = id;
	   }

	   public String getUsername() {
	      return username;
	   }

	   public void setUsername(String username) {
	      this.username = username;
	   }

	   public String getPassword() {
	      return password;
	   }

	   public void setPassword(String password) {
	      this.password = password;
	   }

	   public String getName() {
	      return name;
	   }

	   public void setName(String name) {
	      this.name = name;
	   }

	   public int getAge() {
	      return age;
	   }

	   public void setAge(int age) {
	      this.age = age;
	   }

	   public String getAddress() {
	      return address;
	   }

	   public void setAddress(String address) {
	      this.address = address;
	   }


	public String getRegdoc() {
		return regdoc;
	}


	public void setRegdoc(String regdoc) {
		this.regdoc = regdoc;
	}


	public String getInsdoc() {
		return insdoc;
	}


	public void setInsdoc(String insdoc) {
		this.insdoc = insdoc;
	}
	}