<%-- 
    Document   : add_category
    Created on : 9 Apr, 2023, 12:44:21 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add_Category Page</title>
        <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
        <style>
            body{
                background-image: url(images/add-category.jpg);
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
           input[type=text],[type=number],[type=file],[type=textarea]
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
        <%@include file="admin_header.jsp" %>

    </head>
    <body>
        <form action="Add_Category" method="post">
            <div class="jumbotron" style="margin: auto auto auto auto; width: 50%; margin-top: 70px; background-color: rgba(0 ,0,0,0.5); border: solid; padding-top: 20px; padding-bottom: 20px; padding-left: 10px; border-radius:15px; opacity: 0.9;">
            
            <h2 style="color:#EA4D34; text-align: center">Add Category</h2>
            <br><br>
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3">
                    <label>Category Id <span>*</span></label>
                </div>
                     <div class="col-sm-7">
                         <input style="border-color: grey; border-radius: 7px;" type="number" name="category_id" class="form-control" required=" ">
                     </div>
                <div class="col-sm-1"></div>
                </div>
                <br>
                <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3">
                    <label>Category Name <span>*</span></label>
                </div>
                     <div class="col-sm-7">
                         <input style="border-color: grey; border-radius: 7px;" type="text"  name="category_name" class="form-control" required=" ">
                     </div>
                <div class="col-sm-1"></div>
                </div>
                <br>
                <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3">
                     <label>Image</label>
                </div>
                     <div class="col-sm-7">
                            <input style="border-color: grey; border-radius: 7px;" type="file" name="image" class="form-control">
                     </div>
                <div class="col-sm-1"></div>
                </div>
                <br>
                
                <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-3">
                     <label>Description</label>
                </div>
                     <div class="col-sm-7">
                      <textarea style="border-color: grey; border-radius: 7px;" class="form-control" name="description"></textarea>
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