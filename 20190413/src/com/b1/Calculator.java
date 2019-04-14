package com.b1;

import java.util.Scanner;

public class Calculator {

	public static void main(String[] args) {
		System.out.println("Thông tin sinh viên");
		System.out.println("--------------------");

		Scanner scanner = new Scanner(System.in);

		System.out.print("+ Điểm trung bình: 	Scanner scanner = new Scanner(System.in);");
		double mark = scanner.nextDouble();
		scanner.nextLine();
		
	
		System.out.print("+ Họ và tên: ");
		String name = scanner.nextLine();
		
		
		System.out.println("KẾT QUẢ");
		System.out.printf(">> %s có điểm trung bình là %2f", name, mark);
		scanner.close();
		
	}

}
