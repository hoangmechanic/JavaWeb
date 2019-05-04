package com.jdbc;

import java.sql.Statement;

import com.microsoft.sqlserver.jdbc.SQLServerDriver;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Jdbc1 {

	private static String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static String url="jdbc:sqlserver://localhost;database=Jdbc";
	private static String user="sa";
	private static String password="123";
	public static void main(String[] args) {
		//update();
		query();
	}

	private static void update(){
		try {
			Class.forName(driver);
			Connection connection = DriverManager.getConnection(url,user,password);
			Statement statement = connection.createStatement();
			String sql="INSERT INTO Categories(Id, Name) VALUES('FAS', N'Fashsion')";
			statement.execute(sql);
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	private static void query(){
		try {
			Class.forName(driver);
			Connection connection = DriverManager.getConnection(url,user,password);
			Statement statement = connection.createStatement();
			String sql="SELECT * FROM Products";
			ResultSet resultSet = statement.executeQuery(sql);
			while(resultSet.next()) {
				String name = resultSet.getString("Name");
				double price = resultSet.getDouble("UnitPrice");
				int qty = resultSet.getInt("Quantity");
				Date date = resultSet.getDate("ProductDate");
				System.out.printf("%s, %.2f \n", name,price);
			}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}

}
