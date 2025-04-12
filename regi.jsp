<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="javax.mail.Session, javax.mail.Message, javax.mail.Transport, javax.mail.internet.InternetAddress, java.util.Properties" %>

<!DOCTYPE html>
<html lang="en">
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
        <h2><i class="fas fa-user-plus"></i>Farmer Registration Form</h2>
        <form action="otpvrify.jsp" method="POST">
            <div class="d1">
                <label for="fname"><i class="fas fa-user"></i> First Name</label>
                <input type="text" name="fname" id="fname">
            
                <label for="mname"><i class="fas fa-user"></i> Middle Name</label>
                <input type="text" name="mname" id="mname">
            </div>

            <div class="d1">
                <label for="lname"><i class="fas fa-user"></i> Last Name</label>
                <input type="text" name="lname" id="lname">
           
                <label for="address"><i class="fas fa-map-marker-alt"></i> Address</label>
                <input type="text" name="address" id="address">
            </div>

            <div class="d1">
                <label for="adno"><i class="fas fa-id-card"></i> Aadhar Number</label>
                <input type="text" name="adno" id="adno">
            
                <label for="gtnm"><i class="fas fa-location-arrow"></i> Gat Number</label>
                <input type="text" name="gtnm" id="gtnm">
            </div>

            <div class="d1">
                <label for="tarea"><i class="fas fa-sitemap"></i> Total Area Of Farm</label>
                <input type="text" name="tarea" id="tarea">
            
                <label for="shugera"><i class="fas fa-leaf"></i> Area Under Sugar Cane</label>
                <input type="text" name="shugera" id="shugera">
            </div>

            <div class="d1">
                <label for="sgtype"><i class="fas fa-cogs"></i> Type Of Sugar Cane</label>
                <input type="text" name="sgtype" id="sgtype">
            
                <label for="ltyoe"><i class="fas fa-cogs"></i> Lavan Type</label>
                <input type="text" name="ltyoe" id="ltyoe">
            </div>

            <div class="d1">
                <label for="ldate"><i class="fas fa-calendar-alt"></i> Lavan Date</label>
                <input type="date" name="ldate" id="ldate">
            
                <label for="ngatno"><i class="fas fa-map-pin"></i> Nearest Gat Number</label>
                <input type="text" name="ngatno" id="ngatno">
            </div>

            <div class="d1">
                <label for="village"><i class="fas fa-home"></i> Village Name</label>
                <input type="text" name="village" id="village">
            
                <label for="taluka"><i class="fas fa-flag"></i> Taluka Name</label>
                <input type="text" name="taluka" id="taluka">
            </div>
            
            <div class="d1">
                <label for="dis"><i class="fas fa-city"></i> District Name</label>
                <input type="text" name="dis" id="dis">

                <label for="state"><i class="fas fa-flag"></i> State Name</label>
                <input type="text" name="state" id="state">
            </div>
            
            <div class="d1">
                <label for="pinc"><i class="fas fa-location-arrow"></i> Pin Code</label>
                <input type="text" name="pinc" id="pinc">
          
                <label for="eid"><i class="fas fa-envelope"></i> Email-Id</label>
                <input type="text" name="eid" id="eid" pattern="[a-z 0-9_]+@[a-z 0-9._]+\.[a-z]{2,}$" title="Enter valid Email" required>
            </div>
            
            <div class="d1">
                <label for="mobno"><i class="fas fa-phone"></i> Mobile Number</label>
                <input type="text" name="mobno" id="mobno" placeholder="+91" pattern="(?=.*[0-9]).{10}" title="Enter 10 digit" required>
            
                <label for="amobno"><i class="fas fa-phone-alt"></i> Alternative Mobile Number</label>
                <input type="text" name="amobno" id="amobno" placeholder="+91" pattern="(?=.*[0-9]).{10}" title="Enter 10 digit" required>
           </div>
            
           <div class="d1">
                <label for="uname"><i class="fas fa-user-tag"></i> Username</label>
                <input type="text" name="uname" id="uname" pattern="(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).{5,}" 
                       title="Username must contain at least 1 lowercase, 1 uppercase letter, 1 number, and be at least 5 characters long" 
                       required>

                <label for="password"><i class="fas fa-lock"></i> Password</label>
                <input type="password" name="password" id="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,}" 
                       title="Password must contain at least 1 digit, 1 lowercase, 1 uppercase letter, and be at least 5 characters long" 
                       required>
           </div>
           
          <button type="submit"><i class="fas fa-paper-plane"></i> Send OTP On Email</button>
        </form>
    </div>
</body>
</html>

