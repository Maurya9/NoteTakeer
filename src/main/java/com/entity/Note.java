package com.entity;

import java.util.Date;
import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Note {
	@Id
	private int id;
	private String Title;
	private String Content;
	private Date addedDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Note( String title, String content, Date addedDate) {
		super();
		this.id = new Random().nextInt(10000);
		Title = title;
		Content = content;
		this.addedDate = addedDate;
	}
	
	

}
