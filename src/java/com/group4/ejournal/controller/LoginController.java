/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.group4.ejournal.controller;

import com.group4.ejournal.dao.UserDAO;
import com.group4.ejournal.dao.UserDTO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.sql.SQLException;

/**
 *
 * @author Phan Thien
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {
private static final long serialVersionUID = 1L;
    private static String HOMEPAGE = "/HomePage.jsp";

    private UserDAO dao;

    public LoginController() throws SQLException, ClassNotFoundException {
        super();
        dao = new UserDAO();//create new data object to interact with database
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter pwOut = response.getWriter();
        //get input from jsp		
        String Email = request.getParameter("email");
        String Password = request.getParameter("psword");

        //Validate Login with input
        if (dao.validateLogin(Email, Password)) {
            //create session and store variables
            UserDTO user = dao.userSession(Email);
            HttpSession session = request.getSession();
            session.setAttribute("UserName", user.getUserName());
            session.setAttribute("Email", Email);
            //load welcome page with session data
            RequestDispatcher view = request.getRequestDispatcher(HOMEPAGE);
            view.forward(request, response);

        } //if input is not stored in database print error message and reload page
        else {
            pwOut.print("<p style=\"color:red\">Incorrect Username or Password!</p>");
            RequestDispatcher view = request.getRequestDispatcher("/index.jsp");
            view.include(request, response);

        }

        pwOut.close();
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
