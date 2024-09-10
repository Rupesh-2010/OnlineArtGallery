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
public class art_view_page extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
       PrintWriter out=resp.getWriter();
        String artist_name=req.getParameter("artist_name");
        String art_name=req.getParameter("art_name");
        String art_amount=req.getParameter("art_amount");
       String art_image=req.getParameter("art_image");
        String event=req.getParameter("btn");
        
        out.println(artist_name);
        out.println(art_name);
        out.println(art_amount);
        
        
         Database db=new Database();
        String result=db.connectdb();
        out.println(result);
        
        HttpSession session=req.getSession();
        
        if(event.equals("view more"))
        {
            session.setAttribute("art_image", art_image);
            session.setAttribute("artist_name", artist_name);
            session.setAttribute("art_name", art_name);
            session.setAttribute("art_amount", art_amount);
            resp.sendRedirect("Art_booking.jsp");
        }
        
    }
}