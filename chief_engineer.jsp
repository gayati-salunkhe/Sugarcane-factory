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
        <a href="#.html">Mentance </a>
        <a href="#.html">Work Flow</a>
        <a href="#.html">Parts Order</a>
        <a href="logout.jsp">Log Out</a>
        <a href="index.html">Home Page</a>
    </div>

    <!-- Sugar Factory Info -->
    <div class="card">
       
        <!-- Chief Engineer Information -->
        <h4>Chief Engineer</h4>
        <p>The Chief Engineer at Kumbhi Kasari Sahakari Sugar Factory is responsible for overseeing all engineering activities, ensuring the smooth functioning of the factory's machinery, and managing the technical aspects of the factory's operations.</p>
        <p>One of the key responsibilities of the Chief Engineer is to ensure that all machinery and equipment used in the production process, such as crushers, boilers, centrifuges, and evaporators, are well-maintained and operate efficiently. The Chief Engineer leads the maintenance department and ensures that any repairs or upgrades are carried out promptly to avoid production delays.</p>
        <p>The Chief Engineer also plays a critical role in optimizing the factory’s infrastructure. This includes working on projects to improve energy efficiency, reduce operational costs, and ensure the factory’s compliance with environmental regulations. They collaborate with the production team to ensure that the engineering systems are aligned with production needs.</p>
        <p>Additionally, the Chief Engineer is responsible for overseeing the installation and commissioning of new equipment, designing improvements to existing systems, and ensuring that safety standards are strictly followed. They are also involved in training technical staff and providing them with the skills required to perform their tasks efficiently and safely.</p>
        <p>The role also requires regular inspections and monitoring to identify potential engineering issues, conduct preventive maintenance, and implement corrective actions. As a leader, the Chief Engineer ensures the safety, reliability, and continuous improvement of all engineering operations within the factory.</p>
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
