package com.nhathanh.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;
@Data
@SuppressWarnings("serial")
@Entity(name = "Products")
@Table(name = "Products")
public class Product implements Serializable {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;
	@Column(name = "Name")
	String name;
	@Column(name = "Image")
	String image;
	@Column(name = "Price")
	Double price;
	@Temporal(TemporalType.DATE)
	@Column(name = "Createdate")
	Date createDate = new Date();
	@Column(name = "Available")
	Boolean available = false;
	@ManyToOne
	@JoinColumn(name = "Categoryid")
	Category category;
	@OneToMany(mappedBy = "product")
	List<OrderDetail> orderDetails;

}
