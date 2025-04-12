<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Department Selection Form</title>
    <link rel="stylesheet" href="updateHOD.css">
   
</head>
<body>
    <div class="container">
        <h2>Harvesting Information  </h2>
        <form action="clusterharvesting.jsp" method="post">
            <label for="department">Select Cluster_id TO Add Harvesting Team</label>
            <select id="department" name="cluster_id">
                <option value="----" selected>Select ID</option>
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>  
                <option value="40">40</option>  
            </select><br><br>
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
