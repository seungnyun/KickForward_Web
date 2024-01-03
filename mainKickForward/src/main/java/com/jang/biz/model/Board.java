package com.jang.biz.model;

import javax.validation.constraints.NotEmpty;

import org.springframework.web.multipart.MultipartFile;

public class Board {

	private int bno;
	@NotEmpty(message = "글제목이 입력되지 않았습니다.")
	private String title;
	@NotEmpty(message = "글내용이 입력되지 않았습니다.")
	private String content;
	private int viewcnt = 0;
	private int replycnt = 0;
	private int recommendcnt = 0;
	private String reg_Date;
	private char del_yn = 'n';
	@NotEmpty(message = "작성자가 입력되지 않았습니다.")
	private String writerId;

	private String kbnumber;

	private String location;

	// 파일업로드
	private String file_name;

	private MultipartFile uploadFile;

	private String repair;

	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}

	public int getReplycnt() {
		return replycnt;
	}

	public void setReplycnt(int replycnt) {
		this.replycnt = replycnt;
	}

	public int getRecommendcnt() {
		return recommendcnt;
	}

	public void setRecommendcnt(int recommendcnt) {
		this.recommendcnt = recommendcnt;
	}

	public String getReg_Date() {
		return reg_Date;
	}

	public void setReg_Date(String reg_Date) {
		this.reg_Date = reg_Date;
	}

	public char getDel_yn() {
		return del_yn;
	}

	public void setDel_yn(char del_yn) {
		this.del_yn = del_yn;
	}

	public String getWriterId() {
		return writerId;
	}

	public void setWriterId(String writerId) {
		this.writerId = writerId;
	}

	public String getkbnumber() {
		return kbnumber;
	}

	public void setkbnumber(String kbnumber) {
		this.kbnumber = kbnumber;
	}

	public String getlocation() {
		return location;
	}

	public void setlocation(String location) {
		this.location = location;
	}

	//파일첨부 
	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public Board() {
	}

	public Board(int bno, String title, String content, int viewcnt, int replycnt, int recommendcnt, String reg_Date,
		char del_yn, String writerId, String kbnumber, String location, String file_name, MultipartFile uploadFile,
		String repair) {
		this.bno = bno;
		this.title = title;
		this.content = content;
		this.viewcnt = viewcnt;
		this.replycnt = replycnt;
		this.recommendcnt = recommendcnt;
		this.reg_Date = reg_Date;
		this.del_yn = del_yn;
		this.writerId = writerId;
		this.kbnumber = kbnumber;
		this.location = location;
		this.file_name = file_name;
		this.uploadFile = uploadFile;
		this.repair = repair;
	}

	public String getrepair() {
		return repair;
	}

	public void setrepair(String repair) {
		this.repair = repair;
	}

	@Override
	public String toString() {
		return "Board [bno=" + bno + ", title=" + title + ", content=" + content + ", viewcnt=" + viewcnt
			+ ", kbnumber=" + kbnumber + ", location=" + location + ", reg_Date=" + reg_Date + ", del_yn=" + del_yn
			+ ", writerId=" + writerId + ", file_name=" + file_name + ", uploadFile=" + uploadFile + ",repair=" + repair
			+ "]";
	}

}
