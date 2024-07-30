<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ page import="java.sql.*" %>
<%
	String id=request.getParameter("cust_id");
	try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/book", "root", "root");
		Statement st=conn.createStatement();
		int i=st.executeUpdate("delete from book1 where cust_id="+id);
		response.sendRedirect("cancel.jsp");
		//out.println("<h4>deleted</h4>");
	}catch(Exception e){
		System.out.print(e);
		e.printStackTrace();
	}
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cancel</title>
</head>
<body>

</body>
</html>