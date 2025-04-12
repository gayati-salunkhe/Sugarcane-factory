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
        <a href="#.html">Salary</a>
        <a href="#.html">View Staff Act</a>
        <a href="#.html">financial reports</a>
        <a href="logout.jsp">Log Out</a>
        <a href="index.html">Home Page</a>
    </div>

    <!-- Sugar Factory Info -->
    <div class="card">
       
        <!-- Account Chief (Accountant Chief) Information -->
        <h4>Account Chief (Accountant Chief)</h4>
        <p>The Account Chief at Kumbhi Kasari Sahakari Sugar Factory is responsible for overseeing all financial and accounting operations within the factory. This includes managing the factory's financial records, preparing financial statements, and ensuring compliance with tax laws and regulations. The Account Chief plays a crucial role in budgeting, financial planning, and reporting, helping the factory maintain its financial health and stability.</p>
        <p>Key responsibilities include overseeing daily financial transactions, maintaining accurate records of income and expenses, and preparing monthly, quarterly, and annual financial reports. The Account Chief ensures that all financial activities are conducted in accordance with established accounting principles and factory policies. They also work closely with other departments to develop budgets, monitor financial performance, and provide financial insights that help in decision-making.</p>
        <p>Another key role of the Account Chief is to manage the factory's payroll system, ensuring that employees are paid accurately and on time. They also handle tax calculations, deductions, and ensure the timely filing of tax returns, including compliance with local, state, and federal regulations.</p>
        <p>The Account Chief is also responsible for managing the factory’s internal controls to prevent financial mismanagement and fraud. This includes ensuring proper procedures for approving expenses, auditing financial records, and overseeing the work of accounting staff. They work closely with external auditors to ensure that the factory's financial reports are accurate and meet all legal and regulatory standards.</p>
        <p>In addition, the Account Chief may be involved in strategic financial planning, providing financial projections and analysis to support the factory’s growth and development. They play a key role in identifying cost-saving opportunities, managing cash flow, and helping the factory navigate financial challenges to ensure long-term profitability.</p>
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
