<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Staff Information Form</title>
    <link rel="stylesheet" href="addstaf.css">
    <!-- Include Font Awesome CDN for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
          select {
            width: 100%;
            padding: 12px;
            font-size: 16px;
            color: #333;
            background-color: #f9f9f9;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: border-color 0.3s ease, background-color 0.3s ease;
            cursor: pointer;
        }

        /* Add hover effect on select field */
        select:hover {
            border-color: #0056b3;
        }

        /* Add focus effect when the user clicks the select dropdown */
        select:focus {
            border-color: #0056b3;
            outline: none;
            background-color: #fff;
        }

        /* Style for the label (optional) */
        label {
            font-size: 14px;
            font-weight: bold;
            color: #333;
            margin-bottom: 8px;
            display: block;
        }

        /* Adjust font size and padding for smaller screens */
        @media (max-width: 480px) {
            select {
                font-size: 14px;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    
     <%
       
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
      Statement stmt = con.createStatement(); 
      ResultSet rs = stmt.executeQuery("select * from UPKRUSHI where CLUSTER_ID ="+session.getAttribute("cluster_id")+" and "
                                                   + "USERNAME ='"+session.getAttribute("username")+"' and"
                                                   + " PASSWORD = '"+session.getAttribute("password")+"' ");
       
     if (rs.next())
     {  %>  

    <div class="container">
        <h1> Chitboy Information Form</h1>
        <form action="faddchitboy.jsp" method="POST">

            <div class="form-row">
             <div class="form-group">
                    <label for="fname"><i class="fas fa-user"></i> First Name:</label>
                    <input type="text" id="fname" name="fname" required>
                </div>
                <div class="form-group">
                    <label for="mname"><i class="fas fa-user"></i> Middle Name:</label>
                    <input type="text" id="mname" name="mname">
                </div>
            </div>

            
            <div class="form-row">
                 <div class="form-group">
                    <label for="lname"><i class="fas fa-user"></i> Last Name:</label>
                    <input type="text" id="lname" name="lname" required>
                </div>
                 <div class="form-group">
                    <label for="dob"><i class="fas fa-calendar-alt"></i> Date of Birth:</label>
                    <input type="text" id="dob" name="dob" required>
                </div>  
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="adhar_no"><i class="fas fa-credit-card"></i> Aadhar Number:</label>
                    <input type="number" id="adhar_no" name="adhar_no" required>
                </div>
                <div class="form-group">
                    <label for="pan_no"><i class="fas fa-id-card"></i> PAN Number:</label>
                    <input type="text" id="pan_no" name="pan_no" required>
                </div>               
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="mob_no"><i class="fas fa-phone-alt"></i> Mobile Number:</label>
                    <input type="number" id="mob_no" name="mob_no" required>
                </div>
               <div class="form-group">
                    <label for="email_id"><i class="fas fa-envelope"></i> Email ID:</label>
                    <input type="email" id="email_id" name="email_id" required>
                </div> 
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="c_address"><i class="fas fa-home"></i> Current Address:</label>
                    <input type="text" id="c_address" name="c_address" required>
                </div>
                <div class="form-group">
                    <label for="p_address"><i class="fas fa-home"></i> Office Address:</label>
                    <input type="text" id="p_address" name="p_address" value="<%=rs.getString(12)%>" readonly>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="job_profile"><i class="fas fa-briefcase"></i> Job Profile:</label>
                    <input type="text" id="job_profile" name="job_profile" readonly value="chitboy" required>
                </div>
                <div class="form-group">
                    <label for="education"><i class="fas fa-graduation-cap"></i> Education:</label>
                    <input type="text" id="education" name="education" required>
                </div>
            </div>

            <div class="form-row">
                 <div class="form-group">
                    <label for="hiredate"><i class="fas fa-calendar-day"></i> Hire Date:</label>
                    <input type="text" id="hiredate" name="hiredate" required>
                </div>
                <div class="form-group">
                    <label for="salary"><i class="fas fa-dollar-sign"></i> Salary:</label>
                    <input type="number" id="salary" name="salary" required>
                </div>
            </div>

            <div class="form-row">
               <div class="form-group">
                    <label for="experience"><i class="fas fa-trophy"></i> Experience:</label>
                    <input type="text" id="experience" name="experience" required>
                </div>
                <div class="form-group">
                    <label for="username"><i class="fas fa-user-alt"></i> Username:</label>
                    <input type="text"  id="username" name="username" required>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="password"><i class="fas fa-lock"></i> Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                 <div class="form-group">
                     <label>Cluster_id</label>
                     <input type="text"  name="Cluster_id" value="<%=rs.getInt(2)%>" readonly>
   
                </div>
            </div>

            <div class="form-group">
                <button type="submit"><i class="fas fa-paper-plane"></i> Submit</button>
            </div>
        </form>
    </div>
<%}%>
</body>
</html>
