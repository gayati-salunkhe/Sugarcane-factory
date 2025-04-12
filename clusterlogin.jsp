<%-- 
    Document   : slogin
    Created on : 5 Jan, 2025, 12:41:28 PM
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
        String ci = request.getParameter("cluster_id");
        int cluster_id1 = Integer.parseInt(ci);
        
        
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
       
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
      Statement stmt = con.createStatement(); 
      ResultSet rs = stmt.executeQuery("select * from upkrushi where CLUSTER_ID = '"+cluster_id1+"' and  USERNAME = '"+username+"' and PASSWORD = '"+password+"'");
                                                                  //  JOB_PROFILE = '"+jobpro+"' and
      
    if(rs.next())
           {
               int cluster_id = rs.getInt(2);
              String job = rs.getString(13);
              
               if(cluster_id == 10)
               {   
                   session.setAttribute("job", job);
                   session.setAttribute("cluster_id",cluster_id);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("upkrushiwork.jsp");
               }
               else if(cluster_id == 20)
               {   session.setAttribute("job", job);
                   session.setAttribute("cluster_id",cluster_id);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("upkrushiwork.jsp");
               } 
               else if(cluster_id == 30)
               {   session.setAttribute("job", job); 
                   session.setAttribute("cluster_id",cluster_id);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("upkrushiwork.jsp");
               } 
                else if(cluster_id == 40)
               {   session.setAttribute("job", job);
                   session.setAttribute("cluster_id",cluster_id);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("upkrushiwork.jsp");
               }
           }
     else
     {
         out.print("INVALID PASSWORD<a href='slogin.html'>PLZ TRY AGAIN</a>");
     }
        
   %>
    </body>
</html>

 
