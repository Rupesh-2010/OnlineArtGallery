<%-- 
    Document   : Art_booking_list_user
    Created on : 4 May, 2023, 10:47:21 AM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>art_booking_list Page</title>
   
        <link rel="stylesheet" href="bootstrap.min.css">
        <%@include file="user_header.jsp" %>
        
    </head>
    <body>
        <div class="container">
            <br>
        <h1 style="text-align: center">Art Booking List</h1>
        <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Full Name</th>
      <th scope="col">Address</th>
      <th scope="col">Contact</th>
      <th scope="col">Art Name</th>
      <th scope="col">Art Image</th>
      <th scope="col">Quantity</th>
      <th scope="col"> Amount</th>
      <th scope="col">Total Amount</th>
      <th scope="col"> Update</th>
      <th scope="col"> Delete</th>


    </tr>
  </thead>
  <tbody>
      <%
      Connection cn=null;
      Statement st=null;
      int counter=1;
      
      try
        { 
          Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_art_gallery","root","root");
            st=cn.createStatement();
            String sql="select * from art_booking_tbl";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
             {
            

      %>
    <tr>
  <form action="Art_booking" method="post">
      <th scope="row"><%=counter++%></th>
      <input type="hidden" name="bid" value="<%=rs.getString("bid")%>">
      <td><%=rs.getString("fullname")%></td>
      <td><%=rs.getString("address")%></td>
      <td><%=rs.getString("contact")%></td>
      <td><%=rs.getString("art_name")%></td>
      <td><%=rs.getString("art_image")%></td>
      <td><%=rs.getString("quantity")%></td>
      <td><%=rs.getString("art_amount")%></td>
      <td><%=rs.getString("tamount")%></td>

      <td><input type="submit" name="btn" value="Update" class="btn btn-success"></td>
      <td><input type="submit" name="btn" value="Delete" class="btn btn-danger"></td>
      
  </form>
    </tr>
    <%
       }
       }catch(Exception ex)
         {
           System.out.println(ex.toString());
         }
               
    %>
    
  </tbody>
</table>
        </div>
    </body>
</html>