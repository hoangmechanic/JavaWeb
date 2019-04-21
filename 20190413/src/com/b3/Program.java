package com.b3;

import java.util.Scanner;

public class Program {

	static Scanner scanner = new Scanner(System.in);
	public static void main(String[] args) {
		basic();

	}

	private static void basic() {
		Student sv = new Student("Nguyễn Hoàng", 10);
		String xeploai = sv.getGrade();
		System.out.println(xeploai);
		
	}

	private static void advance() {
		Student[] dssv = new Student[5];

		for (Student stu : dssv) {
			System.out.print("Nhap ho ten sv:");
			String hovaten = scanner.nextLine();
			System.out.println("Nhap diem:");
			int diem = scanner.nextInt();
			stu = new Student(hovaten, diem);
		}
		for (Student stu : dssv) {
			System.out.println(stu.fullName + stu.mark +" diem. Xep loai:"+ stu.getGrade());
		}
	}
}
