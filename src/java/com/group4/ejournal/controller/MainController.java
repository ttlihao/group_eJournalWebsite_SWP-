/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.group4.ejournal.controller;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Phan Thien
 */
@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {


    private static final String HOME_PAGE = "HomePage.jsp";
    private static final String LOGIN = "Login";
    private static final String LOGIN_CONTROLLER = "LoginController";
    private static final String LOGOUT = "Logout";
    private static final String LOGOUT_CONTROLLER = "LogoutController";
    private static final String REGISTRATION_PAGE = "RegistrationPage";
    private static final String REGISTRATION_PAGE_VIEW = "RegistrationPage.jsp";
    private static final String REGISTER = "Register";
    private static final String REGISTER_CONTROLLER = "RegistrationController";
    private static final String SEARCH = "Search";
    private static final String SEARCH_CONTROLLER = "SearchPublicationController";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = HOME_PAGE;
        try {
            String action = request.getParameter("action");
            if (action == null) {
                url = HOME_PAGE;
            } else if (REGISTRATION_PAGE.equals(action)) {
                url = REGISTRATION_PAGE_VIEW;
            } else if (REGISTER.equals(action)) {
                url = REGISTER_CONTROLLER;
            } else if (LOGIN.equals(action)) {
                url = LOGIN_CONTROLLER;
            }else if (LOGOUT.equals(action)) {
                url = LOGOUT_CONTROLLER;
            }
            else if (SEARCH.equals(action)) {
                url = SEARCH_CONTROLLER;
            }
        } catch (Exception e) {
            log("Erorr at MainController!" + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
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
