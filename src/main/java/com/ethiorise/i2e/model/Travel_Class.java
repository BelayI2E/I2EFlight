package com.ethiorise.i2e.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Travel_Class implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	
	
	@Column(name="class_name",nullable=false)
	private String class_name;
	@Column(name="class_description")
	private String class_description;
	
	@Column(name="class_price",nullable=false)
	private String class_price;
	
	public Travel_Class() {}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getClass_name() {
		return class_name;
	}

	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}

	public String getClass_price() {
		return class_price;
	}

	public void setClass_price(String class_price) {
		this.class_price = class_price;
	}

	public String getClass_description() {
		return class_description;
	}

	public void setClass_description(String class_description) {
		this.class_description = class_description;
	}
	
	
	

}
