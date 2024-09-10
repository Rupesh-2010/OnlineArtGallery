<%-- 
    Document   : View_report
    Created on : 16 May, 2023, 4:06:56 PM
    Author     : Admin
--%>

<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.io.File"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            Connection conn = null;
            String event=request.getParameter("btn");
           
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_art_gallery", "root", "root");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            
            if(event.equals("Category Details"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\rep_category.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
            
            
              if(event.equals("Art Details"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\rep_art.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
            
            
              if(event.equals("Booking Details"))
            {
            
            File reportFile = new File(application.getRealPath("Report\\rep_Booking.jasper"));//your report_name.jasper file
            Map parameters = new HashMap();
            
            byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath(), parameters, conn);

            response.setContentType("application/pdf"); 
            response.setContentLength(bytes.length);
            ServletOutputStream outStream = response.getOutputStream();
            outStream.write(bytes, 0, bytes.length);
            outStream.flush();
            outStream.close();
                       }
%>
    </body>
</html>
