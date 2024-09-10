/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import java.sql.*;
/**
 *
 * @author Admin
 */
public class Demo4 {


    
    public static void main (String[] args) throws Exception
    {
       // class.forName("com.mysql.jdbc.Driver");
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/swati","root","root");
       Statement stmt = con.createStatement();
        ResultSet rs=stmt.executeQuery("select * from class");
        while(rs.next())
        {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            
            System.out.println(id+" "+name);
            
        }

        con.close();
    }
}

