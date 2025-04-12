<%-- 
    Document   : fbank
    Created on : 4 Jan, 2025, 7:13:18 PM
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
       
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
      Statement stmt = con.createStatement(); 
      ResultSet rs = stmt.executeQuery("select * from regi where USERNAME ='"+session.getAttribute("username")+"' and"
                                                   + " PASSWORD = '"+session.getAttribute("password")+"' ");
       
     if (rs.next())
     {  %>     
     <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
<script src="https://smtpjs.com/v3/smtp.js"></script>
    <!-- Font Awesome for Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

    <link rel="stylesheet" href="form.css">
</head>
<body>
    <div class="form-container">
        <h2><i class="fas fa-user-plus"></i> Update Iformation</h2>
        <form action="Updatefprofile.jsp" method="POST">
            <div class="d1">
                <label for="ldate"><i class="fas fa-calendar-alt"></i>Farmer Id</label>
                <input type="text" name="id" id="ldate"  readonly value="<%=rs.getInt(1)%>">
                
                <label for="fname"><i class="fas fa-user"></i> First Name</label>
                <input type="text" name="fname" id="fname" value="<%=rs.getString(2)%>">
            </div>
             <div class="d1">
                <label for="mname"><i class="fas fa-user"></i> Middle Name</label>
                <input type="text" name="mname" id="mname" value="<%=rs.getString(3)%>">
            
                <label for="lname"><i class="fas fa-user"></i> Last Name</label>
                <input type="text" name="lname" id="lname" value="<%=rs.getString(4)%>">
            </div>
                <div class="d1">
                <label for="address"><i class="fas fa-map-marker-alt"></i> Address</label>
                <input type="text" name="address" id="address" value="<%=rs.getString(5)%>">
           

                <label for="adno"><i class="fas fa-id-card"></i> Aadhar Number</label>
                <input type="text" name="adno" id="adno" value="<%=rs.getLong(6)%>">
            </div>
                <div class="d1">
                <label for="gtnm"><i class="fas fa-location-arrow"></i> Gat Number</label>
                <input type="text" name="gtnm" id="gtnm" value="<%=rs.getInt(7)%>">

                <label for="tarea"><i class="fas fa-sitemap"></i> Total Area Of Farm</label>
                <input type="text" name="tarea" id="tarea" value="<%=rs.getString(8)%>">
             </div>
                 <div class="d1">
                <label for="shugera"><i class="fas fa-leaf"></i> Area Under Sugar Cane</label>
                <input type="text" name="shugera" id="shugera"value="<%=rs.getString(9)%>">
           
                <label for="sgtype"><i class="fas fa-cogs"></i> Type Of Sugar Cane</label>
                <input type="text" name="sgtype" id="sgtype"value="<%=rs.getLong(10)%>">
               </div>
                <div class="d1">
                <label for="ltyoe"><i class="fas fa-cogs"></i> Lavan Type</label>
                <input type="text" name="ltype" id="ltyoe" value="<%=rs.getString(11)%>">

                <label for="ngatno"><i class="fas fa-map-pin"></i> Nearest Gat Number</label>
                <input type="text" name="ngatno" id="ngatno" value="<%=rs.getInt(13)%>">
            </div>

            <div class="d1">
                <label for="village"><i class="fas fa-home"></i> Village Name</label>
                <input type="text" name="village" id="village" value="<%=rs.getString(14)%>">
            
                <label for="taluka"><i class="fas fa-flag"></i> Taluka Name</label>
                <input type="text" name="taluka" id="taluka" value="<%=rs.getString(15)%>">
            </div>
            
            <div class="d1">
                <label for="dis"><i class="fas fa-city"></i> District Name</label>
                <input type="text" name="dis" id="dis" value="<%=rs.getString(16)%>">

                <label for="state"><i class="fas fa-flag"></i> State Name</label>
                <input type="text" name="state" id="state" value="<%=rs.getString(17)%>">
            </div>
            
            <div class="d1">
                <label for="pinc"><i class="fas fa-location-arrow"></i> Pin Code</label>
                <input type="text" name="pinc" id="pinc"value="<%=rs.getLong(18)%>">
          
                <label for="eid"><i class="fas fa-envelope"></i> Email-Id</label>
                <input type="text" name="eid" id="eid" readonly value="<%=rs.getString(19)%>"
                       pattern="[a-z 0-9_]+@[a-z 0-9._]+\.[a-z]{2,}$" title="Enter valid Email" required>
            </div>
            
            <div class="d1">
                <label for="mobno"><i class="fas fa-phone"></i> Mobile Number</label>
                <input type="text" name="mobno" id="mobno" placeholder="+91" value="<%=rs.getLong(20)%>"
                       pattern="(?=.*[0-9]).{10}" title="Enter 10 digit" required>
            
                <label for="amobno"><i class="fas fa-phone-alt"></i> Alternative Mobile Number</label>
                <input type="text" name="amobno" id="amobno" placeholder="+91" value="<%=rs.getLong(21)%>"
                       pattern="(?=.*[0-9]).{10}" title="Enter 10 digit" required>
           </div>
            
           <div class="d1">
                <label for="uname"><i class="fas fa-user-tag"></i> Username</label>
                <input type="text" name="uname" id="uname" value="<%=rs.getString(22)%>"
                       pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{5,}" title="Username must contain at least 1 lowercase, 1 uppercase letter, 1 number, and be at least 5 characters long" required>

                <label for="password"><i class="fas fa-lock"></i> Password</label>
                <input type="password" name="password" id="password" readonly value="<%=rs.getString(23)%>"
                       pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,}" title="Password must contain at least 1 digit, 1 lowercase, 1 uppercase letter, and be at least 5 characters long" required>
           </div>
           
          <button type="submit"><i class="fas fa-paper-plane"></i>Confirm Update</button>
        </form>
    </div>
</body>
     
     
        
   <%  }%>
       
       
       
       %>
    </body>
</html>
