package com.mgbarsky.pizza;
import java.sql.*;

public class Person {
	private static final String TABLE_NAME = "Person";
	
	private String name;
	private int age;
	private String gender;
	
	private String insertSQL = "INSERT INTO Person (name, age, gender)"
			+ " VALUES (?,?,?)";
	private String updateSQL = "UPDATE Person SET age=?, gender=? WHERE name=?";
	private String deleteSQL = "DELETE FROM Person WHERE name=?";
	PreparedStatement stmt = null;
	
	public void addToDatabase (Connection conn) throws SQLException{
		if (!this.validate()){
			System.out.println("Person fields not set");
			System.exit(1);
		}		
		
	    try {	    	
	    	stmt = conn.prepareStatement(insertSQL);
	    	stmt.setString(1,this.name);	
	    	stmt.setInt(2, this.age);    	    	
	    	stmt.setString(3, this.gender);
	    	stmt.execute();
	    } catch (SQLException e) {
			SQLError.show(e);
		} finally {
			if (stmt != null) {
				stmt.close();
			}
		}
	}
	
	public void updateInDatabase (Connection conn) throws SQLException{
		if (!this.validate()){
			System.out.println("Person fields not set");
			System.exit(1);
		}		
		
	    try {	    	
	    	stmt = conn.prepareStatement(updateSQL);
	    	stmt.setInt(1,this.age);	
	    	stmt.setString(2, this.gender);    	    	
	    	stmt.setString(3, this.name);
	    	stmt.execute();
	    } catch (SQLException e) {
			SQLError.show(e);
		} finally {
			if (stmt != null) {
				stmt.close();
			}
		}
	}
	
	public void deleteFromDatabase (Connection conn) throws SQLException{
		if (this.name == null){
			System.out.println("Person without name");
			System.exit(1);
		}		
		
	    try {	    	
	    	stmt = conn.prepareStatement(deleteSQL);	    	
	    	stmt.setString(1, this.name); 
	    	stmt.execute();
	    } catch (SQLException e) {
			SQLError.show(e);
		} finally {
			if (stmt != null) {
				stmt.close();
			}
		}
	}
	
	public static void printTable (Connection conn)throws SQLException {
		PrintTable.print(conn, TABLE_NAME);
	}
	
	private boolean validate () {
		if (this.name == null)
			return false;
		if (this.age <=0)
			return false;
		if (this.gender == null)
			return false;
		return true;
	}
	
//getters-setters	
	public String getName() {
		return this.name;
	}

	public int getAge () {
		return this.age;
	}
	
	public String getGender () {
		return this.gender;
	}
	
	public void setName (String name){
		this.name = name;
	}
	
	public void setAge (int age){
		this.age = age;
	}
	
	public void setGender (String gender){
		this.gender = gender;
	}
	
	public String toString () {
		return this.name +"\t"+this.age+"\t"+this.gender;
	}
}
