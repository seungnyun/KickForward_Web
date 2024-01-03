package com.jang.biz.model;

import javax.validation.constraints.NotEmpty;

public class Kick {
	
	private int no;

	@NotEmpty(message="코드가 입력되지 않았습니다")
	private String serialnumber;	
	
	private String in_use;	
	
	private String latitude;
	
	private String longitude;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getSerialnumber() {
		return serialnumber;
	}

	public void setSerialnumber(String serialnumber) {
		this.serialnumber = serialnumber;
	}

	public String getIn_use() {
		return in_use;
	}

	public void setIn_use(String in_use) {
		this.in_use = in_use;
	}	
	
	public String getLatitude() {
		return latitude;
	}
	
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	
	public String getLongitude() {
		return longitude;
	}
	
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

}
