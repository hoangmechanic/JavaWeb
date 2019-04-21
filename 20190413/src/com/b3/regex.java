package com.b3;

import java.util.Scanner;

public class regex {

	private static Scanner scanner = new Scanner(System.in);
	public static void main(String[] args) {
//		basic();
		validate();
	}

	private static void validate() {
		System.out.print(">> Id:"); // 5 ký tự hoa
		String id = scanner.nextLine();

		System.out.print(">> Email:"); // Email
		String email = scanner.nextLine();

		System.out.print(">> Mobile:"); // Mobile VN
		String mobile = scanner.nextLine();

		System.out.print(">> Motobike number:"); // So xe Sai Gon
		String moto = scanner.nextLine();

		System.out.print(">> Description:"); // Nhieu nhat 20 ki tu
		String desc = scanner.nextLine();

		StringBuffer errors = new StringBuffer();
		if (!id.matches("[A-Z]{5}")) {
			errors.append("\n\t+ Invalid id!");
		}
		if (!email.matches("\\w+@\\w+(\\.\\w+){1,2}")) {
			errors.append("\n\t+ Invalid email!");
		}
		if (!mobile.matches("0\\d{9,10}")) {
			errors.append("\n\t+ Invalid mobile number");
		}
		if (!moto.matches("5\\d-[A-Z]\\d-((\\d{4})|(\\d{3}\\.\\d{2}))")) {
			errors.append("\n\t+ Invalid moto number");
		}
		if (!desc.matches(".{0,20}")) {
			errors.append("\n\t+ Invalid description");
		}
		System.out.println(errors.toString());
	}
	private static void basic() {
		String s= "ABCD";
		
		System.out.println(s.matches("[0-9]+"));
		System.out.println(s.matches("[A-Z]+"));
		System.out.println(s.matches("[A-Z]{2,3}"));
		System.out.println(s.matches("[A-Z]"));
		
	}

}
