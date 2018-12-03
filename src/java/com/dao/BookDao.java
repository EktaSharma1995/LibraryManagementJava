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

    public ArrayList<BookBean> getBooks() throws SQLException, Exception {
        ArrayList<BookBean> bookList = new ArrayList<>();
        String query = "select * from books";
        try {
            Connection conn = Database_Utility.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                BookBean book = new BookBean();

                book.setId(rs.getInt("id"));
                book.setName(rs.getString("name"));
                book.setAuthor(rs.getString("author"));
                book.setSubject(rs.getString("subject"));
                book.setAvailability(rs.getString("availability"));

                bookList.add(book);
                System.out.println("Listing Done");

            }
        } catch (SQLException sqle) {
            System.out.println(sqle.getMessage());
        }
        return bookList;

    }

    public BookBean getBookDetailsById(int id) throws SQLException, Exception {
        String query = "select * from books where id =" + id;

        BookBean book = new BookBean();

        try {
            Connection conn = Database_Utility.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                System.out.println(rs.getInt("id"));
                book.setId(rs.getInt("id"));
                book.setName(rs.getString("name"));
                book.setAuthor(rs.getString("author"));
                book.setSubject(rs.getString("subject"));
                book.setAvailability(rs.getString("availabbility"));

                System.out.println("Listing Done");

            }
        } catch (SQLException sqle) {
            System.out.println(sqle.getMessage());
        }
        return book;

    }

    public void addBooks(BookBean book) throws SQLException, Exception {
        String query = "insert into books values(?,?,?,?,?)";

        try {

            Connection conn = Database_Utility.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            System.out.println("querry run");

            ps.setInt(1, book.getId());
            ps.setString(2, book.getName().trim());
            ps.setString(3, book.getAuthor().trim());
            ps.setString(4, book.getSubject().trim());
            ps.setString(5, book.getAvailability().trim());

            ps.executeUpdate(); // execute it on test database
            conn.commit();

            System.out.println("successfuly inserted");

        } catch (Exception ex) {
            System.out.println(ex.getMessage());

        }
    }

    public void updateBook(BookBean book) throws SQLException, Exception {
        String query = "update books set name = ?, author = ?, subject = ?,availability = ?  where id =" + book.getId();

        try {
            Connection conn = Database_Utility.getConnection();
            PreparedStatement ps = conn.prepareStatement(query);
            System.out.println("Update querry ");

            //ps.setInt(1, book.getId());
            ps.setString(1, book.getName().trim());
            ps.setString(2, book.getAuthor().trim());
            ps.setString(3, book.getSubject().trim());
            ps.setString(4, book.getAvailability().trim());

            ps.executeUpdate();
            conn.commit();

            System.out.println("successfuly updated");

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }
    
    public void deleteBook(int id) throws Exception {
        String sql = "delete from books where id =" + id ;
        
        try {
            Connection conn = Database_Utility.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.executeUpdate();
            conn.commit();

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

    }
}
