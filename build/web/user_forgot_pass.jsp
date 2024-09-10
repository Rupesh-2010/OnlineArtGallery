<%-- 
    Document   : user_forgot_pass
    Created on : 30 Apr, 2023, 1:51:05 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>forgot_pass_Page</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
                <style>
                    body
                    {
                        margin: 0;
                        padding: 0;
                        font-family: sans-serif;
                        background: #030106;
                    }
                    .jumbotron
                {
                    width:380px;
                    padding: 40px;
                    position: absolute;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%,-50%);
                    text-align: center;
                    background: #545b62;
                    box-shadow: 0 9px 34px 0 #95999c ;
                    -moz-backdrop-filter:blur(7px);
                    -webkit-backdrop-filter:blur(7px);
                    border-radius:10px;
                    border:#0c5460;
                }
                
                .jumbotron:h2
                {
                    font-weight: 500;
                }
                .jumbotron input[type="email"],
                .jumbotron input[type="password"]
                {
                    height: 50px;
                    color: #FCF9F8;
                    background: none;
                    font-size: 17px;
                    margin: 20px auto;
                    text-align: center;
                    border : 3px solid #00CCCC;
                    width:200px;
                    outline:none;
                    border-radius: 25px;
                    transition: 0.25s;
                    
                    
                }   
                ::placeholder
                {
                    color: #00FFCC;
                    opacity: 1;
                }
                ::-ms-input-::placeholder
                {
                    color: #00FFCC;
                    
                }
                .jumbotron input[type="email"]:focus,
                .jumbotron input[type="password"]:focus
                {
                    width: 280px;
                    border-color: #00FF00;
                    text-align: center;
                    
                }
                
                .btn
                {
                    border:0;
                    background: none;
                    display: block;
                    font-size: 15px;
                    margin: 30px auto;
                    text-align: center;
                    border:3px solid #8fd19e;
                    padding: 12px 12px;
                    outline: none;
                    color: white;
                    border-radius:20px;
                    transition: 0.25s;
                    cursor: pointer;
                    height: 45px;
                    width: 40%;
                    
                }
                .btn:hover
                {
                   
                    border: 3px solid #d39e00;
                }

                </style>
                        <script src="validation.js"></script>

    </head>
    <form action="user_forgot_pass" method="post">
               <div class="jumbotron">
            
                   <h2 style="color: white">Forgot Password</h2>
                   <br>
                   
            <input type="email" placeholder="Email">
                       <br>
            <input type="password" placeholder="Password">
            
            <input type="submit" value="Change" class="btn btn-primary">
            <input type="submit" value="Cancle" class="btn btn-danger">
                 
        </div>
        </form>
    <body>
    </body>
</html>
