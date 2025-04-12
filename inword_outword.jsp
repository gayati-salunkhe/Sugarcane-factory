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
       
        <!-- Inward/Outward (Stock Management) Officer Information -->
        <h4>Inward/Outward (Stock Management) Officer</h4>
        <p>The Inward/Outward (Stock Management) Officer at Kumbhi Kasari Sahakari Sugar Factory is responsible for overseeing the movement of raw materials and finished products within the factory. This role plays a crucial part in ensuring that the factory maintains an efficient supply chain, from the delivery of sugarcane to the storage and dispatch of the final sugar products.</p>
        <p>The officer ensures that all incoming raw materials (such as sugarcane, chemicals, and other ingredients) are correctly recorded, stored, and tracked to avoid discrepancies or shortages. They also manage the movement of finished products, ensuring they are dispatched on time to meet demand and market needs. Proper record-keeping of inventory levels, batch numbers, and other relevant details is crucial for this role to ensure accuracy and compliance with industry regulations.</p>
        <p>Additionally, the Stock Management Officer works closely with the procurement department, suppliers, and logistics teams to ensure timely delivery and proper stock levels. They also play a role in minimizing waste and optimizing storage space in the factory warehouse, contributing to the factory's overall operational efficiency.</p>

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
