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
                  <h1 class="col fw-bold  text-center pt-5">Details</h1> 
            </div>
        </div>
     </section>
     
     <%
    
    Class.forName("com.mysql.cj.jdbc.Driver");
	  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","root");
	  Statement state=conn.createStatement();
	  ResultSet rs3=state.executeQuery("Select * from book1");
	 
			
	%>
	
	<table class="table table-bordered container  table-hover table-danger border-primary">
		<thead>
			<tr>
			<th>Cust_id</th>
			<th>Name</th>
			<th>Mobile No</th>
			<th>Seat</th>
			</tr>
		</thead>
		
		<%
			while(rs3.next()){
				 int id=rs3.getInt(1);
	    		  String name1=rs3.getString(2);
	    		  String mob=rs3.getString(3);
	    		  String seat1=rs3.getString(4);
	    		
	    		 
				
				%>
				
				<tbody>
					<tr>
						<td><% out.println(id); %></td>
						<td><% out.println(name1); %></td>
						<td><% out.println(mob); %></td>
						<td><% out.println(seat1); %></td>
						
						
					</tr>
				</tbody>
				
				<%
			}
  
    
    
    
    
    %> 
     
</body>
</html>