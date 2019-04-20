package com.guessNumber;

import java.util.Scanner;

public class TryCatch {

	public static void main(String[] args) {
		nhapSoNguyenDuong();

	}

	private static void nhapSoNguyenDuong() {
		Scanner scanner = new Scanner(System.in);
		while(true) {
			try {
				System.out.println("Vui long nhap so nguyen duong");
				int  x = scanner.nextInt();
				
				if (x < 0) {
					System.out.println("Ban vua nhap khong phai so nguyen duong");
				} else {
					break;
				}
						
			} catch (Exception e){
				scanner.nextLine();
				System.out.println("Ban vua nhap khong phai la so!!!");
			}
			
		}
	}
}
