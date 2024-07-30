<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Young+Serif&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Tilt+Prism&display=swap" rel="stylesheet">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
   <link href="css/style.css" rel="stylesheet">
</head>
<body>
    <section class="bg-black pb-5">
        <div class="container">
            <div>
                  <h1 class="col fw-bold  text-center pt-5">Booking Cancel</h1> 
            </div>
        </div>
     </section>
     
    <%
	
	
	
	
	try {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","root");
		
		Statement stat=conn.createStatement();
		
		

		
		ResultSet rs=stat.executeQuery("select cust_id,name,contact,seat1 from book1");
		
		
		%>
		<table class="table table-bordered container">
			<thead>
				<tr>
					<th>Cust_id</th>
					<th>name</th>
					<th>contact</th>
					<th>seat1</th>
					<th>Delete</th>
				</tr>
				
			</thead>
		<%
		
		while(rs.next()) {
			int cust_id=rs.getInt(1);
			String p_name=rs.getString(2);
			String p_con=rs.getString(3);
			String p_sea=rs.getString(4);
			
			
			
			//out.println(p_name + p_img + p_price);
			
			%>
			
			<tbody>
					<tr>
						<td><% out.println(cust_id); %></td>
						<td><% out.println(p_name); %></td>
						<td><% out.println(p_con); %></td>
						<td><% out.println(p_sea); %></td>
						
						<td>
						<a href="delete.jsp?cust_id=<%=rs.getInt("cust_id") %>"><button type="submit" class="btn btn-primary" >Delete</button></a>
					   </td>
					</tr>
				</tbody>
			
			
			
			<% 
			
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	
	
	%>
	
	</table>
	
	
	


    
</body>
</html>