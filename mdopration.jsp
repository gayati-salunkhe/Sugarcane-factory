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
    <link rel="stylesheet" href="fwork.css">
   
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
        <a href="sbank.jsp">Add bank Details</a>
        <a href="addHod.html">Add HOD</a>
        <a href="Updathod.html">Update HOD</a>
        <a href="deletehod.html">Delete HOD</a>
        <a href="logout.jsp">Log Out</a>
        <a href="index.html">Home Page</a>
    </div>

    <!-- Sugar Factory Info -->
   <div class="card">
    <h3>About the Kumbhi Kasari Sahakari Sugar Factory</h3>
    <p>A sugar factory is a place where raw sugarcane or sugar beets are processed to extract the sucrose (sugar). The process involves cutting the sugarcane or beets, extracting the juice, and then processing it to form refined sugar. The sugar production process is vital for supplying sugar to the food industry, and sugarcane farming and factory work provide jobs for millions of people globally.</p>
    <p>In a typical sugar factory, the sugar extraction is followed by a purification process, where impurities are removed from the juice. Then the juice is evaporated to concentrate it and finally crystallized into sugar crystals. The resulting sugar can be packaged and shipped to markets, or further processed into other forms like refined sugar, molasses, or ethanol.</p>
    <p>The sugar factory plays an essential role in the economy of many countries, particularly in regions where sugarcane and sugar beet farming is a key industry. The factories also have a significant impact on the environment, and many modern sugar mills are working to minimize their ecological footprint through sustainable farming practices and eco-friendly technologies.</p>

    <!-- Managing Director and Work Manager Information -->
    <h4>Managing Director</h4>
    <p>The Managing Director (MD) of Kumbhi Kasari Sahakari Sugar Factory is responsible for overseeing the entire operations of the factory. The MD ensures that the production of sugar meets the factory's goals in terms of quality, quantity, and cost-effectiveness. Additionally, the MD is involved in strategic planning, financial management, and liaising with government agencies, stakeholders, and suppliers to ensure smooth operations. The MD plays a crucial role in setting long-term goals, driving the factory’s vision, and ensuring compliance with industry regulations.</p>

    <h4>Work Manager</h4>
    <p>The Work Manager at the sugar factory is responsible for the day-to-day operations of the factory floor. This role involves supervising the workers, ensuring the smooth running of the production processes, and maintaining high safety standards. The Work Manager coordinates between different departments, including production, quality control, and maintenance, to ensure that operations are running efficiently. Additionally, the Work Manager is in charge of managing the workforce, ensuring that staff is properly trained, and that the machinery is well-maintained for optimal performance.</p>
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
