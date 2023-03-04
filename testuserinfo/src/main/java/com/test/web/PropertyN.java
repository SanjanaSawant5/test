package com.test.web;

import java.io.IOException;



import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.bean.Property;
import com.test.dao.PropertyDao;
import com.test.dbcon.ConProv;
 
@WebServlet("/PropertyServlet")
public class PropertyN extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 
	public PropertyN() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");//tcode
		String password = request.getParameter("password");
		try {
			Connection connection = ConProv.getConn();
			PropertyDao dao = new PropertyDao(connection);
			Property property = dao.callStoredProcedure(username, password);
			if (property != null) {
				HttpSession session = request.getSession();
				session.setAttribute("property", property);
				RequestDispatcher dispatcher = request.getRequestDispatcher("property1.jsp");
				dispatcher.forward(request, response);
			} else {
				response.sendRedirect("Error.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("Error.jsp");
		}

	}

}