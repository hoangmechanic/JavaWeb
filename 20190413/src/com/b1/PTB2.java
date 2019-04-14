package com.b1;

import java.util.Scanner;

public class PTB2 {

	public static void main(String[] args) {
		giaiPTB1();
		giaiPTB2();

	}
	private static void giaiPTB1() {
		Scanner scan = new Scanner(System.in);
		System.out.println("ax + b= 0");
		System.out.println("Vui long nhap hai so nguyen:");
		double a = scan.nextInt();
		double b = scan.nextInt();
		if(a == 0) {
			if(b==0) {
				System.out.println("vo so nghiem");
			} else {
				System.out.println("vo nghiem");
			}
		} else {
			double c = a/b;
			System.out.println("1 nghiem: " + c);
		}
	}
	private static void giaiPTB2() {
		Scanner scan = new Scanner(System.in);
		System.out.println("ax^2 + bx +c= 0");
		System.out.println("Vui long nhap 3 so nguyen:");
		double a = scan.nextInt();
		double b = scan.nextInt();
		double c = scan.nextInt();
		double detal= Math.pow(b, 2);
		if(detal < 0) {
				System.out.println("vo nghiem");
		} else if( detal ==0) {
			double x0 = -b/(2*a);
			System.out.println("1 nghiem"+ x0);
		} else {
			double x1 = (-b +Math.sqrt(detal))/(2*a);
			double x2 = (-b -Math.sqrt(detal))/(2*a);
			System.out.println("2 nghiem "+ x1+ " ,  "+x2);
		}
	}
}
