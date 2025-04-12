<%-- 
    Document   : recieveotp
    Created on : 3 Jan, 2025, 6:30:00 PM
    Author     : HP
--%>

<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="javax.mail.Session, javax.mail.Message, javax.mail.Transport, javax.mail.internet.InternetAddress, java.util.Properties" %>
 <script src="https://smtpjs.com/v3/smtp.js"></script>
<%
    String toEmail = request.getParameter("email");
    
    if (toEmail != null && !toEmail.isEmpty()) {
        // Generate a random OTP (6 digits)
        String otp = String.format("%06d", new Random().nextInt(999999));
        
        // Configure email settings
        String host = "smtp.gmail.com"; // Gmail SMTP server
        final String user = "v.star1279@gmail.com"; // Your email
        final String password = "yqtt ubnl yjbz jdoy"; // Your email password
        
        // Setup the mail server properties
        Properties props = new Properties();
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", "587"); // TLS port
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true"); // Enable STARTTLS
        
        // Get the session
        Session mailsession = Session.getInstance(props, new javax.mail.Authenticator() {
            
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user,password);
            }
        });
        
        try {
            // Create a message
            Message message = new MimeMessage(mailsession);
            message.setFrom(new InternetAddress(user));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            message.setSubject("Your OTP Code");
            message.setText("Your OTP code is: " + otp);
            
            // Send the email
            Transport.send(message);
            
            out.println("<h3>OTP has been sent to " + toEmail + "</h3>");
        } catch (MessagingException e) {
            out.println("<h3>Error sending OTP</h3>");
            e.printStackTrace();
        }
    } else {
        out.println("<h3>Please enter a valid email address</h3>");
    }
%>