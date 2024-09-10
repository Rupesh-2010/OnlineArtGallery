<%-- 
    Document   : feedback
    Created on : 9 Apr, 2023, 3:29:25 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback Page</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <style>
            .jumbotron
            {
                  
                    margin: auto auto auto auto;
                    width: 47%;
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
                background: rgba(0,0,0,0.5);
                text-decoration: none;
                text-transform: uppercase;
                font-size: 0.9em;
                letter-spacing: 0.1em;
                font-weight: 400;
                padding: 10px 20px;
                transition: 0.5s;
                width: 40%;
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
           body
           {
                background-image: url(images/flowers.jpg);
                background-repeat: no-repeat;
                background-size: cover;
                
            }
             input[type=text],[type=number],[type=email],[type=textarea]
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
                <%@include file="user_header.jsp" %>


    </head>
    <body>
        <form action="feedback1" method="post">
            <div class="jumbotron" style="margin: auto auto auto auto; width: 47%; margin-top: 70px; background-color: rgba(0 ,0,0,0.5); border: solid; padding-top: 20px; padding-bottom: 20px; padding-left: 10px; border-radius:15px; opacity: 0.9;">
            
                <h1 style="color:#abdde5; text-align: center">Feedback</h1>
                
        <br><br>
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <label>Full Name<span>*</span></label>
            </div>
            <div class="col-sm-7">
                <input style=" border-color: grey; border-radius: 7px;" type="text"  name="full_name" onkeypress="javascript:return isString(event)"class="form-control" required="">
            <div class="col-sm-1"></div>

            </div>
        </div>
            <br>
            <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <label>Email <span>*</span></label>
            </div>
            <div class="col-sm-7">
                <input style=" border-color: grey; border-radius: 7px;" type="email" name="email" class="form-control" required="">
            </div>
            <div class="col-sm-1"></div>
        </div>
            <br>
            <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <label>Contact <span>*</span> </label>
            </div>
            <div class="col-sm-7">
                <input style=" border-color: grey; border-radius: 7px;" type="number"  name="contact" class="form-control" required="    ">
            </div>
            <div class="col-sm-1"></div>
        </div>
            <br>
            <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-2">
                <label>Message</label>
            </div>
            <div class="col-sm-7">
                <textarea style=" border-color: grey; border-radius: 7px;" class="form-control" name="message"></textarea>
            </div>
            <div class="col-sm-1"></div>
        </div>
            <br><br>
        <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-10">
            <input type="submit" name="btn" value="Submit" class=" btn btn-success">&nbsp;&nbsp;
            <input type="submit" name="btn"  value="Cancle" class="btn btn-danger">&nbsp;&nbsp;
            </div>
                <div class="col-sm-0"></div>
        </div>
    </div>
        </form>
    </body>
</html>