package edu.poly.entity;

import java.io.Serializable;
import java.util.List;

import org.hibernate.validator.constraints.Length;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import lombok.Data;

@Data
@Entity
@Table(name = "Categories")
public class Category implements Serializable{
	@Id
	@Length(min = 4, max = 4)
	private String id;
	@NotBlank
	private String name;
	@Column(name = "is_delete")
	private Boolean isDelete = false;
	@OneToMany(mappedBy = "category")
	private List<Product> products;
}
