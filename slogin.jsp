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
        String job = request.getParameter("role");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
       
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
      Statement stmt = con.createStatement(); 
      ResultSet rs = stmt.executeQuery("select * from KUMBHISTAFF where JOB_PROFILE = '"+job+"' and  USERNAME = '"+username+"' and PASSWORD = '"+password+"'");
                                                                  //  JOB_PROFILE = '"+jobpro+"' and
      
    if(rs.next())
           {
              // String job = rs.getString(12);
               
               if(job.equals("chairman"))
               {   session.setAttribute("job",job);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("chaiopration.jsp");
               }
               else if(job.equals("vice_chairman"))
               {   session.setAttribute("job",job);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("chaiopration.jsp");
               } 
               else if(job.equals("Managing_Director"))
               {   
                   session.setAttribute("job",job);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("mdopration.jsp");
               } 
                else if(job.equals("work mananger"))
               {   session.setAttribute("job",job);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("mdopration.jsp");
               }
             
              else if(job.equals("inword_outword"))
               {   session.setAttribute("job",job);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("inword_outword.jsp");
               }
               else if(job.equals("chief_chemistry"))
               {   session.setAttribute("job",job);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("chief_chemistry.jsp");
               } 
               else if(job.equals("hr_manager"))
               {   
                   session.setAttribute("job",job);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("hr_manager.jsp");
               } 
                else if(job.equals("chief_engineer"))
               {   session.setAttribute("job",job);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("chief_engineer.jsp");
               } 
               else if(job.equals("account_chief"))
               {   session.setAttribute("job",job);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("account_chief.jsp");
               }
               else if(job.equals("civil_engineer"))
               {   session.setAttribute("job",job);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("civil_engineer.jsp");
               } 
               else if(job.equals("krushi_adhikari"))
               {   
                   session.setAttribute("job",job);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("krushi_adhikari.jsp");
               } 
                else if(job.equals("security_manager"))
               {   session.setAttribute("job",job);
                   session.setAttribute("username",username);
                   session.setAttribute("password",password);
                   response.sendRedirect("security_manager.jsp");
               }
   
           }
    
     else
     {
         out.print("INVALID PASSWORD<a href='slogin.html'>PLZ TRY AGAIN</a>");
     }
        
   %>
    </body>
</html>

 
