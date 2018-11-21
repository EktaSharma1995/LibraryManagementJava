<%-- 
    Document   : UserLogged
    Created on : 21-Nov-2018, 10:59:55 AM
    Author     : ektasharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.database.Database_Utility"%>
<%@page import="com.user.UserBean"%>


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

                Welcome <%= currentUser.getFirstName() + " " + currentUser.getLastName() %>
        </center>    
    </body>
</html>
