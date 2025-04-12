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
        <a href="#.html">Devlop Factory</a>
        <a href="#.html">Update report</a>
        <a href="#.html">Manage Work Flow</a>
        <a href="logout.jsp">Log Out</a>
       <!-- <a href="index.html">Home Page</a> -->
    </div>

    <!-- Sugar Factory Info -->
    <div class="card">
       
        <!-- Civil Engineer Information -->
        <h4>Civil Engineer</h4>
        <p>The Civil Engineer at Kumbhi Kasari Sahakari Sugar Factory is responsible for overseeing the construction, maintenance, and repair of the factory’s infrastructure, including buildings, roads, water management systems, and other civil structures necessary for the smooth operation of the factory.</p>
        <p>The Civil Engineer ensures that all construction and infrastructure projects meet industry standards, safety regulations, and environmental requirements. They work closely with the design and construction teams to plan, design, and implement new facilities or infrastructure improvements within the factory. This includes designing factory layouts, creating blueprints, and ensuring that structural designs support the operational needs of the factory.</p>
        <p>The Civil Engineer also plays a critical role in maintaining the structural integrity of factory buildings, including the foundation, walls, roofing, and flooring. Regular inspections and maintenance are carried out to ensure the safety and durability of the factory infrastructure. Additionally, they are involved in managing stormwater systems, waste disposal, and ensuring that water supply systems meet the factory's needs.</p>
        <p>They are also responsible for managing construction budgets, coordinating with contractors and construction teams, and ensuring projects are completed on time and within budget. Furthermore, the Civil Engineer ensures that safety standards are met in all construction and maintenance activities, minimizing potential risks to workers and the environment.</p>
        <p>The role also involves addressing any structural problems that may arise during factory operations, carrying out necessary repairs, and ensuring that the factory is fully compliant with all legal and regulatory requirements regarding building codes, safety, and environmental impact.</p>
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
