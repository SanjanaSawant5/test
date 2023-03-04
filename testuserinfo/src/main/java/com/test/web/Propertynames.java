package com.test.web;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.dao.PropertynamesDao;
import com.test.dbcon.ConProv;

 
@WebServlet("/PropertynamesServlet")
public class Propertynames extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public Propertynames() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String codeParam = request.getParameter("code");
		int code = Integer.parseInt(codeParam);
		String property = request.getParameter("property");
		try {
			Connection connection = ConProv.getConn();
			PropertynamesDao dao = new PropertynamesDao(connection);
			List<com.test.bean.Propertynames> propertynames = dao.getPropertynamesByCodeAndProperty(code, property);
			if(propertynames != null) {
				HttpSession session = request.getSession();
				session.setAttribute("propertynames", propertynames);
				RequestDispatcher dispatcher = request.getRequestDispatcher("Propertynames.jsp");
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
