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
        
    </head>
    <body>
<<<<<<< Updated upstream
        <div class="header">
            <div class="logo">
                <a href="home.html"><img src="/images/logo-science.png" alt="Journal"></a>
                <h2>Journal</h2>
            </div>
            <div class="navlist">
                <div class="myList">
                    <div class="list">
                        <li><a href="home.html">Home</a></li>
                        <li><a href="science.html">Subjects</a></li>
                        <li><a href="about.html">About</a></li>
                    </div>
=======
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
>>>>>>> Stashed changes
                </div>
            </div>
        </div>

    <content>
        <div class="text">
            <h1>B<span>ecome</span> A<span>n</span> A<span>ccount</span></h1>
            <p>
                Welcome back, my journal of science, to another chapter in the exploration of the unknown. 
            </p>
        </div>
<<<<<<< Updated upstream

        <% 
            UserError userError = (UserError) request.getAttribute("USER_ERROR");
            if (userError == null){
                userError = new UserError();
=======
         <div class="signupForm">
            <div class="signup">
                <h2>Register</h2>
            </div>
                     <% UserError userError = (UserError) request.getAttribute("USER_ERROR");
        if (userError == null){
            userError = new UserError();
>>>>>>> Stashed changes
            }
        %>

        <form action="MainController" method="POST">
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
                <button id="signupBtn"><input type="submit" name="action" value="Register"></button>
                <div class="login-google">
                    <span>or</span>
                    <a href="#" ><img src="images/logo-google.png" alt="Google" ></a>
                </div>
            </div>
            <div class="loginLink">
                <p>Do you already have an account? <a href="LoginPage.jsp" id="login">Login</a></p>
            </div>
        </div>
    </content>
<!--        </form>
        <form action="MainController" method="POST">
            <label for="userName">User Name:</label>
            <input type="text" id="userName" name="userName" required><br><br>
            <% String userNameError = userError.getUserNameError();
       if (userNameError != null) { %>
            <%= userNameError %>
            <% } %>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br><br>

            <label>Confirm Password:</label>
            <input type="password" id="confirm" name="confirm" required><br>
            <% String confirmError = userError.getConfirmError();
       if (confirmError != null) { %>
            <%= confirmError %>
            <% } %>

            <label for="fullName">Full Name:</label>
            <input type="text" id="fullName" name="fullName" required><br><br>
            <% String fullNameError = userError.getFullNameError();
       if (fullNameError != null) { %>
            <%= fullNameError %>
            <% } %>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required><br><br>
            <% String addressError = userError.getAddressError();
       if (addressError != null) { %>
            <%= addressError %>
            <% } %>

            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" required><br><br>
            <% String phoneError = userError.getPhoneError();
       if (phoneError != null) { %>
            <%= phoneError %>
            <% } %>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br><br>
            <% String emailError = userError.getEmailError();
       if (emailError != null) { %>
            <%= emailError %>
            <% } %>

            <label for="birth">Birth Date (yyyy-mm-dd):</label>
            <input type="text" id="birth" name="birth" pattern="\d{4}-\d{2}-\d{2}" required><br><br>
            <% String birthError = userError.getBirthError();
   if (birthError != null) { %>
            <%= birthError %>
            <% } %>

            <label for="roleID">Role ID:</label>
            <select id="roleID" name="roleID" required>
                <option value="1">Author</option>
                <option value="2">User</option>
            </select><br><br>
            <% String roleIDError = userError.getRoleIDError();
       if (roleIDError != null) { %>
            <%= roleIDError %>
            <% } %>

            <input type="submit" name="action" value="Register">
            <input type="reset" value="Reset">
<<<<<<< Updated upstream
            <% String generalError = userError.getError();
       if (generalError != null) { %>
            <%= generalError %>
            <% } %>
        </form>

    </content>
</body>
=======
            <%= userError.getError() %>
        </form>-->
    </body>
>>>>>>> Stashed changes
</html>
