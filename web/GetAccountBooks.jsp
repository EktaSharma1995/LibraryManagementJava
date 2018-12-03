<%-- 
    Document   : GetAccountBooks
    Created on : 3-Dec-2018, 2:12:22 PM
    Author     : ektasharma
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.bean.BookBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table align="center" bgcolor="#E76060" border="1" width="70%" border-collapse: collapse>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Author</th>                
                    <th>Subject</th>
                    <th>Availability</th>
                </tr>
                <%ArrayList<BookBean> book=(ArrayList<BookBean>)request.getAttribute("addedBooksToCart");
                
                for(BookBean b:book){%>
                        
                    <tr align="center">
                        <td> <%=b.getId()%></td>                
                        <td> <%=b.getName()%></td>
                        <td> <%=b.getAuthor()%></td>                
                        <td> <%=b.getSubject()%></td>                
                        <td> <%=b.getAvailability()%></td>                

                    </tr>
                    <%}%>
        </table>
    </body>
</html>
