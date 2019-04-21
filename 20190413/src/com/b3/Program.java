package com.b3;

public class Program {

	public static void main(String[] args) {
		basic();

	}

	private static void basic() {
		Student sv = new Student("Nguyễn Hoàng", 10);
		String xeploai = sv.getGrade();
		System.out.println(xeploai);
		
	}

}
