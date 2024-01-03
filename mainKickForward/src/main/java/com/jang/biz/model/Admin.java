package com.jang.biz.model;

import javax.validation.constraints.NotEmpty;

public class Admin {

	private int no;

	@NotEmpty(message = "아이디를 입력해주세요.")
	private String id;

	@NotEmpty(message = "비밀번호를 입력해주세요.")
	private String pass;

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

}
