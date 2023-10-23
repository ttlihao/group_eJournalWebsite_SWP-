<%-- 
    Document   : RegistrationPage
    Created on : Oct 2, 2023, 3:56:51 PM
    Author     : Phan Thien
--%>
<%@ page import="com.group4.ejournal.dao.UserError" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/ecc3edd98f.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="Style/RegistrationPage.css" />
        <title>SCIENCE</title>
        
                 <div class="header">
        <div class="logo">
            <a href="HomePage.jsp"><img src="images/logo-science.png" alt="Journal"></a>
            <h2>Journal</h2>
        </div>
        <div class="navlist">
            <div class="myList">
                <div class="list">
                    <li><a href="HomePage.jsp">Home</a></li>
                    <li><a href="science.html">Subjects</a></li>
                    <li><a href="aboutPage.html">About</a></li>

                </div>
            </div>
        </div>
</div>
    </head>


    <content>
        <div class="text">
            <h1>B<span>ecome</span> A<span>n</span> A<span>ccount</span></h1>
            <p>
                Welcome back, my journal of science, to another chapter in the exploration of the unknown. 
            </p>
        </div>
        <form action="MainController" method="POST">
         <div class="signupForm">
            <div class="signup">
                <h2>Register</h2>
            </div>


            <div class="inputForm">
                    <div class="infoForm">
                        <i class="fa-solid fa-user" style="color: #222d3f;"></i>
                        <input type="text" id="user" name="userName" required  placeholder="Your UserID" >
                    </div>
                    <div class="infoForm">
                        <i class="fa-solid fa-user" style="color: #222d3f;"></i>
                        <input type="text" id="user" name="fullName" required placeholder="Your Name">
                    </div>
                    <div class="infoForm">
                        <i class="fa-solid fa-user" style="color: #222d3f;"></i>
                        <input type="email" id="user" name="email" required placeholder="Your Email">
                    </div>
                    <div class="infoForm">
                        <i class="fa-solid fa-user" style="color: #222d3f;"></i>
                        <input type="text" id="user" name="address" required placeholder="Your Address">
                    </div>
                    <div class="infoForm">
                        <i class="fa-solid fa-user" style="color: #222d3f;"></i>
                        <input type="date" id="user" name="birth" required placeholder="Date Of Birth">
                    </div>
                    <div class="infoForm">
                        <i class="fa-solid fa-user" style="color: #222d3f;"></i>
                        <input type="text" id="user" name="phone" required placeholder="Your Phone">
                    </div>
                    <div class="infoForm">
                        <i class="fa-solid fa-lock" style="color: #222d3f;"></i>
                        <input type="password" id="pass" name="password" required placeholder="Password">
                    </div>
                    <div class="infoForm">
                        <i class="fa-solid fa-lock" style="color: #222d3f;"></i>
                        <input type="password" id="pass" name="confirm" required placeholder="Confirm Password">
                    </div>
                <button id="signupBtn" name="action" value="Register">Register</button>
                <div class="login-google">
                    <span>or</span>
                    <a href="#" ><img src="images/logo-google.png" alt="Google" ></a>
                                <div class="loginLink">
                <p>Do you already have an account? <a href="LoginPage.jsp" id="login">Login</a></p>
            </div>
                </div>
            </div>
                        </div>

        
    </content>
</body>
</html>
