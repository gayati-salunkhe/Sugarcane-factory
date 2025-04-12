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
        <a href="sbank.jsp">Add Bank Details</a>
        <a href="#.html">Add Gards</a>
        <a href="#.html">Update Gards</a>
        <a href="#.html">Remove Gards </a>
        <a href="logout.jsp">Log Out</a>
        <a href="index.html">Home Page</a>
    </div>

    <!-- Sugar Factory Info -->
    <div class="card">
       
        <!-- Security Manager Information -->
        <h4>Security Manager</h4>
        <p>The Security Manager at Kumbhi Kasari Sahakari Sugar Factory is responsible for ensuring the safety and security of the factory, its employees, assets, and premises. This role is crucial to maintaining a safe working environment and protecting the factory from external threats, theft, and any security-related issues that could disrupt factory operations.</p>
        <p>The Security Manager is tasked with developing and implementing security policies, procedures, and protocols to safeguard the factory's infrastructure, personnel, and intellectual property. They oversee the security team, ensuring that security personnel are well-trained, equipped, and deployed effectively across the factory premises.</p>
        <p>Key responsibilities include managing the surveillance systems, such as CCTV cameras, and ensuring that all security equipment is functional and up to date. The Security Manager also coordinates with local law enforcement and emergency response teams to handle any crises or incidents that may arise, such as break-ins, accidents, or fire outbreaks.</p>
        <p>Additionally, the Security Manager ensures that all factory employees adhere to the company's security policies, including the proper handling of sensitive information, access controls, and safe working practices. They conduct regular security audits and inspections to identify vulnerabilities in the system and take preventive measures to address them.</p>
        <p>The Security Manager also plays a role in managing security training programs for staff, educating them on the importance of workplace safety, emergency procedures, and how to respond to potential security threats. Furthermore, they handle the coordination and management of security for transportation of raw materials and finished products to ensure safe deliveries and prevent theft during transit.</p>
        <p>Another aspect of the Security Manager's role is to keep records of all security-related incidents, accidents, and investigations. They generate reports for senior management, providing insights into potential security risks and the effectiveness of the current security measures in place.</p>
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
