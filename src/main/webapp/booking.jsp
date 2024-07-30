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
    <section class="text-center pt-5 pb-sm-4">
        <p class="reg">Student Registration Form</p>
    </section>  

    <section class="text-center">
       <div class="container">
          <form  method="post" action="Book">
           <div class="bor-1 px-2 px-sm-3 px-md-4 px-lg-0  col-lg-8 mx-auto ">
             <div class=" d-flex col-12 col-lg-9 mx-auto py-2 pt-3 pt-lg-4">
                <label for="name" class="nam my-2">Name:</label>
                <input type="text" id="name" class="form-control ms-3 ms-md-5" placeholder="enter your name" name="input1">
             </div>

             <div class=" d-flex col-12 col-lg-9 mx-auto py-2 pt-lg-4">
                <label class="nam my-2">MobileNo:</label>
                <input   class="form-control  ms-3 " placeholder="enter your contact no" name="input2">
             </div>

             <div class=" d-flex col-12 col-lg-9 mx-auto py-2 pt-lg-4">
                <label class="nam my-2">Seat:</label>
                 <%
                   Class.forName("com.mysql.cj.jdbc.Driver");
                   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/book","root","root");
                   
                   Statement state=conn.createStatement();
                   
                   ResultSet rs1=state.executeQuery("select * from seat");
                 %>
                <select class="form-select  ms-3" name="input3">
                    <option selected>Open this select menu</option>
                  
                    <% while(rs1.next()){%>
					   <option value="<%= rs1.getString("s_no")%>">
						<%= rs1.getString("s_no") %>
						</option>
					<%}%>
                </select>
             </div>

           

             <div class="mt-3">
               <button type="submit" class="btn sub1 mb-3 mx-auto">submit</button>
             </div>
           
          </div>
          
          </form>
       </div>
    </section>
</body>
</html>