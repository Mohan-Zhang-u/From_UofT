package com.mgbarsky.pizza;

import java.sql.*;
import java.util.*;

public class Sale {	
	private String pizzeria;
	private String pizza;
	private String name;	
	
	private String insertSQL1 = "INSERT INTO Frequents (name, pizzeria)"
								+ " VALUES (?,?)";
	private String insertSQL2 = "INSERT INTO Eats (name, pizza)"
			+ " VALUES (?,?)";
	
	private String deleteSQL1 = "DELETE FROM Frequents WHERE name=?";
	private String deleteSQL2 = "DELETE FROM Eats WHERE name=?";
	
	private static String selectSQL = "SELECT Frequents.name, pizzeria, pizza "
								+"FROM Frequents, Eats "
								+"WHERE Frequents.name = Eats.name";
	PreparedStatement stmt1 = null;
	PreparedStatement stmt2 = null;
	
	
	public void addSaleToDatabase (Connection conn) throws SQLException{
		if (!this.validate()){
			System.out.println("Sale fields not set");
			System.exit(1);
		}		
		
	    try {	
	    	conn.setAutoCommit(false);
	    	stmt1 = conn.prepareStatement(insertSQL1);
	    	stmt1.setString(1, this.name);
	    	stmt1.setString(2, this.pizzeria);
	        
	    	stmt2 = conn.prepareStatement(insertSQL2);
	    	stmt2.setString(1, this.name);
	    	stmt2.setString(2, this.pizza);
	    	
	    	stmt1.execute();
	    	stmt2.execute();
	    	conn.commit();
	    } catch (SQLException e) {
			SQLError.show(e);
		} finally {
			if (stmt1 != null) {
				stmt1.close();
			}
			if (stmt2 != null) {
				stmt2.close();
			}
		}
	}
	
	public void deleteAllSalesForPerson (Connection conn) throws SQLException{
		if (this.name == null){
			System.out.println("Name not specified");
			System.exit(1);
		}		
		
	    try {	
	    	conn.setAutoCommit(false);
	    	stmt1 = conn.prepareStatement(deleteSQL1);
	    	stmt1.setString(1, this.name);
	        
	    	stmt2 = conn.prepareStatement(deleteSQL2);
	    	stmt2.setString(1, this.name);
	    	
	    	stmt1.execute();
	    	stmt2.execute();
	    	conn.commit();
	    } catch (SQLException e) {
			SQLError.show(e);
		} finally {
			if (stmt1 != null) {
				stmt1.close();
			}
			if (stmt2 != null) {
				stmt2.close();
			}
		}
	}	
	
	public static List <Sale> getAllSales (Connection conn) throws SQLException {
		List<Sale> sales = new ArrayList <Sale>();
		
		Statement stmt = null;
		try {
			stmt = conn.createStatement();
	        ResultSet rs = stmt.executeQuery(selectSQL);
	        
	        while (rs.next()) {
	        	Sale s = new Sale();
	        	s.setName(rs.getString("name"));
	        	s.setPizzeria(rs.getString("pizzeria"));
	        	s.setPizza (rs.getString("pizza"));
	        	sales.add(s);
	        }
	    } catch (SQLException e ) {
	    	SQLError.show(e);
	       // JDBCTutorialUtilities.printSQLException(e);
	    } finally {
	        if (stmt != null) { stmt.close(); }
	    }
		return sales;
	}
	
	private boolean validate () {
		if (this.name == null)
			return false;
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

	public String getName () {
		return this.name;
	}
	
	public String getPizza () {
		return this.pizza;
	}
	
	public void setPizzeria (String pizzeria){
		this.pizzeria = pizzeria;
	}
	
	public void setName (String name){
		this.name = name;
	}
	
	public void setPizza (String pizza){
		this.pizza = pizza;
	}
	
	public String toString () {
		return this.name +"\t"+this.pizzeria+"\t"+this.pizza;
	}

}
