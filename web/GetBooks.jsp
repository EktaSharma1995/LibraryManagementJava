<%-- 
    Document   : GetBooks.jsp
    Created on : 21-Nov-2018, 2:39:42 PM
    Author     : ektasharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table align="center" bgcolor="#E76060" border="1" width="70%" border-collapse: collapse>
           
            <tr>
                <th>Name</th>
                <th>Author</th>                
                <th>Subject</th>
            </tr>
           
            <c:forEach items="${books}" var="book">

                <tr align="center">
                    <td><c:out value="${book.name}"/></td>
                    <td><c:out value="${book.author}"/></td>       
                    <td><c:out value="${book.subject}"/></td>                   
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
