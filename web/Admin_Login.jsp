<%-- 
    Document   : Admin_Login
    Created on : 12 Apr, 2023, 8:49:27 PM
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
                
                background-image: url(images/Admin_login_image.jpg);
                background-repeat: no-repeat;
                background-size: cover;

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
                    margin-right:90px;
                    width: 38%;
                    
                    opacity: 0.6;
                }
                .jumbotron:hover
                {
                    transition: 0.9s ease-in-out;
                    border:2.6px solid #00FF00;
                        
                    
                }
                .btn
                {
                    border-radius: 20px;
                    color: white;
                    border: 2px solid rgb(0, 255, 255);
                    background: none;
                    height: 40px;
                    width: 40%;
                }
                .btn:hover
                {
                    transition: 0.5s ease;
                    border:2px solid rgb(128, 0, 128);
                }
                label
                {
                    color: white;
                    font-weight: 500;
                }
                
               .jumbotron p
                {
                    color: white;
                }
                .jumbotron p:hover
                {
                    color:yellow;
                }
                
                input[type=text],input[type=password]
                {
                    border-color: grey;
                    border-radius: 7px;
                }
                span
                {
                    color: red;
                }
                
        </style>
        <script src="validation.js"></script>
    </head>
    <body>
        <form action="Admin_Login" method="post">
        <div class="jumbotron">
            
            <div class="row">
                <div class="col-sm-5"></div>
                <div class="col-sm-2">
                    
              <img src="images/loginicon1.png" >

            </div>
                <div class="col-sm-5"></div>
            </div>
                  
             
                <h2 style ="color:palevioletred; text-align:center">Login</h2>
             
               
         <br><br>
         
         <div class="row">
             <div class="col-sm-1"></div>
             <div class="col-sm-3">
                 <label>Username<span>*</span></label>
             </div>
                <div class="col-sm-7">
                <input type="text" name="txt_name" onkeypress="javascript:return isString(event)" placeholder="Enter Username"  class="form-control" required=" ">
             </div>
         
             <div class="col-sm-1"></div>
         </div>
                <br>
                <div class="row">
                <div class="col-sm-1"></div>
             <div class="col-sm-3">
                 <label>Password<span>*</span></label>
             </div>
                <div class="col-sm-7">
                    <input type="password" name="txt_pass" placeholder="****" class="form-control" required=" ">
               </div>
             <div class="col-sm-1"></div>
                </div>
                <br>
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5">
                        <input type="checkbox">
                        <label>Remember me</label>

                    </div>
                    <div class="col-sm-5">
                        <a class="text-muted" href="Admin_forgot_pass.jsp">Forgot password?</a>
                    </div>
                </div>
         <br><br>
         <center>
         <div class="row">
             <div class="col-sm-3"></div>
             <div class="col-sm-6">
                <input type="submit"  name="btn" value="Login" class="btn btn-primary btn-floating" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" name="btn"  value="Cancle" class="btn btn-danger btn-floating" >
             </div>
             <div class="col-sm-3"></div>
          </div>
         </center>
                
         <br>
   
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-9">
                    <p>Don't have an account?
                        &nbsp;&nbsp;&nbsp;&nbsp; <a class="text-muted" href="Admin_Signup.jsp">Sign up</a></p>
                </div>
            </div>
        </div>
   </form>
    </body>
</html>