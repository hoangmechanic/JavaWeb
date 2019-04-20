package com.guessNumber;

import java.util.Scanner;

public class ForDemo {

	public static void main(String[] args) {
		banCuuChuong();
		//mang();
		//TongMang();
	}

	private static void banCuuChuong() {
		outer: for (int x = 2; x <= 9; x++) {
			for (int i = 1; i <= 10; i++) {
				// System.out.printf("%d x %d = %d \n",x,i, x*i);
				System.out.println(x + " x " + i + " = " + x * i);
				if (i==5) {
					break outer;
				}
			}
			System.out.println("------------------------------");
		}
	System.out.println("da bi break");

	}

	private static void mang() {
		int[] x = new int[5];
		Scanner scanner = new Scanner(System.in);
		for(int i = 0; i < x.length; i++) {
			System.out.printf("Nhap phan tu thu %d :" , i+1);
			x[i] = scanner.nextInt();
		}
		System.out.println("Mang chua ban la:");
		for(int i = 0; i < x.length; i++) {
			System.out.printf(" %d \t",x[i]);
		}
	}

	private static void TongMang() {
		int[] x = new int[5];
		Scanner scanner = new Scanner(System.in);
		for(int i = 0; i < x.length; i++) {
			System.out.printf("Nhap phan tu thu %d :" , i+1);
			x[i] = scanner.nextInt();
		}
		System.out.println("Mang chua ban la:");
		int sum = 0;
		for(int no: x) {
//			sum = sum + no;
			sum += no;
		}
		System.out.println("Thong cac so trong mang la :"+sum);
	}

}
