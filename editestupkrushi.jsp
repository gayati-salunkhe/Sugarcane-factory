<%-- 
    Document   : updatestaff
    Created on : 5 Jan, 2025, 7:05:09 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="addstaf.css">
    </head>
    <body>
         <%
       
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
      Statement stmt = con.createStatement(); 
      ResultSet rs = stmt.executeQuery("select CLUSTER_ID,FNAME,MNAME,LNAME,To_char(DOB,'dd-mm-yyyy')"
              + ",ADHAR_NO,PAN_NO,MOB_NO,EMAIL_ID,C_ADDRESS,P_ADDRESS,JOB_PROFILE,EDUCATION,To_char(HIREDATE,'dd-mm-yy')"
              + ",SALARY,EXPRIENCE,USERNAME,PASSWORD from upkrushi WHERE  CLUSTER_ID =  "+session.getAttribute("cluster_id")+" ");
       
     if (rs.next())
     {  %>  
  <div class="container">
        <h1>Edite Information Of Up Krushi Adhikari  </h1>
        <form action="finalupdatecluster.jsp" method="POST">

            <div class="form-row">
                <div class="form-group">
                    <label for="staff_id">cluster_ID :</label>
                    <input type="number" id="cluster_id" name="cluster_id" value="<%=rs.getInt(1)%>"  readonly>
                </div>

                <div class="form-group">
                    <label for="fname">First Name:</label>
                    <input type="text" id="fname" name="fname" value="<%=rs.getString(2)%>" required >
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="mname">Middle Name:</label>
                    <input type="text" id="mname" name="mname" value="<%=rs.getString(3)%>" required>
                </div>

                <div class="form-group">
                    <label for="lname">Last Name:</label>
                    <input type="text" id="lname" name="lname" value="<%=rs.getString(4)%>" required>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="dob">Date of Birth:</label>
                    <input type="text" id="dob" name="dob" value="<%=rs.getString(5)%>" required>
                </div>

                <div class="form-group">
                    <label for="adhar_no">Aadhar Number:</label>
                    <input type="number" id="adhar_no" name="adhar_no" value="<%=rs.getLong(6)%>" required>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="pan_no">PAN Number:</label>
                    <input type="text" id="pan_no" name="pan_no" value="<%=rs.getString(7)%>" required>
                </div>

                <div class="form-group">
                    <label for="mob_no">Mobile Number:</label>
                    <input type="number" id="mob_no" name="mob_no" value="<%=rs.getLong(8)%>"required>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="email_id">Email ID:</label>
                    <input type="email" id="email_id" name="email_id" value="<%=rs.getString(9)%>" required>
                </div>

                <div class="form-group">
                    <label for="c_address">Current Address:</label>
                    <input type="text" id="c_address" name="c_address" value="<%=rs.getString(10)%>" required>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="p_address">Permanent Address:</label>
                    <input type="text" id="p_address" name="p_address" value="<%=rs.getString(11)%>" required>
                </div>

                <div class="form-group">
                    <label for="job_profile">Job Profile:</label>
                    <input type="text" readonly name="job_profile" value="<%=rs.getString(12)%>" required>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="education">Education:</label>
                    <input type="text" id="education" name="education" value="<%=rs.getString(13)%>" required>
                </div>

                <div class="form-group">
                    <label for="hiredate">Hire Date:</label>
                    <input type="text" id="hiredate" name="hiredate" value="<%=rs.getString(14)%>" required>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="salary">Salary:</label>
                    <input type="number" id="salary"  name="salary" value="<%=rs.getLong(15)%>" required>
                </div>

                <div class="form-group">
                    <label for="experience">Experience:</label>
                    <input type="text" id="experience" name="experience" value="<%=rs.getString(16)%>" required>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username"  name="username"value="<%=rs.getString(17)%>" required>
                </div>

                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password"  name="password" value="<%=rs.getString(18)%>" required>
                </div>
            </div>

            <div class="form-group">
                <button type="submit">Update</button>
            </div>
        </form>
    </div>
<%}%>
</body>
</html>



