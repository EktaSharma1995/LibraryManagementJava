<%-- 
    Document   : ShowAccount
    Created on : 1-Dec-2018, 10:53:54 PM
    Author     : ektasharma
--%>

<%@page import="com.book.BookBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                  <%
        BookBean bean=(BookBean)request.getAttribute("details");
    %>
    <table align="center" bgcolor="#FFFFCC" border="1" width="70%">
        <h3>Book is added to your account successfully. Here is the book details:</h3>
        <tr>            
            <td>Name </td>
            <td><%=bean.getName() %></td>
            
            <td>Author </td>
            <td><%=bean.getAuthor() %></td>
            
            <td>Subject </td>
            <td><%=bean.getSubject()%></td>
        </tr>
    </table>
    </body>
</html>
