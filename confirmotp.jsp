<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<html>
<head>
    <title>OTP Verification</title>
    <!-- Include Bootstrap CSS from CDN -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="otp.css"
    
</head>
<body>

    <!-- Main Container -->
    <div class="container">
        <h2 class="text-center mb-4">OTP Verification</h2>
        
        <!-- OTP Form -->
        <form action="confirmotp.jsp" method="POST">
            <div class="form-group">
                <label for="otp">Enter OTP:</label>
                <input type="text" class="form-control" name="otp" id="otp" required>
            </div>
            <button type="submit" class="btn btn-primary btn-block">Verify OTP</button>
        </form>

        <%
            // Handle OTP verification directly in this page (optional step)
            String otp = request.getParameter("otp");
            String sessionOtp = (String) session.getAttribute("otp");

            if (otp != null) {
                if (otp.equals(sessionOtp)) {
                    out.println("<div class='alert alert-success mt-3'>OTP verified successfully!</div>");
                    // You can add a redirect or further actions here like registration completion
                    response.sendRedirect("successregi.jsp");
                } else {
                    out.println("<div class='alert alert-danger mt-3'>Invalid OTP. Please try again.</div>");
                }
            }
        %>
    </div>

    <!-- Include Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
