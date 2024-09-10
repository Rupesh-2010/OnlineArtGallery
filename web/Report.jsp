<%-- 
    Document   : Report
    Created on : 16 May, 2023, 2:10:35 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login_page</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <style>
            body
            {
                
                background-image: url(images/ReportPage.jpg);
                background-repeat: no-repeat;
                background-size: cover;

            }
            btn
            {
                background-color:#00FFCC;
            }
            .jumbotron
                {
                    margin: auto auto auto auto;
                    margin-top: 80px;
                    border:  3.6px solid #00FFCC;
                    padding-top: 10px;
                    padding-bottom: 20px;
                    box-shadow: 0px 7px 10px 0px #E7ECEA,1px 5px 4px 0px #E7ECEA;
                    border-radius: 30px;
                    background: #141414;
                    width: 38%;
                    
                    opacity: 0.6;
                }
                .jumbotron:hover
                {
                    transition: 0.9s ease-in-out;
                    border:2.6px solid #00FF00;
                        
                    
                }
                
                
                
               
        </style>
    </head>
    <body>
        <%@include file="admin_header.jsp" %>
        <form action="View_report.jsp" method="post">
        <div class="jumbotron">
            
         
                
            <div class="row">
                <div class="col-sm-4"></div>
                                <div class="col-sm-4">

                <h2 style ="color:palevioletred; text-align:center">Report</h2>
             
                                </div>
                                <div class="col-sm-4"></div>

            </div>
            <br><br>
            <div class="row">
             <div class="col-sm-4"></div>
                                <div class="col-sm-4">

                <input type="submit" name="btn"  value="Category Details" >
                                </div>
             <div class="col-sm-4"></div>
            </div>
            <br><br>
           <div class="row">
             <div class="col-sm-4"></div>
                                <div class="col-sm-4">

                <input type="submit" name="btn"  value="Art Details">
                                </div>
             <div class="col-sm-4"></div>
            </div>
            <br><br>
            
            <div class="row">
             <div class="col-sm-4"></div>
                                <div class="col-sm-4">

                <input type="submit" name="btn"  value="Booking Details">
                                </div>
             <div class="col-sm-4"></div>
            </div>
            
            
                               
            </div>
        </div>             
    </form>
    </body>
</html>