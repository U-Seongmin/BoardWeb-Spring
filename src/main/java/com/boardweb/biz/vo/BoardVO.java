package com.boardweb.biz.vo;

import javax.persistence.Column;
import javax.validation.constraints.Size;

import org.hibernate.annotations.Entity;

@Entity
public class BoardVO {
	@Column
    @Size(min=1, message="제목을 입력해주세요")
	private String title;
	@Column
	private String writer;
	@Column
    @Size(min=1, message="내용을 입력해주세요")
	private String content;

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
