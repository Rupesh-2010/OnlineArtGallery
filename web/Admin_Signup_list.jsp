<%-- 
    Document   : Admin_Signup_list
    Created on : 2 May, 2023, 5:06:11 PM
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
        <title>signup_page_list Page</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <br>
        <h1 style="text-align: center">Admin Signup List</h1>
        <br>
        <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Full Name</th>
      <th scope="col">Address</th>
      <th scope="col">Contact</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
      


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
            String sql="select * from admin_signup_tbl";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
             {
            
          
      %>
    <tr>
  <form action="Admin_Signup" method="post">
      <th scope="row"><%=counter++%></th>
      <input type="hidden" name="sid" value="<%=rs.getString("sid")%>">
      <td> <input type="text" name="txt_name" value="<%=rs.getString("fullname")%>" class="form-control"></td>
      <td><input type="text" name="txt_address" value="<%=rs.getString("address")%>" class="form-control"></td>
      <td><input type="text" name="contact" value="<%=rs.getString("contact")%>" class="form-control"></td>
      <td><input type="text" name="email" value="<%=rs.getString("email")%>" class="form-control"></td>
      <td><input type="text" name="password" value="<%=rs.getString("pass")%>" class="form-control"></td>
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