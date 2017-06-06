package com.veeravalli.family.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SqlConnectionProvider {
	 private static Connection con = null;

	    public static Connection getConnection() {
	        if (con != null)
	            return con;
	        else {
	            try {
	                System.out.println("in connection");
	                String driver = "com.mysql.jdbc.Driver";
	                //String url = "jdbc:mysql://localhost:3306/familymembers?useSSL=false"+,"admin","admin";
	                String user = "admin";
	                String password = "admin";
	                
	                Class.forName(driver);
	                con = DriverManager.getConnection("jdbc:mysql://localhost:3306?useSSL=false","root","admin");
	            
	            } catch (ClassNotFoundException cnfe) {
	                System.out.println(cnfe);
	            } catch (SQLException sqe) {
	                System.out.println(sqe);
	            } 
	            return con;
	        }

	    }
}
