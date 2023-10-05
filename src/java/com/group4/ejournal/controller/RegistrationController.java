/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.group4.ejournal.controller;

import com.group4.ejournal.dao.RegistrationDAO;
import com.group4.ejournal.dao.RegistrationDTO;
import com.group4.ejournal.dao.UserError;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.time.LocalDate;

/**
 *
 * @author Phan Thien
 */
@WebServlet(name = "RegistrationDAO", urlPatterns = {"/RegistrationDAO"})
public class RegistrationController extends HttpServlet {

    private static final String ERROR = "RegistrationPage.jsp";
    private static final String SUCCESS = "HomePage.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String url = ERROR;
        UserError userError = new UserError();

        try {

            RegistrationDAO dao = new RegistrationDAO();
            boolean checkValidation = true;
            String userID = request.getParameter("UserID");
            String fullName = request.getParameter("FullName");
            String address = request.getParameter("Address");
            String phone = request.getParameter("Phone");
            String userName = request.getParameter("UserName");
            String password = request.getParameter("Password");
            String email = request.getParameter("Email");
            String birth = request.getParameter("Birth");
            String roleID = request.getParameter("RoleID");
            String confirm = request.getParameter("confirm");

            if (userID.length() < 2 || userID.length() > 10) {
                userError.setUserIDError("UserID must be in [2, 10]");
                checkValidation = false;
            }
            boolean checkDuplicate = dao.checkDuplicate(userID);
            if (checkDuplicate) {
                userError.setUserIDError("UserID already existed!");
                checkDuplicate = false;
            }
            if (fullName.length() < 2 || fullName.length() > 50) {
                userError.setFullNameError("FullName must be in [2, 50]");
                checkValidation = false;
            }
            if (!phone.matches("\\d+")) {
                userError.setPhoneError("Phone must contain only numbers");
                checkValidation = false;
            }
            if (userName.length() < 2 || userName.length() > 20) {
                userError.setUserNameError("UserName must be in [2, 10]");
                checkValidation = false;
            }
            if (!password.equals(confirm)) {
                userError.setConfirmError("those password does not match!");
                checkValidation = false;
            }
            String emailPattern = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$";

            if (!email.matches(emailPattern)) {
                userError.setEmailError("Invalid email address");
                checkValidation = false;
            }
            try {
                java.sql.Date parsedDate = java.sql.Date.valueOf(birth);
                java.sql.Date currentDate = new java.sql.Date(System.currentTimeMillis());

                if (parsedDate.after(currentDate)) {
                    userError.setBirthError("Birth date cannot be in the future");
                    checkValidation = false;
                }
            } catch (Exception e) {
                userError.setBirthError("Invalid birth date format");
                checkValidation = false;
            }
            // Role ID Validation
            try {
                int roleIDValue = Integer.parseInt(roleID);
                if (roleIDValue < 1 || roleIDValue > 3) {
                    userError.setRoleIDError("Role ID must be between 1 and 3");
                    checkValidation = false;
                }
            } catch (NumberFormatException e) {
                userError.setRoleIDError("Invalid Role ID format");
                checkValidation = false;
            }
            if (checkValidation) {
                RegistrationDTO user = new RegistrationDTO();
                boolean checkInsert = dao.insert(user);
                if (checkInsert) {
                    url = SUCCESS;
                }else{
                    userError.setError("Unknow Error!");
                    request.setAttribute("USER_ERROR", userError);
                }
            }
        } catch (Exception e) {
            log("Error at RegistrationController!" + e.toString());
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
