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
    <h1>Welcome <%= name %> </h1>

    <!-- Links Section -->
    <div class="links">
        <a href="editestmd.jsp">Edit Profile</a>
        <a href="sbank.jsp">Add Bank Details</a>
        <a href="#.html">Create Meeting</a>
        <a href="#.html">Add Staff</a>
        <a href="#.html">Delete Staff</a>
        <a href="logout.jsp">Log Out</a>
        <a href="index.html">Home Page</a>
    </div>

    <!-- Sugar Factory Info -->
    <div class="card">
       
        <!-- HR Manager Information -->
        <h4>HR Manager</h4>
        <p>The HR Manager at Kumbhi Kasari Sahakari Sugar Factory plays a critical role in managing the human resources of the organization. Their primary responsibility is to ensure that the factory is staffed with qualified personnel, and that the workforce is managed efficiently and effectively to meet the factory's production goals.</p>
        <p>The HR Manager is involved in recruiting and hiring staff for various departments, including production, engineering, quality control, and administrative support. They ensure that the factory has the right number of employees, with the necessary skills, to carry out operations smoothly.</p>
        <p>In addition to recruitment, the HR Manager is responsible for managing employee benefits, payroll, and compensation packages. They work to create a positive work environment, handle employee relations, resolve conflicts, and ensure compliance with labor laws and regulations.</p>
        <p>The HR Manager also oversees training and development programs to help employees improve their skills and knowledge, ensuring that the workforce is capable of meeting the evolving needs of the factory. They are key to maintaining high morale among employees and ensuring a safe, inclusive, and productive work culture within the factory.</p>
        <p>Moreover, the HR Manager plays an essential role in performance management, evaluating employees' performance, and making recommendations for promotions or improvements. They also ensure that the factory adheres to health and safety standards and provides a secure working environment for all employees.</p>
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
