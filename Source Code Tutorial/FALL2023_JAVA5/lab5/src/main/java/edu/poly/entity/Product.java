package edu.poly.entity;

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
@Entity
@Table(name = "Products")
public class Product implements Serializable{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private String image;
	private Double price;
	private Integer quantity;
	@Temporal(TemporalType.DATE)
	@Column(name = "CreateDate")
	private Date createDate = new Date();
	@Column(name = "is_delete")
	private Boolean isDelete = false;
	@ManyToOne @JoinColumn(name = "CategoryId")
	private Category category;
	@OneToMany(mappedBy = "product")
	private List<OrderDetail> orderDetails;
}
