package com.mgbarsky.pizza;
import java.io.*;
import java.sql.*;
import java.util.Properties;

public class PrintTable {
	public static final String PROGRAM_NAME = "PrintTable";
	public static void print (Connection conn, String tblName) throws SQLException {
		Statement stmt = null;
	    String query = "select * FROM " + tblName;
	   
	    try {
	        stmt = conn.createStatement();
	        ResultSet rs = stmt.executeQuery(query);
	        int cols = rs.getMetaData().getColumnCount();
	        while (rs.next()) {
	        	for (int i=0; i< cols; i++)
	        		System.out.print (rs.getObject(i+1) + "\t");
	        	System.out.print("\n");	           
	        }
	    } catch (SQLException e ) {
	    	SQLError.show(e);
	       // JDBCTutorialUtilities.printSQLException(e);
	    } finally {
	        if (stmt != null) { stmt.close(); }
	    }
	}
	
	public static void main (String [] args) throws IOException, SQLException {
		if (args.length == 0){
    		System.out.println("Usage: "+PROGRAM_NAME+" <name of properties file>");
    		System.exit(1);
    	}
		Properties props = new Properties();
    	FileInputStream in = new FileInputStream(args[0]);
    	props.load(in);
    	in.close();
    	
    	java.sql.Connection conn = DBConnection.getConnection (props);
    	
    	PrintTable.print(conn, "Person");		
	}
}



/*ResultSetMetaData rsmd = rs.getMetaData();
25
	            int cols = rsmd.getColumnCount();
26
	            System.out.printf("The query fetched %d columns\n",cols);
27
	            System.out.println("These columns are: ");
28
	            for (int i=1;i<=cols;i++) {
29
	                String colName = rsmd.getColumnName(i);
30
	                String colType = rsmd.getColumnTypeName(i);
31
	                System.out.println(colName+" of type "+colType);
32
	                 
33
	            }
*/