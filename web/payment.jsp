<%-- 
    Document   : payment
    Created on : 9 Apr, 2023, 3:34:18 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment Page</title>
        <link rel="stylesheet" href="bootstrap.min.css" type="text/css">
        <style>
            body
            {
                 background: linear-gradient(135deg, #43c6ac,#f8ffae);

            }
            .jumbotron
            {
                background-color: #F7F7F7;
                width: 40%;  
                margin: auto auto auto auto;
                margin-top: 30px;
                margin-bottom: 20px;
                border: solid;
                border-radius: 15px;
                padding-bottom: 10px;
               
            }
            label
            {
                 font-weight: 500;
             
            }
            input[type=text],[type=number],[type=date],[type=float]
            {
  
               border-color: grey;
               border-radius: 7px;
            }
        </style>
               <script src="validation.js"></script>
                <%@include file="user_header.jsp" %>

    </head>
    <body>
        <form action="payment1" method="post">
            <div class="jumbotron" style="background-color: #F7F7F7; width: 40%; margin: auto auto auto auto; margin-top: 30px; margin-bottom: 20px; border: solid; border-radius: 15px; padding-bottom: 10px; ">
            <div class="row">
                <div class="col-sm-1"></div>
            <div class="col-sm-2">  
                <img src="images/secure-payments.png">

            </div>
            <div class="col-sm-9">

        <h2> Pay with Debit/Credit Cards </h2>
            </div>
            </div>
        <br>
        <div class="row">
            <div class="col-sm-2"></div> 
             <div class="col-sm-8"> 
                 <label> Payment Id</label>
                 <input style=" border-color: grey; border-radius: 7px;" type="number" name="payment_id" onkeypress="javascript:return isNumber(event)" class="form-control ">  
             </div>
              <div class="col-sm-1">
              </div> 
        </div>
        <br>
        <div class="row">
            <div class="col-sm-2"></div> 
             <div class="col-sm-8"> 
                 <label> Card Holder Name</label>
                 <input style=" border-color: grey; border-radius: 7px;"  type="text" name="txt_name" onkeypress="javascript:return isString(event)" class="form-control ">  
             </div>
              <div class="col-sm-1">
              </div> 
        </div>
        <br>
        
        <div class="row">
            <div class="col-sm-2"></div> 
             <div class="col-sm-8"> 
                 <label> Card Number </label>
                 <input style=" border-color: grey; border-radius: 7px;"  type="number" name="card_num" class="form-control ">  
             </div>            
              <div class="col-sm-1">
              </div> 
        </div>
        <br>
        
        <div class="row">
            <div class="col-sm-2"></div> 
            <div class="col-sm-4"> 
                <label> Expiry Date </label>
                <input style=" border-color: grey; border-radius: 7px;"  type="date" name="date" class="form-control ">  
              </div>         
       
             <div class="col-sm-4"> 
                 <label> CVV </label>            
                 <input style=" border-color: grey; border-radius: 7px;"  type="number" name="cvv_num" class="form-control ">  
              </div> 
        </div><br>
        
      
         
        <div class="row">
            <div class="col-sm-2"></div> 
             <div class="col-sm-8">
                 <label> Amount </label> 
                 <input style=" border-color: grey; border-radius: 7px;" value="<%=session.getAttribute("art_amount")%>"  type="float" name="amount" onkeypress="javascript:return isFloat(event)" class="form-control ">  
              
             </div> 
              <div class="col-sm-1">
              </div> 
        </div>
        <br>
         <div class="row"> 
                 <div class="col-sm-4"></div>
                 <div class="col-sm-8">
                     <input type="submit" name="btn" value="Pay"  class="btn btn-warning">&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="submit" name="btn" value=" Cancel " class="btn btn-danger">
                 </div>    
        </div>
        </div>
        </form>
    </body>
</html>