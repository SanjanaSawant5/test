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

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		 String username = request.getParameter("username");
	        String password = request.getParameter("password");

	        Connection connection = ConProv.getConn();
	        try {
	            PreparedStatement statement = connection.prepareStatement("SELECT * FROM users WHERE username=? AND password=?");
	            statement.setString(1, username);
	            statement.setString(2, password);
	            ResultSet resultSet = statement.executeQuery();

	            if (resultSet.next()) {
	                HttpSession session = request.getSession();
	                session.setAttribute("username", username);

	                int age = resultSet.getInt("age");
	                String name = resultSet.getString("name");
	                String address = resultSet.getString("address");
	                request.setAttribute("age", age);
	                request.setAttribute("name", name);
	                request.setAttribute("address", address);

	                RequestDispatcher dispatcher = request.getRequestDispatcher("userInfo.jsp");
	                dispatcher.forward(request, response);
	            } else {
	                response.sendRedirect("Error.jsp");
	            }
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}

}
