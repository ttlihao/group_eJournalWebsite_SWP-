/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.group4.ejournal.filter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/**
 *
 * @author huy16
 */
@WebServlet("/UploadServlet")
public class UploadServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Directory where you want to save the uploaded image
        String uploadDir = "C:/uploads"; // Change this to your desired directory

        // Create the directory if it doesn't exist
        File dir = new File(uploadDir);
        if (!dir.exists()) {
            dir.mkdirs();
        }

        Part filePart = request.getPart("file");
        String fileName = getFileName(filePart);
        String filePath = uploadDir + File.separator + fileName;

        // Save the uploaded image to the specified directory
        try (InputStream fileContent = filePart.getInputStream();
             OutputStream out = new FileOutputStream(filePath)) {
            int read;
            final byte[] buffer = new byte[1024];
            while ((read = fileContent.read(buffer)) != -1) {
                out.write(buffer, 0, read);
            }
            response.getWriter().println("Image successfully uploaded.");
        } catch (IOException e) {
            response.getWriter().println("Error uploading image: " + e.getMessage());
        }
    }

    private String getFileName(Part part) {
        String contentDisposition = part.getHeader("content-disposition");
        String[] tokens = contentDisposition.split(";");
        for (String token : tokens) {
            if (token.trim().startsWith("filename")) {
                return token.substring(token.indexOf('=') + 1).trim().replace("\"", "");
            }
        }
        return "image.jpg"; // Default file name if no filename found
    }
}
