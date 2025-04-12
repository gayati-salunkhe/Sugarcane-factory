<%-- 
    Document   : sendrequest
    Created on : 9 Jan, 2025, 7:54:07 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <% 
          
           
           String no = request.getParameter("id");
           int regino = Integer.parseInt(no);
           String fname = request.getParameter("fname");
           String mname = request.getParameter("mname");
           String lname = request.getParameter("lname");
           String address = request.getParameter("address");
           String adharno = request.getParameter("adno");
           long adnum    = Long.parseLong(adharno);
           String  gtnu = request.getParameter("gtnm");
           int gtnum = Integer.parseInt(gtnu);
           String taof = request.getParameter("tarea");
           int tarea = Integer.parseInt(taof);
           String aosc  = request.getParameter("shugera");
           int areasc = Integer.parseInt(aosc);
           String typsc  = request.getParameter("sgtype");
           int sgctype = Integer.parseInt(typsc);
           
           String lavantype = request.getParameter("ltyoe"); 
           String lavandate  = request.getParameter("ldate");
           
            int ngatno = (int) session.getAttribute("ngatno");
           
           String village  = request.getParameter("village");
           String taluka  = request.getParameter("taluka");
           String dist  = request.getParameter("dis");
           String state  = request.getParameter("state");
           String pinco  = request.getParameter("pinc");
           int pincode = Integer.parseInt(pinco);
           String emailid  = request.getParameter("eid");
           String mob  = request.getParameter("mobno");
           long mobno  = Long.parseLong(mob);
           String almob  = request.getParameter("amobno");
           long altermobno  = Long.parseLong(almob);
           String username = request.getParameter("uname");
           String pass = request.getParameter("password");
                
      
    
           
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
            Statement stmt=con.createStatement();
int result = stmt.executeUpdate(
    "INSERT INTO finalregi (FREGI_NO, FNAME, MNAME, LNAME, ADDRESS, ADHARNO, GATNO, TOTAL_AREA, A_UNDER_SUGAR, TYPE_SUGARCANE, LAVAN_TYPE, LAVAN_DATE, NEARBY_GATNO, VILLEGE_NAME, TALUKA_NAME, DIST_NAME, STATE_NAME, PINCODE, EMAIL_ID, MOBNO, ALTERNATE_MOBNO, USERNAME, PASSWORD) " +
    "VALUES ("+regino+",'"+fname+"','"+mname+"','"+lname+"','"+address+"',"+adnum+","+gtnum+",'"+tarea+"','"+areasc+"',"+sgctype+",'"+lavantype+"','"+lavandate+"',"+ngatno+",'"+village+"','"+taluka+"','"+dist+"','"+state+"',"+pincode+",'"+emailid+"',"+mobno+","+altermobno+",'"+username+"','"+pass+"')");
            
            
          //  int rs = stmt.executeUpdate("delete * from regi where REGI_NO = "+regino+" ");
                    
            if(result>0)
            {
                out.print("Farmer rigister  Approved successfully..");
            }

      %>     
    </body>
</html>
