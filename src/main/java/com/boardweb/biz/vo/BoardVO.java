package com.boardweb.biz.vo;

import java.sql.Date;

import javax.persistence.Column;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Entity;

@Entity
public class BoardVO {
	private int serial;
	@Column
    @Size(min=1, message="������ �Է����ּ���")
	private String title;
	@Column
	private String writer;
	@Column
    @Size(min=1, message="������ �Է����ּ���")
	private String content;
	private Date regDate;
	private int cnt;

	public int getCnt() {
		return cnt;
	}

	public int getSerial() {
		return serial;
	}

	public void setSerial(int serial) {
		this.serial = serial;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
