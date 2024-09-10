<%-- 
    Document   : index
    Created on : 3 Apr, 2023, 11:56:36 PM
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
        <title>Add_art Page</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <style>
            body{
                    background-image: url(images/pencil.jpg);
                    background-repeat: no-repeat;
                    background-size: cover;
            }
            .jumbotron
            {
                  
                    margin: auto auto auto auto;
                    width: 50%;
                    margin-top: 70px;
                    background-color: rgba(0 ,0,0,0.5);
                    border: solid;
                    padding-top: 20px;
                    padding-bottom: 20px;
                    padding-left: 10px;
                    border-radius:15px;
                    opacity: 0.9;

            }
            
            input[type=submit] 
            {
                position: relative;
                color: white;
                text-decoration: none;
                text-transform: uppercase;
                font-size: 0.9em;
                letter-spacing: 0.1em;
                font-weight: 400;
                padding: 10px 20px;
                transition: 0.5s;
                background-color: gold;
              border-radius: 7px;
              width: 100%;
              font-weight: 500;
            }
             input[type=submit]:hover
             {
                 letter-spacing: 0.25em;
             }
             
             label
             {
                 color: white;
                 font-weight: 500;
             }
              input[type=text],[type=file],[type=float],[type=textarea]
            {
  
               border-color: grey;
               border-radius: 7px;
            }
             
            
            span
            {
                color:red;
            }
            
        </style>
        
                <script src="validation.js"></script>
                <%@include file="artist_header.jsp" %>
    </head>
    <body>
        <form action="Add_Art" method="post">
        <div class="jumbotron"style=" margin: auto auto auto auto; width: 50%; margin-top: 70px; background-color: rgba(0 ,0,0,0.5); border: solid; padding-top: 20px; padding-bottom: 20px; padding-left: 10px; border-radius:15px; opacity: 0.9; ">
            <h2 style="color: gold;text-align:center">Add Art</h2>
            <br><br>
           
             <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-2">
                    <label>Art Category<span>*</span></label>
                </div>
                <div class="col-sm-7">
                    <select name="cname" class="form-control">
                        <%
                         Connection cn=null;
      Statement st=null;
     
      
      try
        { 
          Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_art_gallery","root","root");
            st=cn.createStatement();
            String sql="select cname from add_category_tbl";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
             {
                        %>
                        <option><%=rs.getString("cname")%></option>
                        
                        <%
       }
       }catch(Exception ex)
         {
           System.out.println(ex.toString());
         }
               
    %>
    
                    </select>
                </div>
                <div class="col-sm-1"></div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-2">
                    <label>Artist Name<span>*</span></label>
                </div>
                <div class="col-sm-7">
                    <input type="text" name="artist_name" onkeypress="javascript:return isStirng(event)" class="form-control" required="  " >
                </div>
                <div class="col-sm-1"></div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-2">
            
                    <label>Art Name <span>*</span></label>
                </div>
                <div class="col-sm-7">
                    <input type="text" name="art_name" onkeypress="javascript:return isString(event)"class="form-control" required="  ">
                </div>
                 <div class="col-sm-1"></div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-2">
            
                    <label>Art Image </label>
                </div>
                <div class="col-sm-7">
                    <input type="file"  name="art_image" class="form-control" >
                </div>
                 <div class="col-sm-1"></div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-2">
            
                    <label>Art Amount<span>*</span></label>
                </div>
                <div class="col-sm-7">
                <input type="float" name="art_amount" onkeypress="javascript:return isFloat(event)"class="form-control" required="  ">
                </div>
                 <div class="col-sm-1"></div>
            </div>
            <br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-2">
            
            <label>Description</label>
                </div>
                <div class="col-sm-7">
                    <textarea class="form-control" name="description" ></textarea>
                </div>
                 <div class="col-sm-1"></div>
            </div>
            <br><br>
        
        <div class="row">
             <div class="col-sm-1"></div>
                <div class="col-sm-10">
                
            <input type="submit"  name="btn" value="Submit" >
            
            </div>
                <div class=" col-sm-1"></div>
        </div>
        </div> 
        
        </form>
    </body>
</html>