<%-- 
    Document   : category_view_page
    Created on : 2 May, 2023, 5:40:50 PM
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
        <title>category_view Page</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style>
            .category{
                display: inline-block;      
            }
        </style>
        <%@include file="user_header.jsp" %>
    </head>
    <body>
        <br>
       
        <div class="container">
            <%
                Connection cn=null;
                Statement st=null;
    

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
           
            <div class="category">
                 <form action="art_view_page.jsp" metmethod="post">
                <div class="col-sm-12">
                    <img src="<%=rs.getString("image")%>" height="200" width="200">
                    <br>
                    
                    <p>Category Name=<%=rs.getString("cname")%></p>
                    <input type="hidden" name="cname" value="<%=rs.getString("cname")%>">
                      <p>Description=<%=rs.getString("description")%></p>
                      <input type="submit" name="btn" value="view more"  class="btn btn-info">

                </div>
                <br> <br>   
                </form>
            </div>
            
            
             <%
             }
              }catch(Exception ex)
        {
        
        }
             
             %>
             <br><br>
        </div>
        
    </body>
</html>