package com.guessNumber;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Mang {
	private static String[] words = {"Khong","Mot","Hai","Ba","Bon","Nam","Sau","Bay","Tam","Chin"};
	private static String[] units = {"","ngan","trieu","ty"};
	public static void main(String[] args) {
		//basic();
//		int n = 123;
//		read(n);
		sort();
	}

	private static void basic() {
		int[] a = {8,9,10,11,12};
		int[] b = new int[a.length];
		for (int i =0; i< a.length; i++) {
			b[i] = (int) Math.pow(a[i], 3);
			
		}
		for(int x: b) {
			System.out.printf(">>%d\n",x);
			System.out.println();
		}
		System.out.printf("b[%d] = %d, b.length = %d",2,b[2], b.length);
	}
	private static int[] min(int [] a) {
		int min = a[0];
		int index = -1;
		for (int i =0; i< a.length; i++) {
			if(min<a[i]) {
				min = a[i];
				index = i;
				break;
			}			
		}
		return new int[] {min, index};
	}

//	private static List<String> sort_Recursive(List<String> list, int [] input) {
//		list.add(min(input)[0]);
//		int [] input2 = 
//		for(int a: input) {
//			
//		}
//		sort_Recursive(list, )
//		return list;
//		
//	}

	private static void read(int n) {
		if(n==0) {
			System.out.println("Khong");
		} else {
			int x = (n / 100) % 10; // Chu so hang tram
			int y = (n / 10) % 10; // Chu so hang chuc
			int z = (n / 1) % 10; // Chu so hang don vi
			int a = n / 1000; // So con lai
			System.out.print(words[x] + " tram ");
			System.out.print(words[y] + " muoi ");
			System.out.print(words[z]);
			if (a > 0 || x != 0) {
				System.out.printf("%s tram", words[x]);
			} else if (y == 0 && (x > 0 || a > 0)) {
				System.out.printf("linh");
			} else {
				System.out.printf("%s muoi", words[y]);
			}
			if (z == 1 && y <= 1) {
				System.out.printf("mot");
			} else if (z == 5 && y > 0) {
				System.out.printf("lam");
			} else if (z != 0) {
				System.out.printf("%s", words[z]);
			}
		}
		
	}

	private static void sort() {
		int x, a[] = {3, 9, 12, 1, 7, 5};
		System.out.println(Arrays.toString(a));
		Arrays.sort(a);
		System.out.println(Arrays.toString(a));
		int i  = Arrays.binarySearch(a, 5);
//		System.out.printf("i = %d, a[%d] = %.0f",i ,i, a[i]);
		Arrays.fill(a, 2019);
		System.out.println(Arrays.toString(a));
	}
}
