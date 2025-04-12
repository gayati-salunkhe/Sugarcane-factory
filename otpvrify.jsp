<%-- 
    Document   : recieveotp
    Created on : 3 Jan, 2025, 6:30:00 PM
    Author     : HP
--%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="javax.mail.Session, javax.mail.Message, javax.mail.Transport, javax.mail.internet.InternetAddress, java.util.Properties" %>
 <script src="https://smtpjs.com/v3/smtp.js"></script>
<%
           String fname = request.getParameter("fname");
           String mname = request.getParameter("mname");
           String lname = request.getParameter("lname");
           String address = request.getParameter("address");
           String adharno = request.getParameter("adno");
           long adnum    = Long.parseLong(adharno);
           String  gtnu = request.getParameter("gtnm");
           int gtnum = Integer.parseInt(gtnu);
           String taof = request.getParameter("tarea");
           int tarea = Integer.parseInt(taof);
           String aosc  = request.getParameter("shugera");
           int areasc = Integer.parseInt(aosc);
           String typsc  = request.getParameter("sgtype");
           int sgctype = Integer.parseInt(typsc);
           String lavantype = request.getParameter("ltyoe"); 
           String lavandate  = request.getParameter("ldate");
           String neargtno  = request.getParameter("ngatno");
           int neargatnum   = Integer.parseInt(neargtno);
           String village  = request.getParameter("village");
           String taluka  = request.getParameter("taluka");
           String dist  = request.getParameter("dis");
           String state  = request.getParameter("state");
           String pinco  = request.getParameter("pinc");
           int pincode = Integer.parseInt(pinco);
           String emailid  = request.getParameter("eid");
           String mob  = request.getParameter("mobno");
           long mobno  = Long.parseLong(mob);
           String almob  = request.getParameter("amobno");
           long altermobno  = Long.parseLong(almob);
           String usrename = request.getParameter("uname");
           String pass = request.getParameter("password");
           

    session.setAttribute("fname", fname);
    session.setAttribute("mname", mname);
    session.setAttribute("lname", lname);
    session.setAttribute("address", address);
    session.setAttribute("adnum", adnum);
    session.setAttribute("gtnum", gtnum);
    session.setAttribute("tarea", tarea);
    session.setAttribute("areasc", areasc);
    session.setAttribute("sgctype", sgctype);
    session.setAttribute("lavantype", lavantype);
    session.setAttribute("lavandate", lavandate);
    session.setAttribute("neargatnum", neargatnum);
    session.setAttribute("village", village);
    session.setAttribute("taluka", taluka);
    session.setAttribute("dist", dist);
    session.setAttribute("state", state);
    session.setAttribute("pincode", pincode);
    session.setAttribute("emailid", emailid);
    session.setAttribute("mobno", mobno);
    session.setAttribute("altermobno", altermobno);
    session.setAttribute("usrename", usrename);
    session.setAttribute("password", pass);
    
    
    
    
    String toEmail = request.getParameter("eid");
    
    if (toEmail != null && !toEmail.isEmpty()) {
        // Generate a random OTP (6 digits)
        String otp = String.format("%06d", new Random().nextInt(999999));
        session.setAttribute("otp", otp);
        response.sendRedirect("confirmotp.jsp");
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
            out.println("<h3>OTP has been sent to  : " + toEmail + "</h3>");
        } catch (MessagingException e) {
            out.println("<h3>Error sending OTP</h3>");
            e.printStackTrace();
        }
    } else {
        out.println("<h3>Please enter a valid email address</h3>");
    }
    

%>