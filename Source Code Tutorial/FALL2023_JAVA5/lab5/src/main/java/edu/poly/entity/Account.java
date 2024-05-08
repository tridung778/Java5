package edu.poly.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import lombok.Data;

@Data
@Entity
@Table(name = "Accounts")
public class Account implements Serializable{
	@Id
	private String username;
	private String password;
	private String fullname;
	private String email;
	private String photo;
	private Boolean activated;
	private Boolean admin;
	@OneToMany(mappedBy = "account")
	private List<Order> orders;
}
