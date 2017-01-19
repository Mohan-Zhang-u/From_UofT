package com.mgbarsky.pizza;
import java.util.*;
import java.io.*;
import java.sql.*;

public class PersonTest {
	public static final String PROGRAM_NAME = "PersonTest";

	public static void main (String [] args) throws IOException, SQLException{
		//check program arguments
		if (args.length == 0){
    		System.out.println("Usage: "+PROGRAM_NAME+" <name of properties file>");
    		System.exit(1);
    	}
		//read properties
		Properties props = new Properties();
    	FileInputStream in = new FileInputStream(args[0]);
    	props.load(in);
    	in.close();
    	
    	//pre-set connection
    	java.sql.Connection conn = DBConnection.getConnection (props);		
		
		// create a scanner so we can read the command-line input
	    Scanner scanner = new Scanner(System.in);
	    
	    System.out.println("===============================");
    	System.out.println("Welcome to the Person test app");
    	System.out.println("===============================");
	    while (true){
		    //  prompt for the user's action
	    	System.out.println();
		    System.out.print("What would you like to do next? 1-add 2-edit 3-delete 4-list 5-exit: ");
		    
		    int choice = scanner.nextInt();
		    Person p = null;
		    
		    switch(choice){
			    case 1 :
			    	System.out.println("------------------------------------------------------------");
			    	System.out.println("Adding new person: ");
			    	
			    	p = new Person();			    	
			    	System.out.print("name: ");
			    	p.setName(scanner.next());
			    	System.out.print("age: ");
			    	p.setAge(scanner.nextInt());
			    	System.out.print("gender: ");
			    	p.setGender(scanner.next());
			    	
			    	p.addToDatabase(conn);
			    	
			    	System.out.println("------------Table with new person added---------");
			    	Person.printTable(conn);
			    	break; 
			    	
			    case 2 :
			    	System.out.println();
			    	System.out.println("------------All existing entries---------");
			    	Person.printTable(conn);
			    	System.out.print("Select person name to edit his/her info: ");
			    	p = new Person();
			    	p.setName(scanner.next());
			    	System.out.print("age: ");
			    	p.setAge(scanner.nextInt());
			    	System.out.print("gender: ");
			    	p.setGender(scanner.next());
			    	p.updateInDatabase(conn);
			    	System.out.println("------------Table after update---------");
			    	Person.printTable(conn);
			    	break; 
			    	
			    case 3 :
			    	System.out.println();
			    	System.out.println("------------All existing entries---------");
			    	Person.printTable(conn);
			    	System.out.print("Select person name to delete: ");
			    	p = new Person();
			    	p.setName(scanner.next());
			    	p.deleteFromDatabase(conn);
			    	System.out.println("------------Table after delete---------");
			    	Person.printTable(conn);
			    	break; 
			    	
			    case 4 :
			    	System.out.println();
			    	System.out.println("------------List of persons---------");
			    	Person.printTable(conn);	    	
			    	break;
			    
			    case 5 :
			    	System.out.println("===============================");
			    	System.out.println("Good bye!");
			    	System.out.println("===============================");
			    	scanner.close();
			    	DBConnection.closeConnection (conn);
			    	System.exit(0);
			    	
			    default : 
			    	System.out.println();
			    	System.out.println("Invalid option");	
		    }
	    }
	}
}
