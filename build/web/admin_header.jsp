<%-- 
    Document   : admin_header
    Created on : 2 May, 2023, 5:30:33 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin header Page</title>
         <link rel="stylesheet" type="text/css" href="bootstrap.min.css">
         <style>
             
         </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-warning">
  <a class="navbar-brand" href="#">Online Art Gallery</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="AddArt.jsp">Add Art </a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="add_category.jsp">Add Category</a>
      </li>
       <li class="nav-item">
          <a class="nav-link" href="add_category_list.jsp"> Category List</a>
      </li>
      <li class="nav-item">
          <a class="nav-link" href="AddArt_list_admin.jsp">Art List</a>
      </li>
      
       
      <li class="nav-item">
          <a class="nav-link" href="Art_booking_list_admin.jsp">Art Booking List</a>
      </li>
       <li class="nav-item">
          <a class="nav-link" href="Artist_Signup_list.jsp">Artist Signup List</a>
      </li>
      
      <li class="nav-item">
          <a class="nav-link" href="Report.jsp">Report</a>
      </li>
     
    </ul>
    <form class="form-inline my-2 my-lg-0">
        <a class="btn btn-danger my-2 my-sm-0" href="Admin_Login.jsp" type="submit">Logout</a>
    </form>
  </div>
</nav>
    </body>
</html>