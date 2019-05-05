package com.jdbc;

import java.sql.Statement;
import java.sql.Types;

import com.microsoft.sqlserver.jdbc.SQLServerDriver;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Jdbc3 {

	private static String driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static String url="jdbc:sqlserver://localhost;database=EShopV10";
	private static String user="sa";
	private static String password="123";
	public static void main(String[] args) {
		//update();
		query();
		query2();
	}

	private static void update(){
		String sql="{CALL spInsertCategory(?,?,?)}";
		try {
			Class.forName(driver);
			Connection connection = DriverManager.getConnection(url,user,password);
			CallableStatement statement = connection.prepareCall(sql);
			statement.setString(1, "Clock");
			statement.setString(2, "Đồng hồ");
			statement.registerOutParameter(3, Types.INTEGER);
			statement.executeUpdate();
			int id = statement.getInt(3);
			System.out.println("########################: "+id);
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	private static void query(){
		String sql="{CALL spSearchProducts1(?,?)}";
		try {
			Class.forName(driver);
			Connection connection = DriverManager.getConnection(url,user,password);
			CallableStatement statement = connection.prepareCall(sql);
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
		String sql="{CALL spRevenueByCategory()}";
		try {
			Class.forName(driver);
			Connection connection = DriverManager.getConnection(url,user,password);
			CallableStatement statement = connection.prepareCall(sql);
			ResultSet resultSet = statement.executeQuery();
			while(resultSet.next()) {
				double price = resultSet.getDouble("Revenue");
				int qty = resultSet.getInt("Quantity");
				Date date = resultSet.getDate("ProductDate");
				System.out.printf("%f, %.2f \n",price,qty);
			}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	

}
