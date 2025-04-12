<%-- 
    Document   : fbankadd
    Created on : 5 Jan, 2025, 10:15:14 AM
    Author     : HP
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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
           String rno = request.getParameter("regino");
           int regino = Integer.parseInt(rno);
           
           String bnakname = request.getParameter("bankname");
           
           String actno = request.getParameter("accountno");
           long accountno = Long.parseLong(actno);
           
           String branch = request.getParameter("branch");
           String ifsccode = request.getParameter("ifscno");
           String holdername = request.getParameter("accountholder");
           
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
            Statement stmt=con.createStatement();
            int result=stmt.executeUpdate("insert into STAFFBANK values ("+regino+",'"+bnakname+"',"+accountno+","
                    + "'"+ifsccode+"','"+branch+"','"+holdername+"' )");
       
                     if(result>0)
            {
                out.print( "<center><h1> Bank Information Added successfully..</h1></center>");
            }
       %>
    </body>
</html>
