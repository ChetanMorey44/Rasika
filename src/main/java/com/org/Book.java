package com.org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Book
 */
@WebServlet("/Book")
public class Book extends HttpServlet {
	
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		String nam=request.getParameter("input1");
		String con=request.getParameter("input2");
		String sea=request.getParameter("input3");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","root");
			Statement state=conn.createStatement();
			state.executeUpdate("insert into book1(name,contact,seat1) values('"+nam+"','"+con+"','"+sea+"')");
			
			out.println("Data Inserted");
			response.sendRedirect("thank.jsp");
		}
		catch(Exception e) {
			e.printStackTrace();
		}

		
	
	}

}
