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

/**
 *
 * @author Admin
 */
public class Admin_Login extends HttpServlet {
    private Connection cn;
    private Statement st;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        
        PrintWriter out=resp.getWriter();
        String Username=req.getParameter("txt_name");
        String Password=req.getParameter("txt_pass");
        String event=req.getParameter("btn");
        
        
        out.println(Username);
        out.println(Password);
        out.println(event);

        if(event.equals("Login"))
         {
             try
             {
              Class.forName("com.mysql.jdbc.Driver");
              cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_art_gallery","root","root");
              st=cn.createStatement();
              String sql="select * from admin_signup_tbl where email='"+Username.toString()+"'and pass='"+Password.toString()+"'";
              ResultSet rs=st.executeQuery(sql);
              if(rs.next())
              {
                 
                  resp.sendRedirect("add_category.jsp");
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