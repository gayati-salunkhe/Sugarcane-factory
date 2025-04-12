<%-- 
    Document   : otp
    Created on : 3 Jan, 2025, 6:24:49 PM
    Author     : HP
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="javax.mail.Session, javax.mail.Message, javax.mail.Transport, javax.mail.internet.InternetAddress, java.util.Properties" %>

<script src="https://smtpjs.com/v3/smtp.js"></script>
<html>
<head>
    <title>Request OTP</title>
</head>
<body>
    <h2>Enter your Email to receive OTP</h2>
    <form action="recieveotp.jsp" method="post">
        Email: <input type="email" name="email" required />
        <input type="submit" value="Send OTP" />
    </form>
</body>
</html>