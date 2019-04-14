package com.b1;


public class MathDemo {

	/**
	 * 
	 * @param args
	 */
	public static void main(String[] args) {
		double x= 2, y = 7;
		double z = Math.pow(x, y);
		System.out.printf( "Math.pow(%.2f, %.2f)=%.2f\n", x, y, z);
		
		double w = Math.sqrt(y);
		System.out.printf( "Math.sqrt(%.2f)=%.2f\n",y, w);
		
		double ww = Math.ceil(y);
		System.out.printf("Math.ceil(%.2f)=%.2f\n",y,ww);
		
		double r = Math.round(w);
		System.out.printf( "Math.round(%.2f)=%.2f\n",w, r);
		
		double r2 = Math.round(Math.random()*74);
		System.out.printf( "r2=%.2f\n", r2);
	}
}
