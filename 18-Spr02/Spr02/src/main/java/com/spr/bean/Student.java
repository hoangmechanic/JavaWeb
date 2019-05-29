package com.spr.bean;

public class Student {
	String fullname = "Nguyễn Nghiệm";
	double mark = 0;
	
	public Student() {
		super();
	}
	
	public Student(String fullname, double mark) {
		super();
		this.fullname = fullname;
		this.mark = mark;
	}
	
	public String getGrade() {
		if(this.mark < 5) {
			return "Fails";
		}
		return "Pass";
	}
	
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public double getMark() {
		return mark;
	}
	public void setMark(double mark) {
		this.mark = mark;
	}
}
