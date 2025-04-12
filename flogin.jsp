<%-- 
    Document   : flogin
    Created on : 4 Jan, 2025, 6:08:39 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
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
           String username = request.getParameter("username");
           String password = request.getParameter("password");
           
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
      Statement stmt = con.createStatement(); 
      ResultSet rs = stmt.executeQuery("select * from regi where USERNAME = '"+username+"'and PASSWORD = '"+password+"'");
     
     if (rs.next())
     {   
         String name =rs.getString(2);
         session.setAttribute("name", name);
         session.setAttribute("username", username);
         session.setAttribute("password", password);
         response.sendRedirect("fwork.jsp");
        
     }
     else
     {
         out.print("INVALID PASSWORD<a href='login.html'>PLZ TRY AGAIN</a>");
     }
 
     %>

    </body>
</html>
