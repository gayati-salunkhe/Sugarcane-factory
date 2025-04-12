<%-- 
    Document   : successregi
    Created on : 4 Jan, 2025, 10:29:22 AM
    Author     : HP
--%>

<%@page import="java.sql.Statement"%>
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
     
   
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
            Statement stmt=con.createStatement();
            int result=stmt.executeUpdate("insert into regi values ( regi_no.nextVal,'"+session.getAttribute("fname")+"',"
                + "'"+session.getAttribute("mname")+"','"+session.getAttribute("lname")+"','"+session.getAttribute("address")+"',"
                + ""+session.getAttribute("adnum")+","+session.getAttribute("gtnum")+",'"+session.getAttribute("tarea")+"',"
                + "'"+session.getAttribute("areasc")+"',"+session.getAttribute("sgctype")+",'"+session.getAttribute("lavantype")+"',"
                + "'"+session.getAttribute("lavandate")+"',"+session.getAttribute("neargatnum")+",'"+session.getAttribute("village")+"',"
                + "'"+session.getAttribute("taluka")+"','"+session.getAttribute("dist")+"','"+session.getAttribute("state")+"',"
                + ""+session.getAttribute("pincode")+",'"+session.getAttribute("emailid")+"',"+session.getAttribute("mobno")+","
                + ""+session.getAttribute("altermobno")+",'"+session.getAttribute("usrename")+"','"+session.getAttribute("password")+"')");
            
            if(result>0)
            {
                out.print("Farmer rigister successfully..");
            }
    %>
    
    </body>
</html>
