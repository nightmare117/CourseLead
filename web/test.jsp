<%-- 
    Document   : test
    Created on : May 7, 2023, 8:55:47 PM
    Author     : Ahmed Iftekher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<style>
		body {
			background-color: #f2f2f2;
			font-family: Arial, sans-serif;
		}
		
		.container {
			margin-top: 50px;
			display: flex;
			flex-direction: column;
			align-items: center;
                        background: black;
		}
		
		.logo {
			width: 200px;
			margin-bottom: 20px;
		}
		
		form {
			background-color: #fff;
			border-radius: 5px;
			padding: 20px;
			box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.3);
			display: flex;
			flex-direction: column;
			align-items: center;
		}
		
		input[type=text], input[type=password] {
			padding: 10px;
			border-radius: 3px;
			border: none;
			background-color: #f2f2f2;
			margin-bottom: 10px;
			width: 100%;
		}
		
		button {
			background-color: #4CAF50;
			color: white;
			padding: 10px;
			border: none;
			border-radius: 3px;
			cursor: pointer;
			width: 100%;
			font-size: 16px;
			transition: background-color 0.3s;
		}
		
		button:hover {
			background-color: #3e8e41;
		}
		                                                             
		p {                         
			margin-top: 20px;
			font-size: 14px;
			color: #777;   
			text-align: center;
		}
	</style>
</head>
<body>
	<div class="container">
		<img class="logo" src="your_logo.png" alt="Logo">
		<form action="login.jsp" method="post">
			<input type="text" placeholder="Username" name="username" required>
			<input type="password" placeholder="Password" name="password" required>
			<button type="submit">Sign In</button>
		</form>
		<p>Don't have an account? <a href="signup.jsp">Sign Up</a></p>
	</div>
</body>
</html>
