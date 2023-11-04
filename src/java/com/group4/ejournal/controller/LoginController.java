/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.group4.ejournal.controller;

import com.group4.ejournal.dao.UserDAO;
import com.group4.ejournal.dao.UserDTO;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author thien.phan
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
                    PrintWriter pwOut = response.getWriter();
                    UserDAO dao = new UserDAO();
        //get input from jsp		
        String Email = request.getParameter("userName");
        String Password = request.getParameter("passWord");

        //Validate Login with input
        if (dao.validateLogin(Email, Password)) {
            //create session and store variables
            UserDTO user = dao.userSession(Email);
            HttpSession session = request.getSession();
            session.setAttribute("userName", user.getUserName());
            session.setAttribute("Email", Email);
            session.setAttribute("userType", user.getRoleID());
            session.setAttribute("passWord", user.getPassword());
            //load welcome page with session data
            RequestDispatcher view = request.getRequestDispatcher("HomePage.jsp");
            view.forward(request, response);

        } //if input is not stored in database print error message and reload page
        else {
            pwOut.print("<p style=\"color:red\">Incorrect Username or Password!</p>");
            RequestDispatcher view = request.getRequestDispatcher("/HomePage.jsp");
            view.include(request, response);

        }

        pwOut.close();
        }catch(Exception e){
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
