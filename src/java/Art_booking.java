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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class Art_booking extends HttpServlet {
    private String art_name;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter out=resp.getWriter();
        
        String full_name=req.getParameter("full_name");
        String address=req.getParameter("address");
        String contact=req.getParameter("contact");
   
       
        String art_name=req.getParameter("art_name");
        String txt_qty=req.getParameter("txt_qty");

        String amount=req.getParameter("amount");
        String tamount=req.getParameter("tamount");
        String event=req.getParameter("btn");
        
                String bid=req.getParameter("bid");


        
        out.println(full_name);
        out.println(address);
        out.println(contact);
        
                out.println(art_name);
        out.println(txt_qty);

        out.println(amount);
        
        
        HttpSession session=req.getSession();
        Database db=new Database();
        String result=db.connectdb();
        out.println(result);
        
         
        if(event.equals("Submit"))
        {
            
            session.setAttribute("full_name", full_name);
             session.setAttribute("address", address);

              session.setAttribute("contact", contact);
               session.setAttribute("art_name", art_name);

               session.setAttribute("txt_qty", txt_qty);
                session.setAttribute("tamount", tamount);
           
             
            String insert=db.Query("insert into art_booking_tbl(fullname,address,contact,art_name,quantity,art_amount)values('"+full_name+"','"+address+"','"+contact+"','"+art_name+"','"+txt_qty+"','"+amount+"')", "Record Inserted");
           out.println(insert);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('proceed To Payment');");
            out.println("location='payment.jsp';");
            out.println("</script>");
        
        }
        if(event.equals("Delete"))
         {
           String delete=db.Query("delete from art_booking_tbl where bid='"+bid+"'", "Record Deleted");
           out.println(delete);
           resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Deleted');");
            out.println("location='Art_booking_list.jsp';");
            out.println("</script>");
         }
         if(event.equals("Update"))
         {
         String update=db.Query("update art_booking_tbl set fullname='"+full_name+"',address='"+address+"',contact='"+contact+"',,art_name='"+art_name+"',quantity='"+txt_qty+"',amount='"+amount+"' where bid='"+bid+"' ", "Record Updated");
         out.println(update);
         resp.setContentType("text/html;charset=UTF-8");
         out.println("<script type=\"text/javascript\">");
         out.println("alert('Record Updated');");
         out.println("location='Art_booking_list.jsp';");
         out.println("</script>");
         
        
         }

    
        
        
        
    }

    
}