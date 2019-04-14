package com.b1;

import java.util.Scanner;

public class Input {

	public static void main(String[] args) {
		System.out.println("Thực hiện phép tính");
		System.out.println("1. Cộng");
		System.out.println("2. Trừ");
		System.out.println("3. Thoát");
		System.out.print("Vui long chon: ");
		Scanner scan = new Scanner(System.in);
		/*Dua vao gi tri cua choice dethuc hien cong viec mong muon*/
		int choice = scan.nextInt();
		if (choice == 1) {
			add();
		} else if (choice == 2) {
			sub();
		} else if (choice == 3) {
			System.exit(0);
			scan.close();
		} else {
			System.out.println("Vui long chon 1,2,3");
		}

	}

	private static void add() {
		Scanner scan = new Scanner(System.in);
		System.out.println("banj dda chonj phep cong");
		System.out.println("Vui long nhap hai so nguyen:");
		int a = scan.nextInt();
		int b = scan.nextInt();
		int c = a + b;
		System.out.println("Ket qua:" + c);
	}

	private static void sub() {
		Scanner scan = new Scanner(System.in);
		System.out.println("Ban da chon phepo tru");
		System.out.println("Vui long nhap hai so nguyen:");
		int a = scan.nextInt();
		int b = scan.nextInt();
		int c = a - b;
		System.out.println("Ket qua:" + c);
	}
}
