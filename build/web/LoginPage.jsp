<%-- 
    Document   : LoginPage
    Created on : 21-Nov-2018, 9:48:11 AM
    Author     : ektasharma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <h1>Login </h1>
        <form action="LoginServlet">

            <label>Username</label> 		
            <input type="text" name="un"/>
            <br/><br/>		

            <label>Password</label>
            <input type="password" name="pw"/>
            <br/><br/>
            
            <input type="submit" value="submit">			
		
	</form>
    </body>
</html>
