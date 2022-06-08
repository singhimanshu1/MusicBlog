package com.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "artist")
public class Artist {
	private String title;
	@Column(length = 1500)
	private String content;

	private int birthday;
	
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
	public int getBirthday() {
		return birthday;
	}
	public void setBirthday(int birthday) {
		this.birthday = birthday;
	}
	public Artist(String title, String content, int birthday) {
		super();
		this.title = title;
		this.content = content;
		this.birthday = birthday;
	}
	public Artist() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
	
}
