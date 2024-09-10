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
public class Artist_login extends HttpServlet {
 private Connection cn;
    private Statement st;
    private Object Password;
    private Object Username;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        
        
        PrintWriter out=resp.getWriter();
        String username=req.getParameter("txt_name");
        String pass=req.getParameter("password");
        String event=req.getParameter("btn");
        
        
        out.println(username);
        out.println(pass);
        out.println(event);
        
         
    }

   
    
}