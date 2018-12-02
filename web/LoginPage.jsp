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
         <script src="https://apis.google.com/js/platform.js" async defer></script>
        <meta name="google-signin-client_id" content="36304408455-75k6h5kac115b5b0ti0p6db15mohe480.apps.googleusercontent.com">
        <title>Login Page</title>
        <script>
            function onSignIn(googleUser) {

//                alert('hi');
                var profile = googleUser.getBasicProfile();
                console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
                console.log('Name: ' + profile.getName());
                console.log('Image URL: ' + profile.getImageUrl());
                console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
                document.getElementById('name').innerText = profile.getName();
                document.getElementById('myImg').src = profile.getImageUrl();
                
//                window.location = '/LibraryManagementUsingOAuth/UserLoggedIn.jsp?name='+profile.getName()+'&email='+profile.getEmail();

            }

            function signOut() {
//                alert('hi');
                var auth2 = gapi.auth2.getAuthInstance();
                auth2.signOut().then(function () {
                    console.log('User signed out.');
                });
            }
        </script>
    </head>
    <body>
        <h1>Login </h1>
        <form action="LoginServlet">

            <div class='user-login'>
            <label>Username</label> 		
            <input type="text" name="un"/>
            <br/><br/>		

            <label>Password</label>
            <input type="password" name="pw"/>
            <br/><br/>
            
            <input type="submit" value="submit">
            
            </div>
            <br/>
        </form>

        <form action="LoginServlet">
            <div class="g-signin2" data-onsuccess="onSignIn" id="myP" ></div>

            <img id="myImg"><br>
            <p id="name"></p>

            <div id="status">
            </div>
            
            <input type="submit" value="submit">

            <button onclick="signOut()">Sign Out</button>
        </form>    
    </body>
</html>
