package com.dropdown.web;

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

import com.dropdown.conprov.ConProv;
import com.dropdown.dao.PropertyDao;
 

 

@WebServlet("/PropertyServlet")
public class Propertynames extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Propertynames() {
        super();         
    }

	 
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String codeParam = request.getParameter("code");
		int code = Integer.parseInt(codeParam);
		String property = request.getParameter("property");
		try {
			Connection connection = ConProv.getConn();
			PropertyDao dao = new PropertyDao(connection);
			List<com.dropdown.bean.Propertynames> propertynames = dao.getPropertyByPropertyAndCode(code, property);
			if(propertynames != null) {
				HttpSession session = request.getSession();
				session.setAttribute("property", property);
				RequestDispatcher dispatcher = request.getRequestDispatcher("dropdown.jsp");
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
