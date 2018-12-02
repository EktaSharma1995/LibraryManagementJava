/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.bean.*;
import com.database.Database_Utility;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author ektasharma
 */
public class BookDao {

    public ArrayList<BookBean> getBooks() throws SQLException, Exception{
        ArrayList<BookBean> bookList = new ArrayList<>();
        String query = "select * from books";
    try {
            Connection conn = Database_Utility.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();  

           while(rs.next()){
           
               BookBean book = new BookBean();
               
               book.setId(rs.getInt("id"));
               book.setName(rs.getString("name"));
               book.setAuthor(rs.getString("author"));
               book.setSubject(rs.getString("subject"));
           
               bookList.add(book);
               System.out.println("Listing Done");

           } 
        } catch (SQLException sqle) {
           System.out.println(sqle.getMessage());
        }
           return bookList;


    }
    
    public BookBean getBookDetailsById(int id) throws SQLException, Exception{
        String query = "select * from books where id =" + id;
        
        BookBean book = new BookBean();

    try {
            Connection conn = Database_Utility.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();  

           while(rs.next()){
               System.out.println(rs.getInt("id"));
               book.setId(rs.getInt("id"));
               book.setName(rs.getString("name"));
               book.setAuthor(rs.getString("author"));
               book.setSubject(rs.getString("subject"));
           
               System.out.println("Listing Done");

           } 
        } catch (SQLException sqle) {
           System.out.println(sqle.getMessage());
        }
        return book;

    }
    
}
