<%-- 
    Document   : user_signup
    Created on : 30 Apr, 2023, 1:46:59 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User_Signup_Page</title>
       <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
       <style>
           body
            {
                
                background: linear-gradient(135deg, #dad299, #b0dab9);
                
            }
           .jumbotron
           {
                    width: 40%;
                    margin: auto auto auto auto;
                    margin-top: 40px;
                    border:  3.6px solid #00FFCC;
                    padding-top: 10px;
                    padding-bottom: 20px;
                    background-color: white;
                    width: 40%;
                    opacity: 0.8;
                    right: 0;
                    box-shadow: 0px 7px 10px 0px #E7ECEA,1px 5px 4px 0px #E7ECEA;
                    border-radius: 15px;
                    
                    
                    
                    
           }
           .jumbotron:hover
                {
                    transition: 0.9s ease-in-out;
                    border:2.6px solid #00FF00;
                        
                    
                }
          input[type=submit]
                {
                  
                       background-color: #04AA6D;
                       color: white;
                       padding: 16px 20px;
                        border: none;
                        cursor: pointer;
                         width: 100%;
                         opacity: 0.9;
                }

                
               input[type=submit]:hover
                {
                         opacity: 1;

                }
            label
            {
                 font-weight: 500;
             
            }
            input[type=text],[type=number],[type=email],[type=password]
            {
  
               border-color: grey;
               border-radius: 7px;
               
            }
            
             h1
                {
                      text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;

                }
           span
           {
               color:red;
           }
       </style>
       
       <script src="validation.js"></script>
    </head>
    <body>
        <form action="user_signup" method="post">
        <div class="jumbotron">
            
            <h1 style="color:#abdde5 ; text-align: center">User Signup</h1>
            <br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <label> Full Name <span>*</span></label>
               
                    <input type="text" name="txt_name"onkeypress="javascript:return isString(event)" placeholder="Enter your name" class="form-control" required=" ">
                </div>
                <div class="col-sm-1"></div>
                </div>
            <br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <label>Address <span>*</span></label>
                
                    <textarea style=" border-color: grey; border-radius: 7px;" name="txt_address" placeholder="Enter your address" class="form-control" required=" "></textarea>
                </div>
                <div class="col-sm-1"></div>
                </div>
            <br>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                <label>Contact<span>*</span></label>

                
                 <input type="number" name="contact" placeholder="Enter your contact no " class="form-control" required=" ">
                </div>
                <div class="col-sm-1"></div>
                </div>
            <br>
            
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-4">
                    <label>Email <span>*</span> </label>
               
                    <input type="Email" name="email" placeholder="Enter valid email " class="form-control" required=" ">
               
              </div>
                
           
              <div class="col-sm-4">

                    <label>Password<span>*</span></label>
                
                    <input type="password"  name="password" placeholder="****" class="form-control" required=" ">
                </div>
               </div>
              
            <br><br>
            
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                
            <input type="submit"  name="btn" value="Signup" >
            
            </div>
                <div class=" col-sm-1"></div>
            </div>
        </div>
        </form>
    </body>
</html>
