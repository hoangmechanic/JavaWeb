package com.b3;

public class Student {

	String fullName;
	double mark;
	public Student(String fullName, double mark) {
		this.fullName = fullName;
		this.mark = mark;
	}
	public String getGrade() {
		if(mark<5) {
			return "Yeu/kem";
		}
		if(mark>8) {
			return "Gio/Xuat sắc";
		}
		return "Trung binh/Kha";
	}

}
