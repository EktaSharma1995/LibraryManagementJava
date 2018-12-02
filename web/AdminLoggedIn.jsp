<%-- 
    Document   : AdminLoggedIn
    Created on : 2-Dec-2018, 4:52:32 PM
    Author     : ektasharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.database.Database_Utility"%>
<%@page import="com.bean.UserBean"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <center>
                <% 
                    UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser"));%>

                Welcome Admin <%= currentUser.getFirstName() + " " + currentUser.getLastName()  %>
                
                
                <form action="ViewBooks" method="post">
                    
                   <input type="submit" value="View">			

                </form>
        </center>   
    </body>
</html>
