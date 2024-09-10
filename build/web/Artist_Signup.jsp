<%-- 
    Document   : Artist_Signup
    Created on : 9 Apr, 2023, 3:24:23 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title> artist_signup_Page</title>
         <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
       <style>
          
           body
           {
                    background: linear-gradient(135deg, #dad299,#b0dab9);

           }
           .jumbotron
           {
                    width: 65%;
                    margin: auto auto auto auto;
                    margin-top: 60px;
                    border:  3.6px solid #00FFCC;
                    padding-top: 20px;
                    padding-bottom: 20px;
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
              background: linear-gradient(135deg, #71b7e6, #9b59b6);
              border-radius: 7px;
              width: 100%;
              font-weight: 500;

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
           
           span
           {
               color:red;
           }
          
           
       </style>
       <script src="validation.js"></script>
    </head>
    <body>
        <form action="Artist_Signup" method="post">
        <div class="jumbotron">
            <div class="row">
                <div class="col-sm-5" style="background-image:url(images/artist.jpg);background-repeat: no-repeat;background-size: cover">
                    
                </div>
                
                <div class="col-sm-7">
                <h1 style="color:#9b59b6 ; text-align: center">Artist Signup</h1>
                    <label> Full Name <span>*</span></label>
                    <input type="text" name="txt_name"onkeypress="javascript:return isString(event)" placeholder="Enter your name" class="form-control" required=" ">
              
                    <label>Address <span>*</span></label>
                    <textarea style="border-color: grey;border-radius: 7px;" name="txt_address" placeholder="Enter your address" class="form-control" required=" "></textarea>
                
                    <label>Contact<span>*</span></label>
                    <input type="number" name="contact" placeholder="Enter your contact no " class="form-control" required=" ">
                
                    <label>Email <span>*</span> </label>
                    <input type="Email" name="email" placeholder="Enter valid email " class="form-control" required=" ">
               
                    <label>Password<span>*</span></label>
                    <input type="password"  name="password" placeholder="****" class="form-control" required=" ">
                  
            <br><br>
             
            <input type="submit"  name="btn" value="Signup" >
          </div>
            
            </div>
        </div>
        </form>
    </body>
</html>