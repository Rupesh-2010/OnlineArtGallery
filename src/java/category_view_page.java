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
public class category_view_page extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        PrintWriter out=resp.getWriter();
        String category_name=req.getParameter("cname");
        String description=req.getParameter("description");
        String event=req.getParameter("btn");
        
        out.println(category_name);
        out.println(description);
        
        Database db=new Database();
        String result=db.connectdb();
        out.println(result);
        
        HttpSession session=req.getSession();
        
        if(event.equals("view more"))
        {
            session.setAttribute("cname", category_name);
            resp.sendRedirect("category_view_page.jsp");
        }
        
    }

}
