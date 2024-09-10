<%-- 
    Document   : AddArt_list
    Created on : 30 Apr, 2023, 2:03:14 PM
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
        <title>add_art_list Page</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <%@include file="artist_header.jsp" %>
        

    </head>
    <body>
        <div class="container">
            <br>
        <h1 style="text-align: center">Add Art List</h1>
        <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Artist Name</th>
      <th scope="col">Art Name</th>
      <th scope="col">Art Image</th>
      <th scope="col">Art Amount</th>
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
            String sql="select * from add_art_tbl";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
             {
      %>
    <tr>
  <form action="Add_Art" method="post">
      <th scope="row"><%=counter++%></th>
      <input type="hidden" name="aid" value="<%=rs.getString("aid")%>">
      <td><input type="text" name="artist_name" value="<%=rs.getString("artist_name")%>" class="form-control"></td>
      <td><input type="text" name="art_name" value="<%=rs.getString("art_name")%>" class="form-control"></td>
      <td><input type="text" name="art_image" value="<%=rs.getString("art_image")%>"<img src="{{row[2]}}" height="100" width="100"> class="form-control"></td>
      <td><input type="text" name="art_amount" value="<%=rs.getString("art_amount")%>"  class="form-control"></td>
      <td><input type="text" name="description" value="<%=rs.getString("description")%>"  class="form-control"></td>
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
