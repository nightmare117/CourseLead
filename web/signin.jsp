<%-- 
    Document   : signin
    Created on : May 7, 2023, 9:36:58 PM
    Author     : Ahmed Iftekher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="css/signIn.css" type="text/css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Document</title>
    </head>
    <body>
        <div class="signInBack">
            <div class="signInContainer">
                <form action="login.jsp" method="post">
                <h1 class="signInTitle">SignIn to <span class="signinspan">CourseLEAD</span></h1>
			<input type="text" placeholder="Username" name="username" required>
			<input type="password" placeholder="Password" name="password" required>
			<button type="submit">Sign In</button>
                        <p>Don't have an account? <a class="signUpRef" href="admin.jsp">Sign Up</a></p>
		</form>
            </div>
            
        </div>
    </body>
</html>
