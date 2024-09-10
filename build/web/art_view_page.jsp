<%-- 
    Document   : art_view_page
    Created on : 2 May, 2023, 5:37:35 PM
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
        <title>art_view Page</title>
        <link rel="stylesheet" href="bootstrap.min.css">
        <style>
            .art{
                display: inline-block;
            }
        </style>
     
    </head>
    <body>
         <%@include file="user_header.jsp" %>
        <br>
        
        <div class="container">
            <%
                Connection cn=null;
                Statement st=null;
                String sql;

 try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_art_gallery","root","root");
            st=cn.createStatement();
            
                     sql="select * from add_art_tbl where cname='"+request.getParameter("cname")+"'";
                      
                       
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
            {
            
            
        
       

            
            %>
            
            <div class="art">
                <form action="art_view_page" method="post">
                <div class="col-sm-12">
                    <img src="<%=rs.getString("art_image")%>" height="200" width="200">
                    <br>
                    <p>Artist Name=<%=rs.getString("artist_name")%></p>
                    <input type="hidden" name="art_name" value="<%=rs.getString("art_name")%>">
                    <input type="hidden" name="art_image" value="<%=rs.getString("art_image")%>">
                    <input type="hidden" name="art_amount" value="<%=rs.getString("art_amount")%>">
                     <p>Art Name=<%=rs.getString("art_name")%></p>
                      <p>Art Amount=<%=rs.getString("art_amount")%></p>
                      <p>Description=<%=rs.getString("description")%></p>
                      <input type="submit"  name="btn" value="view more"  class="btn btn-info">
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