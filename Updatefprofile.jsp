<%-- 
    Document   : Updatefprofile
    Created on : 4 Jan, 2025, 7:54:33 PM
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
         String id = request.getParameter("id");
         int fid   = Integer.parseInt(id);
         
         String fname = request.getParameter("fname");
         String mname = request.getParameter("mname");
         String lname = request.getParameter("lname");
       String address = request.getParameter("address");
       
         String adnum = request.getParameter("adno");
         long adahrno = Long.parseLong(adnum);
         
         String gtno  = request.getParameter("gtnm");
         int gatnum   = Integer.parseInt(gtno);
         
         String totalaf = request.getParameter("tarea");
         String aofscan = request.getParameter("shugera");
         
         String typesc = request.getParameter("sgtype");
       long typeofscan = Long.parseLong(typesc);
       
        String lavantp = request.getParameter("ltype");
        
        String ngtnum  = request.getParameter("ngatno");
        int neargtno   = Integer.parseInt(ngtnum);
        
        String village = request.getParameter("village");
        String taluka  = request.getParameter("taluka");
        String dist    = request.getParameter("dis");
        String state   = request.getParameter("state");
        
        String pincode = request.getParameter("pinc");
        long pincod = Long.parseLong(pincode);
        
        String emailid = request.getParameter("eid");
        
        String m1 = request.getParameter("mobno");
        long mobno1  = Long.parseLong(m1);
        
        String m2 = request.getParameter("mobno");
        long mobno2  = Long.parseLong(m2);
        
        String username = request.getParameter("uname");
        String password = request.getParameter("password");
        

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
            Statement stmt=con.createStatement();
            int result=stmt.executeUpdate("update regi set FNAME='"+fname+"',MNAME='"+mname+"'"
                    + ",LNAME='"+lname+"',ADDRESS='"+address+"',ADHARNO="+adahrno+", GATNO="+gatnum+","
                    + "TOTAL_AREA='"+totalaf+"',A_UNDER_SUGAR='"+aofscan+"',TYPE_SUGARCANE="+typeofscan+","
                    + "LAVAN_TYPE='"+lavantp+"',NEARBY_GATNO="+neargtno+",VILLEGE_NAME='"+village+"'"
                    + ",TALUKA_NAME='"+taluka+"',DIST_NAME='"+dist+"',STATE_NAME='"+state+"'"
                    + ",PINCODE="+pincod+",MOBNO="+mobno1+",ALTERNATE_MOBNO="+mobno2+" where REGI_NO="+fid+" ");
         

  if(result>0)
            {
                out.print("Update Information successfully..");
            }

     %>
     <button href="fwork.jsp">back</button>
    </body>
</html>
