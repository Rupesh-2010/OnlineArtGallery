<%-- 
    Document   : user_login
    Created on : 30 Apr, 2023, 1:38:58 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User_login Page</title>
  
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <style>
           
               .jumbotron
                {
                    margin: auto auto auto auto;
                    margin-top: 80px;
                    border:  3.6px solid #00FFCC;
                    padding-top: 20px;
                    padding-bottom: 20px;
                    box-shadow: 0px 7px 10px 0px #E7ECEA,1px 5px 4px 0px #E7ECEA;
                    border-radius: 15px;
                    background-color: white;
                    width: 40%;
                    opacity: 0.8;
                    right: 0;
                    
 
              }
                
                .jumbotron:hover
                {
                    transition: 0.9s ease-in-out;
                    border:2.6px solid #00FF00;
                        
                    
                }
                .btn
                {
                  
                       background-color: #04AA6D;
                       color: white;
                       padding: 16px 20px;
                        border: none;
                        cursor: pointer;
                         width: 100%;
                         opacity: 0.9;
                }

                
                .btn:hover
                {
                         opacity: 1;

                }
                img
                {
                    padding-top: 40px;
                    margin-top: 50px;
                }
               .jumbotron p
                {
                    color: black;
                }
                .jumbotron p:hover
                {
                    color:yellow;
                }
                h1
                {
                      text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;

                }
                input[type=text],input[type=password]
                {
                    border-color: grey;
                    border-radius: 7px;
                }
                label
                {
                    font-weight: 500;
                }
                span
                {
                    color:red;
                }
                
         
        </style>
        <script src="validation.js"></script>

    </head>
    <body>
        <form action="user_login" method="post">
       
        <div class="jumbotron">
            <div class="row">
                
                <div class="col-sm-5"style="background-image:url(images/userlogin.jpg);background-repeat: no-repeat;background-size: 110%">
  
                    
                </div>
                <div class="col-sm-7">
                   
                       
                    <h1 style ="color:#17a2b8; text-align:center">User Login</h1>
                    <br>
                    <label> Username <span> * </span> </label>
                    <input type="text" name="txt_name" onkeypress="javascript:return isString(event)" placeholder="Enter Username"  class="form-control" required="">
                    
                    <label>Password <span>*</span></label>
             
                    <input type="password" name="password" placeholder="****" class="form-control" required="">
             
                    <input type="checkbox">
                    <label>Remember me</label>&nbsp;&nbsp;&nbsp;
                    <a class="text-muted" href="user_forgot_pass.jsp">Forgot password?</a>
                    <input type="submit"  name="btn" value="Login" class="btn">
                    <p>Don't have an account?
                        &nbsp;&nbsp;&nbsp;&nbsp; <a class="text-muted" href="user_signup.jsp">Sign up</a></p>
                </div>
                </div>
                 </form>
    </body>
</html>
