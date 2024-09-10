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
public class Artist_Signup extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        
        PrintWriter out=resp.getWriter();
        String fullname=req.getParameter("txt_name");
        String address=req.getParameter("txt_address");
        String contact=req.getParameter("contact");
        String email=req.getParameter("email");
        String password=req.getParameter("password");
        String event=req.getParameter("btn");
        
        String sid=req.getParameter("sid");

        
        out.println(fullname);
        out.println(address);
        out.println(contact);
        out.println(email);
        out.println(password);
        
        
        Database db=new Database();
        String result=db.connectdb();
        out.println(result);
        
         
        if(event.equals("Signup"))
        {
            String insert=db.Query("insert into artist_signup_tbl(fullname,address,contact,email,pass)values('"+fullname+"','"+address+"','"+contact+"','"+email+"','"+password+"')", "Record Inserted");
            out.println(insert);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Inserted');");
            out.println("location='Artist_Signup.jsp';");
            out.println("</script>");
        
        }
       
   
    }

   
        
}