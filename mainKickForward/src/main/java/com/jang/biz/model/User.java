package com.jang.biz.model;

import javax.validation.constraints.NotEmpty;

public class User {

	private int no;
	@NotEmpty(message = "아이디를 입력해주세요.")
	private String id;
	@NotEmpty(message = "비밀번호를 입력해주세요.")
	private String pass;
	@NotEmpty(message = "재확인 비밀번호를 입력해주세요.")
	private String pass2;
	@NotEmpty(message = "이름을 입력하세요.")
	private String name;
	private String phone;
	@NotEmpty(message = "이메일을 입력하세요.")
	private String email;
	private String license;
	private String billingKey;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public String getPass2() {
		return pass2;
	}

	public void setPass2(String pass2) {
		this.pass2 = pass2;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getLicense() {
		return license;
	}

	public void setLicense(String license) {
		this.license = license;
	}

	public String getBillingKey() {
		return billingKey;
	}

	public void setBillingKey(String billingKey) {
		this.billingKey = billingKey;
	}

}
