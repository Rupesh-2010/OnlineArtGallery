
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Admin
 */
public class Database {
    Connection cn=null;
    Statement st=null;
    
    String connectdb()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_art_gallery", "root", "root");
            return "Database Connected";
        }
        catch(Exception ex)
        {
            return ex.toString();
        }
    }
    String Query(String sql, String msg)
    {
        try
        {
            st=cn.createStatement();
            st.executeUpdate(sql);
            return(msg);
        }
        catch(Exception ex)
        {
            return ex.toString();
        }
    }
}
