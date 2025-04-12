<%-- 
    Document   : addstaff
    Created on : 5 Jan, 2025, 4:16:15 PM
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
        
        String fname = request.getParameter("fname");
        String mname = request.getParameter("mname");
        String lname = request.getParameter("lname");
        String dob = request.getParameter("dob");
        
        String adharNo = request.getParameter("adhar_no");
        long adharno = Long.parseLong(adharNo);
        
        String panNo = request.getParameter("pan_no");
        
        String mobNo = request.getParameter("mob_no");
        long mobno = Long.parseLong(mobNo);
        
        String emailId = request.getParameter("email_id");
        String cAddress = request.getParameter("c_address");
        String pAddress = request.getParameter("p_address");
        String jobProfile = request.getParameter("job_profile");
        String education = request.getParameter("education");
        String hireDate = request.getParameter("hiredate");
        String salary = request.getParameter("salary");
        long sal = Long.parseLong(salary);
        String experience = request.getParameter("experience");
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
        Statement stmt = con.createStatement();
        int result = stmt.executeUpdate("insert into kumbhistaff values(STAFF_ID.nextVal,'"+fname+"','"+mname+"','"+lname+"','"+dob+"',"
                + ""+adharno+",'"+panNo+"',"+mobno+",'"+emailId+"','"+cAddress+"','"+pAddress+"','"+jobProfile+"','"+education+"',"
                + "'"+hireDate+"',"+sal+",'"+experience+"','"+username+"','"+password+"' )");
        
        if(result>0)
            {
                out.print("Staff Information Add successfully..");
            }

    %>

   

</body>
</html>

    </body>
</html>
