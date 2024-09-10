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
public class Add_Art extends HttpServlet {

   @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter out=resp.getWriter();
        String art_id=req.getParameter("art_id");
        String artist_name=req.getParameter("artist_name");
        String art_name=req.getParameter("art_name");
        String art_image=req.getParameter("art_image");
        String art_amount=req.getParameter("art_amount");
        String cname=req.getParameter("cname");
        String description=req.getParameter("description");
        String event=req.getParameter("btn");
        
        String aid=req.getParameter("aid");

        out.println(art_id);
        out.println(artist_name);
        out.println(art_name);
        out.println(art_image);
        out.println(art_amount);
        out.println(cname);
        out.println(description);
        out.println(aid);

        
         Database db=new Database();
        String result=db.connectdb();
        out.println(result);
        
         
        if(event.equals("Submit"))
        {
            String insert=db.Query("insert into add_art_tbl(artist_name,art_name,art_image,art_amount,description,cname)values('"+artist_name+"','"+art_name+"','images/"+art_image+"','"+art_amount+"','"+description+"','"+cname+"')", "Record Inserted");
            out.println(insert);
          resp.setContentType("text/html;charset=UTF-8");
           out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Inserted');");
            out.println("location='AddArt.jsp';");
            out.println("</script>");
         
        
        }
        if(event.equals("Delete"))
         {
           String delete=db.Query("delete from add_art_tbl where aid='"+aid+"'", "Record Deleted");
           out.println(delete);
           resp.setContentType("text/html;charset=UTF-8");
           out.println("<script type=\"text/javascript\">");
           out.println("alert('Record deleted');");
           out.println("location='add_art_list.jsp';");
           out.println("</script>");
         
         }
        
         if(event.equals("Update"))
         {
         String update=db.Query("update add_art_tbl set artist_name='"+artist_name+"',art_name='"+art_name+"',art_image='images/"+art_image+"',art_amount='"+art_amount+"',description='"+description+"' where aid='"+aid+"' ", "Record Updated");
         out.println(update);
         resp.setContentType("text/html;charset=UTF-8");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('Record Updated');");
        out.println("location='add_art_list.jsp';");
        out.println("</script>");
         }
         
        
        

        
        
        
    }
}