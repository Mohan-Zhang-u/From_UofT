package com.mgbarsky.pizza;
import javax.swing.*;
import javax.swing.event.*;
import javax.swing.table.*;
import java.sql.*;
import java.awt.*;
import java.awt.event.*;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.*;

public class POSapp extends JFrame{
	public static final String PROGRAM_NAME = "POSapp";
	int numcols=3, numrows;
	Connection connection;
	
	//GUI components
	JTable table; // The table for displaying data

	JLabel label_PIZZA;
	JLabel label_PIZZERIA;
	JLabel label_CUSTOMER;	

	JTextField textField_CUSTOMER;
	JTextField textField_PIZZA;
	JTextField textField_PIZZERIA;

	JButton button_ADD_SALE;
	JButton button_DELETE_CUSTOMER;
	
	Object[] columnNames = {"Pizzeria", "Pizza", "Customer"};
	
	public POSapp (Connection conn)  throws SQLException{
		super("Point of sale: PIZZA"); // Set window title
		
		this.connection = conn;
		
		// Close connections exit the application when the user
	    // closes the window
	    addWindowListener(new WindowAdapter() {
	        public void windowClosing(WindowEvent e) {
	          DBConnection.closeConnection(connection);
	          System.exit(0);
	        }
	    });   
	    
        table = new JTable(); // Displays the table
        refreshTable ();
        
        //setting up new components
        label_PIZZA = new JLabel("Pizza:");
    	label_PIZZERIA = new JLabel ("Pizzeria:");
    	label_CUSTOMER = new JLabel ("Customer:") ;	

    	textField_CUSTOMER=new JTextField(10);
    	textField_PIZZA=new JTextField(10);
    	textField_PIZZERIA=new JTextField(10);

    	button_ADD_SALE = new JButton("Add sale");
    	button_DELETE_CUSTOMER = new JButton ("Delete customer sales");
    	
    	// Place the components within the container contentPane; use GridBagLayout as the layout.
        Container contentPane = getContentPane();
        contentPane.setComponentOrientation(ComponentOrientation.LEFT_TO_RIGHT);
        contentPane.setLayout(new GridBagLayout());
        GridBagConstraints c = new GridBagConstraints();

        c.fill = GridBagConstraints.BOTH;
        c.anchor = GridBagConstraints.CENTER;
        c.weightx = 0.5;
        c.weighty = 1.0;
        c.gridx = 0;
        c.gridy = 0;
        c.gridwidth = 2;
        contentPane.add(new JScrollPane(table), c);

        c.fill = GridBagConstraints.HORIZONTAL;
        c.anchor = GridBagConstraints.LINE_START;
        c.weightx = 0.25;
        c.weighty = 0;
        c.gridx = 0;
        c.gridy = 1;
        c.gridwidth = 1;
        contentPane.add(label_PIZZERIA, c);

        c.fill = GridBagConstraints.HORIZONTAL;
        c.anchor = GridBagConstraints.LINE_END;
        c.weightx = 0.75;
        c.weighty = 0;
        c.gridx = 1;
        c.gridy = 1;
        c.gridwidth = 1;
        contentPane.add(textField_PIZZERIA, c);

        c.fill = GridBagConstraints.HORIZONTAL;
        c.weightx = 0.25;
        c.weighty = 0;
        c.anchor = GridBagConstraints.LINE_START;
        c.gridx = 0;
        c.gridy = 2;
        c.gridwidth = 1;
        contentPane.add(label_PIZZA, c);

        c.fill = GridBagConstraints.HORIZONTAL;
        c.anchor = GridBagConstraints.LINE_END;
        c.weightx = 0.75;
        c.weighty = 0;
        c.gridx = 1;
        c.gridy = 2;
        c.gridwidth = 1;
        contentPane.add(textField_PIZZA, c);

        c.fill = GridBagConstraints.HORIZONTAL;
        c.anchor = GridBagConstraints.LINE_START;
        c.weightx = 0.25;
        c.weighty = 0;
        c.gridx = 0;
        c.gridy = 3;
        c.gridwidth = 1;
        contentPane.add(label_CUSTOMER, c);

        c.fill = GridBagConstraints.HORIZONTAL;
        c.anchor = GridBagConstraints.LINE_END;
        c.weightx = 0.75;
        c.weighty = 0;
        c.gridx = 1;
        c.gridy = 3;
        c.gridwidth = 1;
        contentPane.add(textField_CUSTOMER, c);
       
        c.fill = GridBagConstraints.HORIZONTAL;
        c.anchor = GridBagConstraints.LINE_START;
        c.weightx = 0.5;
        c.weighty = 0;
        c.gridx = 0;
        c.gridy = 6;
        c.gridwidth = 1;
        contentPane.add(button_ADD_SALE, c);

        c.fill = GridBagConstraints.HORIZONTAL;
        c.anchor = GridBagConstraints.LINE_END;
        c.weightx = 0.5;
        c.weighty = 0;
        c.gridx = 1;
        c.gridy = 6;
        c.gridwidth = 1;
        contentPane.add(button_DELETE_CUSTOMER, c);

        
     // Add listeners for the buttons in the application
        button_ADD_SALE.addActionListener( new ActionListener() {
            public void actionPerformed(ActionEvent e) {
            	Sale ns = new Sale();
            	ns.setName(textField_CUSTOMER.getText());
            	ns.setPizzeria(textField_PIZZERIA.getText());
            	ns.setPizza(textField_PIZZA.getText());
            	try {
            		ns.addSaleToDatabase(connection);  
            		clearInputs ();
            		refreshTable ();
            	}
            	catch (SQLException ex){
            		SQLError.show(ex);
            	}
            }
        });
        
        button_DELETE_CUSTOMER.addActionListener( new ActionListener() {
            public void actionPerformed(ActionEvent e) {
            	Sale ds = new Sale();
            	if (textField_CUSTOMER.getText().trim().equals(""))
            		return;
            	ds.setName(textField_CUSTOMER.getText());
            	try {
            		ds.deleteAllSalesForPerson(connection);
            		clearInputs ();
            		refreshTable ();
            	}
            	catch (SQLException ex){
            		SQLError.show(ex);
            	}
            }
        });
	}
	
	private void refreshTable () {
		try {    		
    		DefaultTableModel model = new DefaultTableModel(new Object[0][0], columnNames);
    		java.util.List<Sale> sales = Sale.getAllSales(connection);
            for (Sale s : sales) {
                 Object[] o = new Object[3];
                 o[0] = s.getPizzeria();
                 o[1] = s.getPizza();
                 o[2] = s.getName();
                 model.addRow(o);
            }
            table.setModel(model);
            table.repaint();
    	}
    	catch (SQLException ex){
    		SQLError.show(ex);
    	}
	}
	
	private void clearInputs () {
		textField_CUSTOMER.setText("");
		textField_PIZZA.setText("");
		textField_PIZZERIA.setText("");
	}
	
	public static void main (String [] args) throws IOException, SQLException {
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
    	if (conn == null)
    		System.exit(1);
    	POSapp app = new POSapp(conn);
    	
    	app.pack();
        app.setVisible(true);
	}
}

class AddActionListener implements ActionListener {
	POSapp container;
	public AddActionListener (POSapp container){
		this.container = container;		
	}
	
	public void actionPerformed(ActionEvent e) {
    	Sale s = new Sale();
    	s.setName(container.textField_CUSTOMER.getText());
    	s.setPizzeria(container.textField_PIZZERIA.getText());
    	s.setPizza(container.textField_PIZZA.getText());
    	try {
    		s.addSaleToDatabase(container.connection);
    	}
    	catch (SQLException ex){
    		SQLError.show(ex);
    	}
    }
}

class DeleteActionListener implements ActionListener {
	POSapp container;
	public DeleteActionListener (POSapp container){
		this.container = container;		
	}
	
	public void actionPerformed(ActionEvent e) {
    	Sale s = new Sale();
    	if (container.textField_CUSTOMER.getText().trim().equals(""))
    		return;
    	s.setName(container.textField_CUSTOMER.getText());
    	try {
    		s.deleteAllSalesForPerson(container.connection);
    	}
    	catch (SQLException ex){
    		SQLError.show(ex);
    	}
    }
}
