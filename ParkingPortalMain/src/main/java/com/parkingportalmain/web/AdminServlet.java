package com.parkingportalmain.web;

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

import com.parkingportalmain.conprov.ConProv;

 

 
@WebServlet("/Admin")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public AdminServlet() {
        super();
         
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        Connection connection = ConProv.getConn();
        try {
            PreparedStatement statement = connection.prepareStatement("SELECT * FROM propertyname");
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();

        if(username.equals("admin") && password.equals("admin")) {
            //request.getSession().setAttribute("username", username);
        	 HttpSession session = request.getSession();
            RequestDispatcher rd = request.getRequestDispatcher("ARform.jsp");
			rd.forward(request, response);
        } else {
            response.sendRedirect("Error1.jsp");
         } 
        }catch (SQLException e) {
          e.printStackTrace();
        }
	}

}
