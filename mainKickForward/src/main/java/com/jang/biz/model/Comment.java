package com.jang.biz.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Length;

public class Comment {
	
	private Long cno;
	@NotEmpty(message="글내용이 입력되지 않았습니다.")
	@Length(max=300, message="글내용은 300자 이하로 입력해주세요.")
	private String content;
	private String reg_Date;
	@NotEmpty(message="작성자가 입력되지 않았습니다.")
	private String writerId;

	@NotNull(message="게시글 번호가없습니다.")
	private Long bno;

	public Long getCno() {
		return cno;
	}

	public void setCno(Long cno) {
		this.cno = cno;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getReg_Date() {
		return reg_Date;
	}

	public void setReg_Date(String reg_Date) {
		this.reg_Date = reg_Date;
	}

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public Long getBno() {
		return bno;
	}

	public void setBno(Long bno) {
		this.bno = bno;
	}

	@Override
	public String toString() {
		return "Comment{" +
			"cno=" + cno +
			", content='" + content + '\'' +
			", reg_Date='" + reg_Date + '\'' +
			", writerId='" + writerId + '\'' +
			", bno=" + bno +
			'}';
	}
}
