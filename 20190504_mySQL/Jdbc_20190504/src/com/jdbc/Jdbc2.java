package com.jdbc;

import java.sql.Statement;

import com.microsoft.sqlserver.jdbc.SQLServerDriver;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Jdbc2 {

	private static String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static String url="jdbc:sqlserver://localhost;database=EShopV10";
	private static String user="sa";
	private static String password="123";
	public static void main(String[] args) {
		//update();
		//query();
		query2();
	}

	private static void update(){
		String sql="INSERT INTO Categories(Name, NameVN) VALUES(?,?)";
		try {
			Class.forName(driver);
			Connection connection = DriverManager.getConnection(url,user,password);
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, "Marker");
			statement.setString(2, "Bút viết bảng trắng");
			statement.executeUpdate();
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	private static void query(){
		String sql="SELECT * FROM Products WHERE UnitPrice BETWEEN ? AND ?";
		try {
			Class.forName(driver);
			Connection connection = DriverManager.getConnection(url,user,password);
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setDouble(1, 5.0);
			statement.setDouble(2, 10.0);
			ResultSet resultSet = statement.executeQuery();
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
	private static void query2(){
		String sql="SELECT * FROM Products WHERE CategoryId IN (SELECT Id FROM Categories WHERE ? LIKE '%on%')";
		try {
			Class.forName(driver);
			Connection connection = DriverManager.getConnection(url,user,password);
			PreparedStatement statement = connection.prepareStatement(sql);
			//statement.setString(1,"Id");
			statement.setString(1,"Name");
			ResultSet resultSet = statement.executeQuery();
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
