package com.java.vakapu.model;

import com.java.vakapu.entity.User;

public class ProfileModel {
	
	private String email;
	
	private String name;
	
	private String gender;
	
	private String birthdate;
	
	private String phone;
	
	private String address;
	
	private String summary;
	
	private String skill;
	
	private String experience;
	
	private String education;
	
	private String avatar;
	
	private String about;
	
	public void fromProfile(User user)
	{
		this.setEmail(user.getEmail());
		this.setName(user.getName());
		this.setAddress(user.getAddress());
		this.setBirthdate(user.getBirthdate());
		this.setEducation(user.getEducation());
		this.setGender(user.getGender());
		this.setPhone(user.getPhone());
		this.setAvatar(user.getAvartar());
		this.setSkill(user.getSkill());
		this.setSummary(user.getSummary());
		this.setExperience(user.getExperience());
		this.setAbout(user.getAbout());
	}
	
	public User toProfile()
	{
		User user = new User();
		user.setAddress(this.getAddress());
		user.setAvartar(this.getAvatar());
		user.setBirthdate(this.getBirthdate());
		user.setEducation(this.getEducation());
		user.setEmail(this.getEmail());
		user.setExperience(this.getExperience());
		user.setGender(this.getGender());
		user.setName(this.getName());
		user.setPhone(this.getPhone());
		user.setSkill(this.getSkill());
		user.setSummary(this.getSummary());
		user.setAbout(this.getAbout());
		
		return user;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
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
	public String getSummary() {
		return summary;
	}
	public void setSummary(String summary) {
		this.summary = summary;
	}
	public String getSkill() {
		return skill;
	}
	public void setSkill(String skill) {
		this.skill = skill;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getAbout() {
		return about;
	}

	public void setAbout(String about) {
		this.about = about;
	}
	
	
}
