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
    <h1> View Register Area </h1>

    <!-- Links Section -->
    <center>   <div class="links">
        <a href="villagewise.jsp">Village Wise</a>
        <a href="clusterwise.jsp">Cluster Wise</a>
        <a href="#.html">Total Area</a>
        
        <a href="logout.jsp">Log Out</a>
        <a href="krushi_adhikari.jsp">Back</a>
        
        </div></center>

   

    <!-- Register Area of Sugarcane Farm -->
   <div class="card mt-4">
    <h4>Register Area of Sugarcane Farm</h4>
    <p>The Register Area program helps in recording and managing all sugarcane farms in the region. The key tasks involved in the registration of a sugarcane farm area include:</p>
    <ul>
        <li><strong class="black-text">Village Wise Registration:</strong> <p>Farmers can register their farms by village, ensuring that all sugarcane farms are recorded accurately for monitoring and resource distribution.</P></li>
        <li><strong class="black-text">Cluster Wise Registration:</strong> <p>A cluster is a group of neighboring farms. The registration helps monitor the collective output and efficiency of sugarcane farming in specific areas.</P></li>
        <li><strong class="black-text">Total Area Registration:</strong>   <p>The total registered area represents the cumulative area under sugarcane cultivation. This data is used to estimate the total sugarcane production capacity of the factory .</P></li>
        <li><strong class="black-text">Monitoring and Reporting:</strong>  <p> The registered area data is used to track crop yields, identify any issues with soil health, pest management, and water usage, and optimize the overall productivity of the farming sector.</P></li>
    </ul>
    <p>By registering and monitoring these areas, the sugar factory ensures efficient management of resources and helps farmers to maximize their productivity while contributing to the sustainable development of the local agricultural economy.</p>
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
