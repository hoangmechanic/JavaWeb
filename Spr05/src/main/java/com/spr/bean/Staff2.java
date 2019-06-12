package com.spr.bean;

import java.util.List;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class Staff2 {

	@NotNull(message="Không để trống mã")
	Integer id;
	@NotBlank
	String fullName;
	@NotNull
	Boolean gender;
	@NotNull
	@NotBlank
	@NotEmpty
	String email;
	@NotNull
	Double salary;
	@NotNull
	@NotBlank
	@NotEmpty
	String position;
	@NotNull
	@NotEmpty
	List<String> hobbies;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public Boolean getGender() {
		return gender;
	}
	public void setGender(Boolean gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Double getSalary() {
		return salary;
	}
	public void setSalary(Double salary) {
		this.salary = salary;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public List<String> getHobies() {
		return hobbies;
	}
	public void setHobies(List<String> hobies) {
		this.hobbies = hobies;
	}

}
