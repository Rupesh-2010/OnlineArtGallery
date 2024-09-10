<%-- 
    Document   : feedback_view_page
    Created on : 3 May, 2023, 3:22:16 PM
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
        <div class="container">
            <%
                Connection cn=null;
                Statement st=null;
    

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
            <div class="category">
                <div class="col-sm-12">
                    <img src="" height="200" width="200">
                    <br>
                    <p>Full Name=<%=rs.getString("fullname")%></p>
                     <p>Email=<%=rs.getString("email")%></p>
                      <p>Contact=<%=rs.getString("contact")%></p>
                       <p>Message=<%=rs.getString("message")%></p>
                      
                </div>
                <br> <br>
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