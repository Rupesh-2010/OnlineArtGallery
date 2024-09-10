<%-- 
    Document   : Art_booking
    Created on : 9 Apr, 2023, 2:37:53 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Art_Booking Page</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <style>
            body
            {
                background: linear-gradient(135deg, #43c6ac,#f8ffae);
            }
              .jumbotron
            {
                  
                    margin: auto auto auto auto;
                    width: 45%;
                    margin-top: 20px;
                    border: solid;
                    padding-top: 10px;
                    padding-bottom: 10px;
                    padding-left: 10px;
                    border-radius:15px;
                    background-color: #d3d9df;
            }
            input[type=submit] 
            {
                position: relative;
                text-decoration: none;
                text-transform: uppercase;
                font-size: 0.9em;
                letter-spacing: 0.1em;
                font-weight: 400;
                padding: 10px 20px;
                transition: 0.5s;
                background: linear-gradient(135deg,#f8ffae,#43c6ac);
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
               font-weight: 500;
           }
           input[type=text],[type=number],[type=textarea],[type=float],[type=file]
            {
  
               border-color: grey;
               border-radius: 7px;
            }
            
            span
            {
                color:red;
            }
        </style>
        <script>
            
            function cal()
            {
                
                var a=document.getElementById("q").value;
                 var b=document.getElementById("a").value;
                 
                  document.getElementById("ta").value=a*b;
                  
            }
        </script>
        <script src="validation.js"></script>
        <%@include file="user_header.jsp" %>

            
       </head>
    <body>
        <form action="Art_booking" method="post">
            <div class="jumbotron" style="margin: auto auto auto auto; width: 45%; margin-top: 20px; border: solid; padding-top: 10px; padding-bottom: 10px; padding-left: 10px; border-radius:15px; background-color: #d3d9df;">
        <h2 style="color:black ;text-align: center">Art Booking</h2>
        
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <label>Full Name <span>*</span></label>
            
                <input style="border-color: grey; border-radius: 7px;" type="text"  name="full_name" onkeypress="javascript:return isString(event)"class="form-control" required="">
            </div>
                <div class="col-sm-1"></div>
        </div>
            <br>
            <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <label>Address <span>*</span></label>
                <textarea style="border-color: grey; border-radius: 7px;" name="address" class="form-control" required=""></textarea>
            </div>
            <div class="col-sm-1"></div>
            </div>
            <br>
            <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <label>Contact <span>*</span></label>
                <input style="border-color: grey; border-radius: 7px;" type="number" name="contact" class="form-control" required=""></textarea>
            </div>
            <div class="col-sm-1"></div>
            </div>
            <br>
            <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <label>Art Name <span>*</span></label>
                <input style="border-color: grey; border-radius: 7px;"  type="text"  name="art_name" class="form-control" required="" value="<%=session.getAttribute("art_name")%>">
            </div>
            
           
            </div>
            <br>
            <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
                <label>Qty <span>*</span></label>
                <input style="border-color: grey; border-radius: 7px;" id="q" onkeyup="cal()" type="text"   name="txt_qty" class="form-control" required="">
            </div>
            
           
            </div>
            
            
            <br>
            <div class="row">
            <div class="col-sm-2"></div>
           
            
            <div class="col-sm-8">
                <label>Amount <span>*</span></label>
                <input style="border-color: grey; border-radius: 7px;" onkeyup="cal()"  id="a"  name="amount"  class="form-control" value="<%=session.getAttribute("art_amount")%>" required="">
            </div>
            </div>
            <br>
             <div class="row">
            <div class="col-sm-2"></div>
           
            
            <div class="col-sm-8">
                <label>Total Amount <span>*</span></label>
                <input style="border-color: grey; border-radius: 7px;" onkeyup="cal()" id="ta"  name="tamount"  class="form-control"  required="">
            </div>
            </div>
            <br>
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