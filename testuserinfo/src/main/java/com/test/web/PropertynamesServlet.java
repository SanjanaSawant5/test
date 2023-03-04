package com.test.web;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.test.dbcon.ConProv;
 
@WebServlet("/Propertynames")
public class PropertynamesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     
    public PropertynamesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);'
		String codeParam = request.getParameter("code");
		int code = Integer.parseInt(codeParam);
		String property = request.getParameter("property");
		
		Connection connection = ConProv.getConn();
		try {
			PreparedStatement statement = connection.prepareStatement("SELECT * FROM propertynames");
			statement.setInt(1, code);
            statement.setString(2, property);
            ResultSet resultSet = statement.executeQuery();
            
            if (resultSet.next()) {
                HttpSession session = request.getSession();
                RequestDispatcher dispatcher = request.getRequestDispatcher("Propertynames.jsp");
                dispatcher.forward(request, response);
            } else {
                response.sendRedirect("Error.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
		}
	}

}
