<%-- 
    Document   : payment_list
    Created on : 2 May, 2023, 4:50:49 PM
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>payment_list Page</title>
        <link rel="stylesheet" href="bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <br>
        <h1 style="text-align: center">Payment List</h1>
        <table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Card Holder Name</th>
      <th scope="col">Card Number</th>
      <th scope="col">Expiry Date</th>
      <th scope="col">CVV</th>
      <th scope="col">Art Amount</th>
     


    </tr>
  </thead>
  <tbody>
      <%
      Connection cn=null;
      Statement st=null;
      int counter=1;
      
      try
        { 
          Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_art_gallery","root","root");
            st=cn.createStatement();
            String sql="select * from payment_tbl";
            ResultSet rs=st.executeQuery(sql);
            while(rs.next())
             {
            
          
      %>
    <tr>
  <form action="payment1" method="post">
      <th scope="row"><%=counter++%></th>
      <input type="hidden" name="pid" value="<%=rs.getString("pid")%>">
      <td><input type="text" name="txt_name" value="<%=rs.getString("card_holder_name")%>" class="form-control"></td>
      <td><input type="text" name="card_num" value="<%=rs.getString("card_no")%>" class="form-control"></td>
      <td><input type="text" name="date" value="<%=rs.getString("expiry")%>" class="form-control"></td>
      <td><input type="text" name="cvv_num" value="<%=rs.getString("cvv")%>"  class="form-control"></td>
      <td><input type="text" name="amount" value="<%=rs.getString("art_amount")%>"  class="form-control"></td>
      
  </form>
    </tr>
    <%
       }
       }catch(Exception ex)
         {
           System.out.println(ex.toString());
         }
               
    %>
    
  </tbody>
</table>
        </div>
    </body>
</html>