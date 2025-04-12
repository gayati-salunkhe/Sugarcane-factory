<%-- 
    Document   : add_tractor
    Created on : 15 Jan, 2025, 1:10:29 PM
    Author     : HP
--%>

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
    String mid = request.getParameter("machine_id");
    int machin_id = Integer.parseInt(mid);
    
    String clid = request.getParameter("cluster_id");
    int clu_id = Integer.parseInt(clid);
    
    String trno = request.getParameter("tractor_no");
    
    String owner_name = request.getParameter("owner_name");
    
    String omobno = request.getParameter("owner_mob_no");
    long owner_mob_no = Long.parseLong(omobno);   

    String dvname = request.getParameter("driver_name");
    
    String dmobno = request.getParameter("driver_mob_no");
    long driver_mob_no = Long.parseLong(dmobno); 

    String toli = request.getParameter("total_trollye");
    int total_trollye = Integer.parseInt(toli);

  Class.forName("oracle.jdbc.driver.OracleDriver");
  Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
  Statement stmt = con.createStatement(); 
  int result = stmt.executeUpdate("insert into USTRACTOR values ("+machin_id+","+clu_id+",'"+trno+"','"+owner_name+"',"+owner_mob_no+","
                                                                   + "'"+dvname+"',"+driver_mob_no+","+total_trollye+"  )");

   if (result>0){
       out.print("<center><h1> Tractore Added </h1></center>");
     //  out.print("<a href='add_harvesting.jsp'>ADD More Tractore</a>  ");
   }

%>
    </body>
</html>
