package com.nhatnghe.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Id;

@Entity
@Table(name ="Categories")
public class Customer {
	@Id	
	String id;
	String password;
	String fullname;
	String email;
	String photo;
	boolean activated;
	boolean admin;
		
}
