/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class user_login extends HttpServlet {
  Connection cn=null;
  Statement st=null;
   @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
     HttpSession session=req.getSession();
    
    

        PrintWriter out=resp.getWriter();
        String Username=req.getParameter("txt_name");
        String Password=req.getParameter("password");
        String event=req.getParameter("btn");
        
        
        out.println(Username);
        out.println(Password);
        
           if(event.equals("Login"))
         {
             try
             {
              Class.forName("com.mysql.jdbc.Driver");
              cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_art_gallery","root","root");
              st=cn.createStatement();
              String sql="select * from user_signup_tbl where email='"+Username.toString()+"'and pass='"+Password.toString()+"'";
              ResultSet rs=st.executeQuery(sql);
              if(rs.next())
              {
                  session.setAttribute("uid", rs.getString("sid"));
                  session.setAttribute("fullname", rs.getString("fullname"));
                  session.setAttribute("address", rs.getString("address"));
                  session.setAttribute("contact", rs.getString("contact"));
                  resp.sendRedirect("category_view_page.jsp");
              }
              else
              {
                  out.println("Login Faild");
              }
                 
             }catch(Exception ex)
             {
                 out.println(ex.toString());
             }
         
         }
       
        
        

        
        
        
    }
}