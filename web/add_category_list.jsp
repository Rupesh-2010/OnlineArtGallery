<%-- 
    Document   : add_category_list
    Created on : 2 May, 2023, 4:35:46 PM
    Author     : Admin
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Category List Page</title>
        <title>add_category_list Page</title>
        <link rel="stylesheet" href="bootstrap.min.css">
                <%@include file="admin_header.jsp" %>
    </head>
    <body>
        <div class="container">
            <br>
        <h1 style="text-align: center">Add Category List</h1>
        <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Category Name</th>
      <th scope="col">Image</th>
      <th scope="col">Description</th>
      
      <th scope="col">Update</th>
      <th scope="col">Delete</th>


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
            String sql="select * from add_category_tbl";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
             {
            
          
      %>
    <tr>
  <form action="Add_Category" method="post">
      <th scope="row"><%=counter++%></th>
      <input type="hidden" name="cid" value="<%=rs.getString("cid")%>">
      <td><input type="text" name="category_name" value="<%=rs.getString("cname")%>" class="form-control"></td>
      <td><input type="text" name="image" value="<%=rs.getString("image")%>" class="form-control"></td>
      <td><input type="text" name="description" value="<%=rs.getString("description")%>" class="form-control"></td>
      
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