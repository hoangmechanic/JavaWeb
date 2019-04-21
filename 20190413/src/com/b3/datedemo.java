package com.b3;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Scanner;

public class datedemo {

	static Scanner scanner = new Scanner(System.in);
	public static void main(String[] args) {
		
		try {
			System.out.println("Ngayf sinh(dd-MM-yyyy)");
			String ngay = scanner.nextLine();

			SimpleDateFormat df = new SimpleDateFormat();
			df.applyPattern("dd-MM-yyyy");
			Date birthday;
			birthday = df.parse(ngay);
			df.applyPattern("EEEE, MMMM, dd, yyyy");
			String ngaySinh = df.format(birthday);
			System.out.println(ngaySinh);

			Date now = new Date();
			df.applyPattern("hh:mm:a");
			String time = df.format(now);
			System.out.println(time);
			
			df.applyPattern("MM/dd/yyyy");
			String date = df.format(now);
			System.out.println(date);
			
			df.applyPattern("m-YYYY");
			String mix = df.format(now);
			System.out.println(mix);
			
			df.applyPattern("yyyy");
			int age = Integer.parseInt(df.format(now)) - Integer.parseInt(df.format(birthday));
			System.out.println("Tuoi :"+age);
		} catch (ParseException e) {
			System.out.println("Sai dinh dang ngay!");
		}
		
	}

}
