/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.group4.ejournal.controller;

import com.group4.ejournal.dao.PublicationDAO;
import com.group4.ejournal.dao.PublicationDTO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.sql.SQLException;
import java.util.Date;
import java.util.UUID;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author thien.phan
 */
@MultipartConfig(maxFileSize = 16177215)
public class ReceivePublicationController extends HttpServlet {

    public ReceivePublicationController() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            PublicationDAO dao = new PublicationDAO();
            // Get the uploaded file
            Part coverPagePart = request.getPart("coverPage");
            byte[] coverPageBytes = coverPagePart.getInputStream().readAllBytes();

            Part filePart = request.getPart("File");
            byte[] fileBytes = filePart.getInputStream().readAllBytes();

            // Create a new Publication object
            PublicationDTO publication = new PublicationDTO("12345", "0FDAFCE8-8", "My Publication", "This is a test publication", new Date(), "Science", true, 9.99f, new byte[1], true, new byte[0]);
            publication.setPublicationID(UUID.randomUUID().toString());
            publication.setTitle(request.getParameter("title"));
            publication.setCoverPage(coverPageBytes);
            publication.setFiles(fileBytes);

            // Insert the Publication into the database
            if (dao.insertPublication(publication)) {
                request.getRequestDispatcher("HomePage.jsp").forward(request, response);
            }else{
                
                request.getRequestDispatcher("HomePage.jsp").forward(request, response);
            }

        } catch (SQLException e) {
            // Handle database errors
            response.sendRedirect("error.jsp");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ReceivePublicationController.class.getName()).log(Level.SEVERE, null, ex);
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
