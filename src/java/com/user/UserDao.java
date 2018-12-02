/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.user;

import com.database.Database_Utility;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author ektasharma
 */
public class UserDao {
    static Connection con = null;
    static ResultSet rs = null;  
      
    public static UserBean login(UserBean bean) {
	
         //preparing some objects for connection 
         Statement stmt = null;    
	
         String username = bean.getUserName();    
         String password = bean.getPassword();   
//	 String adminFlag = bean.getAdminFlag();
         
         String searchQuery =
               "select * from users where username='"
                        + username
                        + "' AND password='"
                        + password
                        + "'";
	    
      // "System.out.println" prints in the console; Normally used to trace the process
      System.out.println("Your user name is " + username);          
      System.out.println("Your password is " + password);
      
      System.out.println("Query: "+searchQuery);
	    
      try 
      {
         //connect to DB 
         con = Database_Utility.getConnection();
         System.out.println("Database connection");
         stmt=con.createStatement();
         ResultSet rs = stmt.executeQuery(searchQuery);	        
         boolean more = rs.next();
	       
         // if user does not exist set the isValid variable to false
         if (!more) 
         {
            System.out.println("Sorry, you are not a registered user! Please sign up first");
            bean.setValid(false);
         } 
	        
         //if user exists set the isValid variable to true
         else if (more) 
         {
            String adminFlag = rs.getString("adminFlag");
            String firstName = rs.getString("FirstName");
            String lastName = rs.getString("LastName"); 
            
            if(adminFlag.equalsIgnoreCase("Yes")){
                System.out.println("Welcome " + firstName);
                bean.setFirstName(firstName);
                bean.setLastName(lastName);
                bean.setAdminFlag(adminFlag);
                bean.setValid(true);

            } else {
                bean.setFirstName(firstName);
                bean.setLastName(lastName);
                bean.setAdminFlag(adminFlag);
                bean.setValid(true);
            }
         }

      } 

      catch (Exception ex) 
      {
         System.out.println("Log In failed: An Exception has occurred! " + ex);
      } 
	    
      //some exception handling
      finally 
      {
         if (rs != null)	{
            try {
               rs.close();
            } catch (Exception e) {}
               rs = null;
            }
	
         if (stmt != null) {
            try {
               stmt.close();
            } catch (Exception e) {}
               stmt = null;
            }
	
//         if (con != null) {
//            try {
//               con.close();
//            } catch (Exception e) {
//            }
//
//            con = null;
//         }
      }

return bean;
	
      }	
}
