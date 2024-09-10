<%-- 
    Document   : feedback_list
    Created on : 2 May, 2023, 4:47:38 PM
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
        <title>feedback_list Page</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <%@include file="artist_header.jsp" %>
    </head>
    <body>
        <div class="container">
            <br>
        <h1 style="text-align: center">Feedback List</h1>
        <br>
        <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Full Name</th>
      <th scope="col">Email</th>
      <th scope="col">Contact</th>
      <th scope="col">Message</th>


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
            String sql="select * from feedback_tbl";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
             {
            
          
      %>
    <tr>
  <form action="feedback1" method="post">
      <th scope="row"><%=counter++%></th>
      <input type="hidden" name="fid" value="<%=rs.getString("fid")%>">
      <td><%=rs.getString("fullname")%></td>
      <td><%=rs.getString("email")%></td>
      <td><%=rs.getString("contact")%></td>
      <td><%=rs.getString("message")%></td>
     
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