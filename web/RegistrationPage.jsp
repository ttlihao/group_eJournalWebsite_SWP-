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
        <link rel="stylesheet" href="science.css">
        <title>SCIENCE</title>
        
    </head>
    <body>
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

        <% 
            UserError userError = (UserError) request.getAttribute("USER_ERROR");
            if (userError == null){
                userError = new UserError();
            }
        %>

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
            <% String generalError = userError.getError();
       if (generalError != null) { %>
            <%= generalError %>
            <% } %>
        </form>

    </content>
</body>
</html>
