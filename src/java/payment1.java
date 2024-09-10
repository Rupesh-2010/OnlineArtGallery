/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 *
 * @author Admin
 */
public class payment1 extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
Date date=new Date();
SimpleDateFormat date1=new SimpleDateFormat("YYYY-MM-dd");
String date2=date1.format(date);
        PrintWriter out=resp.getWriter();
        String payment_id=req.getParameter("payment_id");
        String card_holder_name=req.getParameter("txt_name");
        String card_number=req.getParameter("card_num");
        String expiry_date=req.getParameter("date");
        String cvv=req.getParameter("cvv_num");
        String amount=req.getParameter("amount");
        String event=req.getParameter("btn");

        String pid=req.getParameter("pid");
        
        out.println(payment_id);
        out.println(card_holder_name);
        out.println(card_number);
        out.println(expiry_date);
        out.println(cvv);
        out.println(amount);
        HttpSession session=req.getSession();
        Database db=new Database();
        String result=db.connectdb();
        out.println(result);
        
         
        if(event.equals("Pay"))
        {
             String insert1=db.Query("insert into art_booking_tbl(fullname,address,contact,art_name,art_image,art_amount,status,uid,bdate,quantity,tamount)values('"+session.getAttribute("full_name")+"','"+session.getAttribute("address")+"','"+session.getAttribute("contact")+"','"+session.getAttribute("art_name")+"','"+session.getAttribute("art_image")+"','"+session.getAttribute("art_amount")+"','Orderd','"+session.getAttribute("uid") +"','"+date2+"','"+session.getAttribute("txt_qty") +"','"+session.getAttribute("tamount") +"')", "Record Inserted");
            out.println(insert1);
            String insert=db.Query("insert into payment_tbl(card_holder_name,card_no,expiry,cvv,art_amount,bdate)values('"+card_holder_name+"','"+card_number+"','"+expiry_date+"','"+cvv+"','"+amount+"','"+date2+"')", "Record Inserted");
            out.println(insert);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Inserted');");
            out.println("location='Art_booking_list_user.jsp';");
            out.println("</script>");
        
        }
       
    
    
    }

   
}


    