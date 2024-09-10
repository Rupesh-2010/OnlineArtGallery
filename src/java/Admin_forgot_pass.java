/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class Admin_forgot_pass extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
    
    
        PrintWriter out=resp.getWriter();
        String email=req.getParameter("email");
        String password=req.getParameter("password");
        String event=req.getParameter("btn");
        
        
        out.println(email);
        out.println(password);
        out.println(event);
   }
}