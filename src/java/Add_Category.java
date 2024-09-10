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
public class Add_Category extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PrintWriter out=resp.getWriter();
        String category_id=req.getParameter("category_id");
        String category_name=req.getParameter("category_name");
        String image=req.getParameter("image");
        String description=req.getParameter("description");
        String event=req.getParameter("btn");
        
        String cid=req.getParameter("cid");

        
        out.println(category_id);
        out.println(category_name);
        out.println(image);
        out.println(cid);
        out.println(description);
        
        Database db=new Database();
        String result=db.connectdb();
        out.println(result);
        
         
        if(event.equals("Submit"))
        {
            
            String insert=db.Query("insert into add_category_tbl(cname,image,description)values('"+category_name+"','"+image+"','"+description+"')", "Record Inserted");
            out.println(insert);
            resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Inserted');");
            out.println("location='add_category.jsp';");
            out.println("</script>");
        
        }
    
        
        if(event.equals("Delete"))
         {
           String delete=db.Query("delete from add_category_tbl where cid='"+cid+"'", "Record Deleted");
           out.println(delete);
           resp.setContentType("text/html;charset=UTF-8");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Record Deleted');");
            out.println("location='add_category_list.jsp';");
            out.println("</script>");
         }
         if(event.equals("Update"))
         {
         String update=db.Query("update add_category_tbl set cname='"+category_name+"',image='"+image+"',description='"+description+"' where cid='"+cid+"' ", "Record Updated");
         out.println(update);
         resp.setContentType("text/html;charset=UTF-8");
         out.println("<script type=\"text/javascript\">");
         out.println("alert('Record Updated');");
         out.println("location='add_category_list.jsp';");
         out.println("</script>");
         
        
         }
        
        

        
        
    }

   
            
}