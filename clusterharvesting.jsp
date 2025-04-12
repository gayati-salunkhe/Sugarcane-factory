<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Harvesting Machines Information - Sugar Factory</title>
    
    <!-- Bootstrap for layout and responsive design -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-pzjw8f+ua7Kw1TIq0bF4zIVfZOJ3BCsw2P0p/We9Yd/7HU6KxaJf8Hv8nF0s8cF9" crossorigin="anonymous">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="krushi.css">
   
</head>
<body>

<div class="container">
    <% 
         String cid = request.getParameter("cluster_id");
        int id_cluster = Integer.parseInt(cid);
        session.setAttribute("id_cluster",id_cluster);
        
        String name = (String) session.getAttribute("job");
        if (name != null) {
       
        
    
      %>
    
    <!-- Welcome message -->
    <h1>Welcome <%= name  %> </h1>
    <h1>You Adding Harvesting machine in this cluster_id = <%=id_cluster%></h1>

    <!-- Links Section -->
    <center>   <div class="links">
       
        <a href="harvestmachine.jsp">Machine</a>
        <a href="updatechitboy.jsp">Human</a>
        <a href="index.html">Home Page</a>
        <a href="krushi_adhikari.jsp">Back</a>
        
    </div>
    </center>
    <!-- Harvesting Machines Info -->
    <div class="card">
       
        <!-- Harvesting Machines Information -->
        <h4>Harvesting Machines in the Sugar Factory</h4>
        <p>In the sugar industry, harvesting machines play a crucial role in the efficient and timely harvesting of sugarcane. These machines are designed to handle the labor-intensive task of cutting and collecting sugarcane, significantly reducing human labor and increasing productivity.</p>

        <p>There are several types of harvesting machines used in sugar factories, each designed to address different needs and conditions in the field:</p>

        <h5>1. Sugarcane Harvesters (Mechanical Harvesters)</h5>
        <p>Sugarcane harvesters are large machines designed to cut and collect sugarcane in one continuous operation. These machines are equipped with sharp cutting blades that efficiently cut the sugarcane at the base, while also removing leaves and tops from the canes. The cane is then collected and loaded onto transport vehicles.</p>

        <ul>
            <p>High efficiency in cutting sugarcane</p>
            <p>Reduces the need for manual labor</p>
            <p>Improves harvesting speed and consistency</p>
        </ul>

        <h5>2. Ratoon Harvesters</h5>
        <p>Ratoon harvesting is a process where the sugarcane is harvested after the first crop, allowing the cane to regrow. Ratoon harvesters are specialized machines that remove the remaining cane stalks from previous crops, preparing the land for the next harvest.</p>

        <ul>
            <p>Designed for harvesting ratoon sugarcane</p>
            <p>Improves crop yield in successive seasons</p>
            <p>Less damage to the land and soil structure</p>
        </ul>

        <p>Harvesting machines have revolutionized the sugarcane farming industry by reducing the time, labor, and cost associated with traditional manual harvesting. These machines help ensure that the sugarcane is harvested at the right time, improving overall productivity and the quality of the final product.</p>
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
