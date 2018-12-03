<%-- 
    Document   : AddBooks
    Created on : 2-Dec-2018, 6:16:10 PM
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
                        
        <form action="AddBooksToDatabase" method="post">
            <label>Id</label>
            <input type="number" name="id" maxlength="10"> 

            <label>Name</label>
            <input type="text" name="name" maxlength="20">  

            <label>Author</label>
            <input type="text" name="author" maxlength="20"> 

            <label>Subject</label>
            <input type="text" name="subject" maxlength="20"> 

            <label>Availability</label>
            <input type="text" name="availability" maxlength="20"> 

           <input type="submit" value="Add">				
	           
           </form>
        </form>
    </body>
</html>
