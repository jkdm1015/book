package com.hompage.member.beans;

public class MemberVo {
	 private String id;			//아이디
	 private String pass;		//비밀번호
	 private String name;		//이름	
	 private String email;		//이메일
	 private String sent;		//메일수신여부
	 private int ph;			//연락처
	 private String gender;		//성별
	 private String birth;		//생일
	 private String address;	//주소
	 private boolean admin;		//운영자 여부
	 
	 
	public boolean isAdmin() {
		return admin;
	}
	public void setAdmin(boolean admin) {
		this.admin = admin;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getSent() {
		return sent;
	}
	public void setSent(String sent) {
		this.sent = sent;
	}
	public int getPh() {
		return ph;
	}
	public void setPh(int ph) {
		this.ph = ph;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	 
}
