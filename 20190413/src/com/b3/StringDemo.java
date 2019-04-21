package com.b3;

public class StringDemo {

	public static void main(String[] args) {
		basic2();
	}
	private static void basic() {
		String s1 = "Hello World";
		String s2 = new String("Hello World");
		System.out.printf("\n\t+s1.length()=%d",s1.length());
		System.out.printf("\n\t+s1.toUpperCase()=%s",s1.toUpperCase());
		System.out.printf("\n\t+s1.concat(\"Hello\")=%s",s1.concat("Hello"));
		System.out.printf("\n\t+s1.endsWith(\"Hello\")=%s",s1.endsWith("Hello"));
		System.out.printf("\n\t+s1.indexOf(\"World\")=%d",s1.indexOf("World"));

		System.out.printf("\n\t+s1==s2:%b",s1==s2);
		System.out.printf("\n\t+s1.equals(s2):%b",s1.equals(s2));
		System.out.printf("\n\t+s1.substring(0,4)=%s",s1.substring(0,4));
		System.out.printf("\n\t+s1.substring(4)=%s",s1.substring(4));
	}

	private static void basic2() {
		String[] names = {
				"Nguyễn Quang Tuấn",
				"Đoàn Quang Tuấn",
				"Nguyễn Phi Long",
				"Trần Mỹ Linh"
		};
		System.out.println("Những người có tên là Tuấn hoặc họ Nguyễn");
		for(String name: names) {
			if(name.endsWith(" Tuấn") || name.startsWith("Nguyễn ")){
				System.out.println(name);
			}
		}
		System.out.println("Những người có tên lót là Mỹ có tên là");
		for(String name: names) {
			if(name.toUpperCase().contains(" MỸ ")) {
				String sub = name.substring(name.toUpperCase().lastIndexOf(" MỸ "));
				System.out.println(sub);
			}
		}
	}
	private static void tachChuoi() {
		String str = "1,3,5;          5,8,,,,,,,,,9";
		String[] arrays = str.replaceAll(";","").split(",");
		for(String str1: arrays) {
			System.out.println(str1.trim());
		}
	}
	private static void hamTienIch() {
		String name= "Nguyễn Duy Hoàng";
		int age =18;
		String s= String.format("I am %s 5d years old", name, age);

		String[] names = {
				"Nguyễn Quang Tuấn",
				"Đoàn Quang Tuấn",
				"Nguyễn Phi Long",
				"Trần Mỹ Linh"
		};
		String ss = String.join("~", names);
		System.out.println(s);
		System.out.println(ss);
	}
}
