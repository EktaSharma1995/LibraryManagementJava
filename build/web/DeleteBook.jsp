<%-- 
    Document   : DeleteBook
    Created on : 2-Dec-2018, 10:02:59 PM
    Author     : ektasharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="DeleteBookFromDatabase" method="post">
            
            <label>Id</label>
            
            <input type="number" name="id" maxlength="10">    
            
            <input type="submit" value="Delete">
        </form>    
    </body>
</html>
