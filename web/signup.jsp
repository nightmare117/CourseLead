<%-- 
    Document   : signup.jsp
    Created on : May 8, 2023, 2:34:46 AM
    Author     : Ahmed Iftekher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignUp Page</title>
        <link rel="stylesheet" href="css/signUp.css" type="text/css">
    </head>
    <body>
        <div class="signUpBack">
        <div class="registerLeft">
            <h1 class="registerTitle">
                Welcome to <span class="registerSpan1">CourseLEAD</span>
            </h1>
            <p class="registerLine">A convenient online course management solution.</p>
        </div>
        <div class="registerRight">
            <div class="signup-form">
                <h2>Sign Up</h2>
                <form>
                  <div class="form-group">
                    <label for="firstName">First Name:</label>
                    <input type="text" id="firstName" name="firstName" required>
                  </div>
                  <div class="form-group">
                    <label for="lastName">Last Name:</label>
                    <input type="text" id="lastName" name="lastName" required>
                  </div>
                  <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                  </div>
                  <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                  </div>
                  <div class="form-group">
                    <label for="userType">I am a:</label>
                    <select id="userType" name="userType" required>
                      <option value="" selected disabled>Select your user type</option>
                      <option value="student">Student</option>
                      <option value="teacher">Teacher</option>
                    </select>
                  </div>
                  <button type="submit">Sign Up</button>
                </form>
                <p class="registerRedirect">Already have an account? <a class="signUpRef" href="signin.jsp">Sign In</a></p>
              </div>
        </div>
    </div>
    </body>
</html>
