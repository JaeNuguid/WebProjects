package com.profileviewer.jae;

import java.math.BigInteger;

public class Profile {

	private String id, balance, picture, email, phone, address, profile;
	private int age;
	private BigInteger date_registered;
	private boolean active, blocked;
	private name name;
	

	public String getFullName() {
		return name.getFirst() +" "+ name.getMiddle() +" " + name.getLast();
	}
	
	public String getId() {
		return id;
	}
	public name getName() {
		return name;
	}
	public void setName(name name) {
		this.name = name;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public BigInteger  getDate_registered() {
		return date_registered;
	}
	public void setDate_registered(BigInteger date_registered) {
		this.date_registered = date_registered;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	public boolean isBlocked() {
		return blocked;
	}
	public void setBlocked(boolean blocked) {
		this.blocked = blocked;
	}
	
}

 class name{
	private String first, middle, last;

	public String getFirst() {
		return first;
	}

	public void setFirst(String first) {
		this.first = first;
	}

	public String getMiddle() {
		return middle;
	}

	public void setMiddle(String middle) {
		this.middle = middle;
	}

	public String getLast() {
		return last;
	}

	public void setLast(String last) {
		this.last = last;
	}
}
