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
    <link rel="stylesheet" href="fworkk.css">
   
</head>


<div class="container">
    <% 
        String name = (String) session.getAttribute("job");
        if (name != null) {
    %>
    <!-- Welcome message -->
    <h1>Welcome <%= name %></h1>

    <!-- Links Section -->
    <div class="links">
            
            <a href="addStaff.html">Add Managing_Director</a>
            <a href="editestaff.jsp">Update Managing_Director</a>
            <a href="deletestaff.html">Delete Managing_Director</a>
            <a href="editestmd.jsp"> Edit Profile</a>
    </div>    <div class="links"> 
            <a href="addStaff.html">Add Work_Manager</a>
            <a href="editestaffwm.jsp">Update Work_Manager</a>
            <a href="deletestaff.html">Delete Work_Manager</a>
            <a href="logout.jsp">Log Out</a>
            
    </div>

  
    <!-- Chairman Information -->
    <div class="card mb-3">
        <center>  <h3>Chairman Chandradeep Shashikant Narake</h3></center>
        <p>The Chairman of Kumbhi Kasari Sahakari Sugar Factory is responsible for leading the board of directors and making high-level strategic decisions that steer the overall direction of the factory. The Chairman ensures the factory operates according to its long-term vision, and represents the company to key stakeholders, investors, and regulatory bodies. They play an essential role in setting policies, guiding the executive leadership team, and ensuring the factory's performance aligns with both financial and ethical standards.</p>
    </div>

    <!-- Vice Chairman Information -->
    <div class="card mb-3">
       <center> <h3>Vice Chairman Rahul Bajinath Khade</h3></center>
        <p>The Vice Chairman of the sugar factory assists the Chairman in their duties and acts as the second-in-command. The Vice Chairman often takes on leadership responsibilities in specific areas, such as overseeing daily operations, improving operational efficiencies, and ensuring the smooth functioning of the factory. In the absence of the Chairman, the Vice Chairman assumes the leadership role, ensuring continuity in strategic decision-making and operations management. Additionally, they are key in managing relationships with external partners, suppliers, and employees.</p>
    </div>
            <!-- Sugar Factory Info -->
   <div class="card">
 <center>  <h3>About the Kumbhi Kasari Sahakari Sugar Factory</h3></center>
    <p>A sugar factory is a place where raw sugarcane or sugar beets are processed to extract the sucrose (sugar). The process involves cutting the sugarcane or beets, extracting the juice, and then processing it to form refined sugar. The sugar production process is vital for supplying sugar to the food industry, and sugarcane farming and factory work provide jobs for millions of people globally.</p>
    <p>In a typical sugar factory, the sugar extraction is followed by a purification process, where impurities are removed from the juice. Then the juice is evaporated to concentrate it and finally crystallized into sugar crystals. The resulting sugar can be packaged and shipped to markets, or further processed into other forms like refined sugar, molasses, or ethanol.</p>
    <p>The sugar factory plays an essential role in the economy of many countries, particularly in regions where sugarcane and sugar beet farming is a key industry. The factories also have a significant impact on the environment, and many modern sugar mills are working to minimize their ecological footprint through sustainable farming practices and eco-friendly technologies.</p>

</div>

    <% 
        }
    %>
</div>

<!-- Bootstrap JS (Optional for interactive components) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4A7Yk5X7o8ocC7n2r+7zRSQ0XlHndg3aWpJ54p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQyl+6+S3ptX9X55K7aIFhWjxOV9fDZz4vRe5zjIZf5zPR2gg65xe7bcmDAw6lxB" crossorigin="anonymous"></script>


</html>
