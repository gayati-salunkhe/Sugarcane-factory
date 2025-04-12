<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Machine Registration Form</title>
    <link rel="stylesheet" href="harvesting.css">
    <!-- Font Awesome CDN -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
</head>
<body>

    <div class="container">
        <h1>Machine Registration Form</h1>
        <form action="add_harvesting.jsp" method="POST">
            <div class="row">
                <div class="column">
                    <label for="cluster_id">
                        <i class="fas fa-cogs"></i> Cluster ID
                    </label>
                    <input type="text" id="cluster_id" name="cluster_id"  selectted value="<%=session.getAttribute("id_cluster")%>" required>
                </div>
                <div class="column">
                    <label for="machine_number">
                        <i class="fas fa-microchip"></i> Machine Number
                    </label>
                    <input type="text" id="machine_number" name="machine_number" required>
                </div>
            </div>
            
            <div class="row">
                <div class="column">
                    <label for="owner_name">
                        <i class="fas fa-user"></i> Owner Name
                    </label>
                    <input type="text" id="owner_name" name="owner_name" required>
                </div>
                <div class="column">
                    <label for="owner_mob_no">
                        <i class="fas fa-phone-alt"></i> Owner Mobile Number
                    </label>
                    <input type="number" id="owner_mob_no" name="owner_mob_no" required>
                </div>
            </div>

            <div class="row">
                <div class="column">
                    <label for="driver_name">
                        <i class="fas fa-user-tie"></i> Driver Name
                    </label>
                    <input type="text" id="driver_name" name="driver_name" required>
                </div>
                <div class="column">
                    <label for="driver_mob_no">
                        <i class="fas fa-phone-alt"></i> Driver Mobile Number
                    </label>
                    <input type="number" id="driver_mob_no" name="driver_mob_no" required>
                </div>
            </div>

            <div class="row">
                <div class="column">
                    <label for="number_machine">
                        <i class="fas fa-cogs"></i> Number of Machines
                    </label>
                    <input type="number" id="number_machine" name="number_machine" required>
                </div>
            </div>

            <button type="submit">Add Tractors</button>
        </form>
    </div>

</body>
</html>
