package com.parkingportalmain.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

 
@WebServlet("/AdminServlet")
public class Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//doGet(request, response);
		String username = request.getParameter("username");
		String password = request.getParameter("password");
			if(username.equals("admin") && password.equals("admin")) {
				RequestDispatcher rd = request.getRequestDispatcher("ARform.jsp");
				rd.forward(request, response);
			}
			else {
				response.sendRedirect("Error1.jsp");
			}
	}

}
