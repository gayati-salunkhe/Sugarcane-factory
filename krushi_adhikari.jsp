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
    <h1>Welcome <%= name %></h1>

    <!-- Links Section -->
    <div class="links">
        <a href="editestmd.jsp">Edit Profile</a>
        <a href="sbank.jsp">Add Bank Detail</a>
        <a href="addcluster.html">Add Cluster</a>
        <a href="updatecluster.html">Update Cluster</a>
        <a href="#.html">Delete Cluster</a>
      <!--  <a href="logout.jsp">Log-Out</a> -->
        <a href="registerarea.jsp">Register Area</a>
       <a href="harvesting.jsp">harvesting</a> 
         <a href="logout.jsp">Log-Out</a> 
       
   </div>

    
    <div class="card">
        
        <!-- Krushi Aadhikari Information -->
        <h4>Krushi Aadhikari (Agriculture Officer)</h4>
        <p>The Krushi Aadhikari (Agriculture Officer) at Kumbhi Kasari Sahakari Sugar Factory plays a key role in ensuring that the raw materials required for sugar production—mainly sugarcane—are of the highest quality. This role involves working closely with local farmers, providing them with technical guidance on best agricultural practices, pest management, and soil care to enhance sugarcane yield.</p>
        <p>The Krushi Aadhikari is also responsible for overseeing the proper use of fertilizers and irrigation systems, ensuring that they meet sustainable farming standards. By conducting regular field visits and inspections, the Agriculture Officer helps farmers improve their productivity, thereby ensuring a steady supply of high-quality sugarcane for the factory's operations.</p>
        <p>Additionally, the Krushi Aadhikari assists in implementing government policies related to agricultural development, conducting training sessions for farmers, and working with agricultural experts to improve the overall productivity of the region's farming sector.</p>
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
