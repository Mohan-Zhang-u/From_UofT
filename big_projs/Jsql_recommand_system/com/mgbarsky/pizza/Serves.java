package com.mgbarsky.pizza;
import java.sql.*;

public class Serves {
	private static final String TABLE_NAME = "Serves";
	
	private String pizzeria;
	private String pizza;
	private double price;	
	
	private String insertSQL = "INSERT INTO Serves (pizzeria, pizza, price)"
			+ " VALUES (?,?,?)";
	private String updateSQL = "UPDATE Serves SET price=? WHERE pizzeria=? AND pizza=?";
	private String deleteSQL = "DELETE FROM Serves WHERE pizzeria=? AND pizza=?";
	PreparedStatement stmt = null;
	
	public void addPizzaToDatabase (Connection conn) throws SQLException{
		if (!this.validate()){
			System.out.println("Pizza fields not set");
			System.exit(1);
		}		
		
	    try {	    	
	    	stmt = conn.prepareStatement(insertSQL);
	    	stmt.setString(1,this.pizzeria);
	    	stmt.setString(2,this.pizza);
	    	stmt.setDouble(3,this.price);    	    	
	    	
	    	stmt.execute();
	    } catch (SQLException e) {
			SQLError.show(e);
		} finally {
			if (stmt != null) {
				stmt.close();
			}
		}
	}
	
	public void updatePriceInDatabase (Connection conn) throws SQLException{
		if (!this.validate()){
			System.out.println("Pizza fields are not set");
			System.exit(1);
		}		
		
	    try {	    	
	    	stmt = conn.prepareStatement(updateSQL);
	    	stmt.setDouble(1,this.price);	
	    	stmt.setString(2, this.pizzeria);    	    	
	    	stmt.setString(3, this.pizza);
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
		if (!this.validate() ){
			System.out.println("Pizza and pizzeria names should be set");
			System.exit(1);
		}		
		
	    try {	    	
	    	stmt = conn.prepareStatement(deleteSQL);	    	
	    	stmt.setString(1, this.pizzeria); 
	    	stmt.setString(2, this.pizza); 
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
		if (this.pizzeria == null)
			return false;
		if (this.pizza == null)
			return false;
		return true;
	}
	
//getters-setters	
	public String getPizzeria() {
		return this.pizzeria;
	}

	public double getPrice () {
		return this.price;
	}
	
	public String getPizza () {
		return this.pizza;
	}
	
	public void setPizzeria (String pizzeria){
		this.pizzeria = pizzeria;
	}
	
	public void setPrice (double price){
		this.price = price;
	}
	
	public void setPizza (String pizza){
		this.pizza = pizza;
	}
	
	public String toString () {
		return this.pizzeria +"\t"+this.pizza+"\t"+this.price;
	}
}
