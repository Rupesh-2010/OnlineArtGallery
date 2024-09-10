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
public class feedback1 extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter out=resp.getWriter();
        String full_name=req.getParameter("full_name");
        String email=req.getParameter("email");
        String contact=req.getParameter("contact");
        String message=req.getParameter("message");
        String event=req.getParameter("btn");
        
        
        out.println(full_name);
        out.println(email);
        out.println(contact);
        out.println(message);
        
        

        Database db=new Database();
        String result=db.connectdb();
        out.println(result);
        
         
        if(event.equals("Submit"))
        {
            String insert=db.Query("insert into feedback_tbl(fullname,email,contact,message)values('"+full_name+"','"+email+"','"+contact+"','"+message+"')", "Record Inserted");
            out.println(insert);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Inserted');");
            out.println("location='feedback.jsp';");
            out.println("</script>");
        
        }
    
    }

    
    
}