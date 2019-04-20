package com.guessNumber;

import java.util.Scanner;

public class GuessNumberGame {

	public static void main(String[] args) {
		getNumber();

	}

	private static void getNumber() {
		System.out.println("Chao mung ban den voi tro choi doan so");
		System.out.println("Vui long nhap mot so tu ban phim trong pham vi 1- 20");
		Scanner scanner = new Scanner(System.in);
		int input = -1;
		int target = (int) Math.round(Math.random()*20);
		while(input != target) {
			System.out.print("So ban chon: ");
			input = scanner.nextInt();
			if (input < target) {
				System.out.println("So ban doan nho hon muc tieu");
			} else if (input > target){
				System.out.println("So ban doan lon hon muc tieu");
			}
		}
		scanner.close();
		System.out.println("Chuc mung ban da doan dung");
		System.out.println("Ket thuc tro choi");

	}
	
}
