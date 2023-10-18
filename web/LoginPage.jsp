                                                                <%-- 
    Document   : LoginPage
    Created on : Oct 2, 2023, 3:56:43 PM
    Author     : Phan Thien
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://kit.fontawesome.com/ecc3edd98f.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="Style/LoginPage.css">
        <title>SCIENCE</title>
    </head>
    <body>
        <div class="header">
            <div class="logo">
                <a href="HomePage.jsp"><img src="images/journal.png" alt="Journal"></a>
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
    <content>
                <div class="text">
            <h1>W<span>elcome</span> B<span>ack</span></h1>
            <p>
                Welcome back, my journal of science, to another chapter in the exploration of the unknown. 
            </p>
        </div>
<form action="MainController" method="POST">
        <div class="loginForm">
                <div class="login">
                    <h2>Login</h2>
                </div>
                <div class="inputForm">
                    <div class="userID">
                        <div class="userForm">
                            <i class="fa-solid fa-user" style="color: #222d3f;"></i>
                            <input type="text" id="user" name="userID" required="" placeholder="UserID or Email"/>
                        </div>
                    </div>
                    <div class="pass">
                        <div class="passForm">
                            <i class="fa-solid fa-lock" style="color: #222d3f;"></i>
                            <input type="password" id="pass" name="password" required="" placeholder="Password"/>
                        </div>
                    </div>
                    <div class="forgot">
                        <a href="ForgotPasswordPage.jsp" id="forgotText">Forgot password?</a>
                    </div>
                    <input type="submit" id="loginBtn" name="action" value="Login"/>    
                </div>
                <div class="login-google">
                    <span>or</span>
                                <a href="https://accounts.google.com/o/oauth2/auth?scope=profile&redirect_uri=http://localhost:8080/eJournal-group4/LoginGoogleHandler&response_type=code&client_id=208257574048-p7s2qm46ddhvjapoajn37r6njaafeh4f.apps.googleusercontent.com&approval_prompt=force">
<img src="images/logo-google.png" alt="Google">Google</a>
                </div>
                <div class="registerLink">
                    <p>Don't have an account? <a href="RegistrationPage.jsp" id="signup">Register</a></p>
                </div>
        </div>
    </form>
            
                </content>
    <footer>
        &copy; Journal 2023
        <div class="contact-info">
            <div class="contact-item">
                <h4>Phone:</h4>
                <p>+123456789</p>
            </div>
            <div class="contact-item">
                <h4>Contact:</h4>
                <p>Your Name</p>
            </div>
            <div class="contact-item">
                <h4>Email:</h4>
                <p>your@email.com</p>
            </div>
            <div class="contact-item">
                <h4>Address:</h4>
                <p>123 Main Street, City, Country</p>
            </div>
        </div>
    </footer>
</body>
</html>
