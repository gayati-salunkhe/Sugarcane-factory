<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email Sent</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="card mt-5">
            <div class="card-body">
                <h3 class="card-title text-center">Email Sending Status</h3>
<%
    String recipient = request.getParameter("recipient");
    String village_name = request.getParameter("village_name");
    String subject = request.getParameter("subject");
    String messageContent = request.getParameter("message");

  /*  final String userEmail = "giriabhi041@gmail.com";
    final String userPassword = "jxpz yscp myud wijb"; // Replace with your app password-*/

     final String userEmail = "v.star1279@gmail.com"; // Your email
     final String userPassword = "yqtt ubnl yjbz jdoy";
    
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "vstar", "vaibhav");
        
       

        List<String> emailList = new ArrayList<>();

        if (recipient != null) {
            String query = null;

            if (recipient.equalsIgnoreCase("Chairman")) {
                query = "SELECT EMAIL_ID FROM kumbhistaff where JOB_PROFILE='chairman' ";
            } else if (recipient.equalsIgnoreCase("Managing_Director")) {
                query = "SELECT EMAIL_ID FROM kumbhistaff WHERE JOB_PROFILE = 'Managing_Director' ";
            } else if (recipient.equalsIgnoreCase("work mananger")) {
                query = "SELECT EMAIL_ID FROM kumbhistaff WHERE JOB_PROFILE = 'work mananger' ";
            } else if (recipient.equalsIgnoreCase("krushi_adhikari")) {
                query = "SELECT EMAIL_ID FROM  kumbhistaff WHERE JOB_PROFILE = 'krushi_adhikari' ";
            } else if (recipient.equalsIgnoreCase("Farmers")) {
                query = "SELECT EMAIL_ID FROM regi";
            }

            if (query != null) {
                stmt = conn.prepareStatement(query);
                rs = stmt.executeQuery();
                while (rs.next()) {
                    emailList.add(rs.getString(1));
                }
            }
        } else if (village_name != null) {
            // Get farmer emails
            stmt = conn.prepareStatement("SELECT EMAIL_ID FROM regi WHERE VILLEGE_NAME = ?");
            stmt.setString(1, village_name);
            rs = stmt.executeQuery();
            while (rs.next()) {
                emailList.add(rs.getString("EMAIL_ID"));
            }

            // Get chitboy email
            stmt = conn.prepareStatement(
                "SELECT c.EMAIL_ID " +
                "FROM CHITBOY c " +
                "JOIN P_ADDRESS v ON c.id = v.STAFF_ID " +
                "WHERE v.P_ADDRESS = ?");
            stmt.setString(1, village_name);
            rs = stmt.executeQuery();
            if (rs.next()) {
                emailList.add(rs.getString("EMAIL_ID"));
            }

            // Get upkrushiadhikari email
            stmt = conn.prepareStatement(
                "SELECT u.EMAIL_ID " +
                "FROM UPKRUSHI u " +
                "JOIN CHITBOY c ON u.id = c.CLUSTER_ID " +
                "JOIN village v ON c.id = v.STAFF_ID " +
                "WHERE v.village_name = ?");
            stmt.setString(1, village_name);
            rs = stmt.executeQuery();
            if (rs.next()) {
                emailList.add(rs.getString("EMAIL_ID"));
            }
        }

        if (emailList.isEmpty()) {
            out.println("<p class='text-danger'>No recipient emails found!</p>");
        } else {
            for (String recipientEmail : emailList) {
                try {
                    Properties properties = new Properties();
                    properties.put("mail.smtp.host", "smtp.gmail.com");
                    properties.put("mail.smtp.port", "587");
                    properties.put("mail.smtp.auth", "true");
                    properties.put("mail.smtp.starttls.enable", "true");

                    javax.mail.Session mailSession = javax.mail.Session.getInstance(properties, new javax.mail.Authenticator() {
                        protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                            return new javax.mail.PasswordAuthentication(userEmail, userPassword);
                        }
                    });

                    Message message = new MimeMessage(mailSession);
                    message.setFrom(new InternetAddress(userEmail));
                    message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
                    message.setSubject(subject);
                    message.setText(messageContent);

                    Transport.send(message);
                    out.println("<p class='text-success'>Email sent successfully to: " + recipientEmail + "</p>");
                } catch (Exception e) {
                    out.println("<p class='text-danger'>Failed to send email to: " + recipientEmail + ". Error: " + e.getMessage() + "</p>");
                }
            }
        }
    } catch (Exception e) {
        out.println("<p class='text-danger'>Database or email sending error: " + e.getMessage() + "</p>");
    } finally {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException ex) {
            out.println("<p class='text-danger'>Error closing database resources: " + ex.getMessage() + "</p>");
        }
    }
%>
<a onclick="goBack()" class="btn btn-primary w-100">Back to Form</a>
            </div>
        </div>
    </div>
<script>
    
    function goBack(){
        
        window.history.back();
    }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>