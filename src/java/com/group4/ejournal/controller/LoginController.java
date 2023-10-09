/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.group4.ejournal.controller;

import com.group4.ejournal.dao.UserDAO;
import com.group4.ejournal.dao.UserDTO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author Phan Thien
 */
@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public LoginController() {
        super();
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

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
        String emailId = request.getParameter("emailId");
        String password = request.getParameter("password");
        // To verify whether entered data is printing correctly or not
        System.out.println("emailId.." + emailId);
        System.out.println("password.." + password);
        // Here the business validations goes. As a sample, 
          // we can check against a hardcoded value or pass 
          // the values into a database which can be available in local/remote  db
        // For easier way, let us check against a hardcoded value
        if (emailId != null && emailId.equalsIgnoreCase("admin@gmail.com") && password != null && password.equalsIgnoreCase("admin")) {
            // We can redirect the page to a welcome page
            // Need to pass the values in session in order 
              // to carry forward that one to next pages
            HttpSession httpSession = request.getSession();
            // By setting the variable in session, it can be forwarded
            httpSession.setAttribute("emailId", emailId);
            request.getRequestDispatcher("welcome.jsp").forward(request, response);
        }
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
