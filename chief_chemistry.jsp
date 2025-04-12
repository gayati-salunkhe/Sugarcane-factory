<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sugar Factory Information</title>
    
    <!-- Bootstrap for layout and responsive design -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-pzjw8f+ua7Kw1TIq0bF4zIVfZOJ3BCsw2P0p/We9Yd/7HU6KxaJf8Hv8nF0s8cF9" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="krushi.css">
   
</head>
<body>

<div class="container">
    <% 
        String name = (String) session.getAttribute("job");
        if (name != null) {
    %>
    <!-- Welcome message -->
    <h1>Welcome <%= name %> Officer</h1>

    <!-- Links Section -->
    <div class="links">
        <a href="editestmd.jsp">Edit Profile</a>
        <a href="sbank.jsp">Add Bank Details</a>
        <a href="#.html">Add Stock</a>
        <a href="#.html">Update Stock</a>
        <a href="#.html">Dispatch Stock</a>
        <a href="logout.jsp">Log Out</a>
        <a href="index.html">Home Page</a>
    </div>

    <!-- Sugar Factory Info -->
    <div class="card">
       
        <!-- Chief Chemistry Officer Information -->
        <h4>Chief Chemistry Officer</h4>
        <p>The Chief Chemistry Officer (CCO) at Kumbhi Kasari Sahakari Sugar Factory is responsible for overseeing all chemical and analytical processes within the factory. Their role is vital in ensuring that the sugar produced is of the highest quality and complies with industry standards and regulations.</p>
        <p>The CCO is in charge of supervising the laboratory operations where the quality of raw materials (like sugarcane) and final sugar products is tested. This includes conducting tests to monitor sugar content, impurities, pH levels, and other essential parameters to ensure that the product meets food safety and quality standards.</p>
        <p>Additionally, the Chief Chemistry Officer is involved in research and development, working to improve the efficiency of the factory’s chemical processes, reduce waste, and ensure that production methods are both cost-effective and environmentally friendly. The CCO also works closely with the production and engineering teams to ensure that chemical processes align with the overall operational goals of the factory.</p>
        <p>The role also includes ensuring that the factory complies with safety standards regarding the handling of chemicals and other hazardous materials. The CCO is responsible for maintaining proper documentation of laboratory results and implementing best practices for laboratory safety and efficiency.</p>
    </div>

    <% 
        }
    %>  
</div>

<!-- Bootstrap JS (Optional for interactive components) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4A7Yk5X7o8ocC7n2r+7zRSQ0XlHndg3aWpJ54p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQyl+6+S3ptX9X55K7aIFhWjxOV9fDZz4vRe5zjIZf5zPR2gg65xe7bcmDAw6lxB" crossorigin="anonymous"></script>

</body>
</html>
