package com.boardweb.biz.util;

public class AuthInfo {
	private int serial;
	private String id;
	private String name;
	//------------------------------------------------------------
	public AuthInfo(String id, String name, int serial) {
		this.id=id;
		this.name=name;
		this.serial = serial;
	}
	//------------------------------------------------------------
	public int getSerial() {
		return serial;
	}
	public void setSerial(int serial) {
		this.serial = serial;
	}
	//------------------------------------------------------------
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	//------------------------------------------------------------
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	//------------------------------------------------------------
}
