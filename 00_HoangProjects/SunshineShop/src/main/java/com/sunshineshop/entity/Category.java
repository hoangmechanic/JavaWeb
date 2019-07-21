package com.sunshineshop.entity;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;

import net.minidev.json.annotate.JsonIgnore;

import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
@Table(name="Categories")
public class Category implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int Id;

	private String name;
	private String nameVN;

	@JsonIgnore
	@OneToMany(mappedBy="category", fetch= FetchType.EAGER)
	private List<Product> products;

	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNameVN() {
		return nameVN;
	}
	public void setNameVN(String nameVN) {
		this.nameVN = nameVN;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
