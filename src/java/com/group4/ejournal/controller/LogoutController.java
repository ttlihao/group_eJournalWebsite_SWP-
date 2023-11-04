package com.group4.ejournal.controller;

import jakarta.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class LogoutSrv
 */
@WebServlet(urlPatterns = "/LogoutController", name = "LogoutController")
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LogoutController(){
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");
		
		HttpSession session = request.getSession();
		
		session.setAttribute("userName", null);
		session.setAttribute("passWord", null);
		session.setAttribute("userType", null);
		
		RequestDispatcher rd = request.getRequestDispatcher("HomePage.jsp");
		
		rd.include(request, response);
		
		pw.print("<script>document.getElementById('message').innerHTML='Successfully Logged Out!'</script>");		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
