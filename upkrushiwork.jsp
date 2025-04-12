<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Krushi Adhikari Information</title>
    
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
        <a href="editestupkrushi.jsp">Edit Profile</a>
        <a href="sbank.jsp">Add Bank Details</a>
        <a href="addchitboy.jsp">Add Chitboy</a>
        <a href="updatechitboy.jsp">Update Chitboy</a>
        <a href="farmerrequest.jsp">View Nondi </a>
        <a href="logout.jsp">Log Out</a>
        <a href="index.html">Home Page</a>
    </div>

    <!-- Krushi Adhikari Info -->
    <div class="card">
       
        <!-- Up Krushi Adhikari Information -->
        <h4>Up Krushi Adhikari</h4>
        <p>The Up Krushi Adhikari (Assistant Agricultural Officer) plays a critical role in supporting agricultural development and promoting the welfare of farmers within the region. They are responsible for implementing government policies, agricultural programs, and providing technical support to enhance agricultural productivity and sustainability.</p>
        <p>This position involves working closely with farmers to advise them on best practices in crop management, pest control, soil health, irrigation, and the use of agricultural inputs. The Up Krushi Adhikari conducts field visits to monitor crop conditions, identifies challenges faced by farmers, and helps them with solutions to improve crop yields.</p>
        <p>Key responsibilities include conducting training sessions and workshops for farmers, educating them on modern farming techniques, climate resilience, and sustainable agricultural practices. They also assist in organizing farmer groups and cooperatives, helping them access government schemes, subsidies, and financial assistance for agricultural development.</p>
        <p>The Up Krushi Adhikari works with agricultural extension officers to ensure that the farmers receive timely updates on weather conditions, crop diseases, and market trends. They help facilitate access to quality seeds, fertilizers, and other essential inputs, ensuring that farmers are equipped to succeed.</p>
        <p>Additionally, they play a key role in data collection and reporting, including monitoring agricultural productivity, land usage, and the effectiveness of government schemes. The Up Krushi Adhikari is also responsible for collaborating with local agricultural research institutions and government departments to implement new agricultural innovations and improve existing programs.</p>
        <p>Furthermore, the Up Krushi Adhikari works to ensure that farmers are aware of and comply with agricultural regulations, safety standards, and sustainable land management practices. They also advocate for farmer welfare by addressing issues related to rural infrastructure, market access, and environmental sustainability.</p>
        <p>Ultimately, the Up Krushi Adhikari serves as a bridge between the government and farming communities, ensuring that farmers are empowered with the knowledge and resources needed to thrive in a constantly evolving agricultural landscape.</p>
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
