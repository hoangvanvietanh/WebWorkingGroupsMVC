package com.java.vakapu.model;

import com.java.vakapu.entity.Profile;

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
	
	public void fromProfile(Profile profile)
	{
		this.setEmail(profile.getEmail());
		this.setName(profile.getName());
		this.setAddress(profile.getAddress());
		this.setBirthdate(profile.getBirthdate());
		this.setEducation(profile.getEducation());
		this.setGender(profile.getGender());
		this.setPhone(profile.getPhone());
		this.setAvatar(profile.getAvartar());
		this.setSkill(profile.getSkill());
		this.setSummary(profile.getSummary());
		this.setExperience(profile.getExperience());
	}
	
	public Profile toProfile()
	{
		Profile profile = new Profile();
		profile.setAddress(this.getAddress());
		profile.setAvartar(this.getAvatar());
		profile.setBirthdate(this.getBirthdate());
		profile.setEducation(this.getEducation());
		profile.setEmail(this.getEmail());
		profile.setExperience(this.getExperience());
		profile.setGender(this.getGender());
		profile.setName(this.getName());
		profile.setPhone(this.getPhone());
		profile.setSkill(this.getSkill());
		profile.setSummary(this.getSummary());
		
		return profile;
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
	
	
}
