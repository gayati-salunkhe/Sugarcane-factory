<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Send Email</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">

    <style>
      body {
          background-image:linear-gradient(rgba(0,45,0,0.8),rgba(0,45,0,0.8)),url(usachapic.jpg); 
    background-size: cover;
   
    font-family: Arial, sans-serif;
}

.form-container {
    background-color: #fff;
    padding: 20px; /* Reduced padding */
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    animation: fadeIn 1s ease-in-out;
    max-width: 500px; /* Decreased width */
    margin: 0 auto; /* Center the form */
}

.form-title {
    font-size: 20px; /* Reduced font size */
    font-weight: bold;
    color: #007bff;
}

.btn-primary {
    transition: background-color 0.3s ease;
}

.btn-primary:hover {
    background-color: #0056b3;
}

@keyframes fadeIn {
    0% { opacity: 0; }
    100% { opacity: 1; }
}

    </style>
</head>
<body>

<div class="container mt-5">
    <div class="text-center mb-4">
        <!-- Toggle Buttons -->
        <button class="btn btn-outline-primary me-2" id="toggleForm1">Recipient Form</button>
        <button class="btn btn-outline-primary" id="toggleForm2">Village Form</button>
    </div>

    <!-- First Form -->
    <div id="form1" class="form-container">
        <h2 class="form-title text-center">Send Email</h2>
        <form action="farmersendmail.jsp" method="post">
            <div class="mb-3">
                <label for="recipient" class="form-label">Send Mail TO:</label>
                <select class="form-select" id="recipient" name="recipient" required>
                    <option value="" disabled selected>Select Recipient</option>
                    <option value="Chairman">Chairman</option>
                    <option value="Managing_Director"> Managing Director (MD)</option>
                    <option value="All_HOD">All HOD</option>
                    <option value="Upkrushiadhikari">Upkrushiadhikari</option>
                    <option value="Upkrushiadhikari_And_ChitBoy">Upkrushiadhikari And ChitBoy</option>
                    <option value="Farmers">Farmers</option>
                    <option value="To_Village">To Village</option>
                    <option value="All">All</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="subject" class="form-label">Subject:</label>
                <input type="text" class="form-control" id="subject" name="subject" required>
            </div>
            <div class="mb-3">
                <label for="message" class="form-label"><i class="fas fa-comment-dots"></i> Message:</label>
                <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary w-100"><i class="fas fa-paper-plane"></i> Send Email</button>
        </form>
    </div>

    <!-- Second Form -->
    <div id="form2" class="form-container d-none">
        <h2 class="form-title text-center">Send Email</h2>
        <form action="farmersendmail.jsp" method="post">
            <div class="mb-3">
                <label for="village_name" class="form-label">Send Mail TO Village:</label>
                <select class="form-select" id="village_name" name="village_name" required>
                    <option value="" disabled selected>Select a Village</option>
                    <option value="bahireshwar">Bahireshwar</option>
                    <option value="Hupari">Hupari</option>
                    <option value="Kagal">Kagal</option>
                    <option value="Gadhinglaj">Gadhinglaj</option>
                    <option value="Panhala">Panhala</option>
                    <option value="Shirol">Shirol</option>
                    <option value="Halkarni">Halkarni</option>
                    <option value="Chandgad">Chandgad</option>
                    <option value="Radhanagari">Radhanagari</option>
                    <option value="Gaganbawada">Gaganbawada</option>
                    <option value="Ajra">Ajra</option>
                    <option value="Bhudargad">Bhudargad</option>
                    <option value="Hatkanangale">Hatkanangale</option>
                    <option value="Malkapur">Malkapur</option>
                    <option value="Kasaba Sangaon">Kasaba Sangaon</option>
                    <option value="Shiroli">Shiroli</option>
                    <option value="Kuditre">Kuditre</option>
                    <option value="Vadgaon">Vadgaon</option>
                    <option value="Uchgaon">Uchgaon</option>
                    <option value="Yelgaon">Yelgaon</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="subject" class="form-label">Subject:</label>
                <input type="text" class="form-control" id="subject" name="subject" required>
            </div>
            <div class="mb-3">
                <label for="message" class="form-label"><i class="fas fa-comment-dots"></i> Message:</label>
                <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary w-100"><i class="fas fa-paper-plane"></i> Send Email</button>
        </form>
    </div>
</div>

<!-- Bootstrap JS and Custom Toggle Script -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
<script>
    const toggleForm1 = document.getElementById('toggleForm1');
    const toggleForm2 = document.getElementById('toggleForm2');
    const form1 = document.getElementById('form1');
    const form2 = document.getElementById('form2');

    toggleForm1.addEventListener('click', () => {
        form1.classList.remove('d-none');
        form2.classList.add('d-none');
    });

    toggleForm2.addEventListener('click', () => {
        form2.classList.remove('d-none');
        form1.classList.add('d-none');
    });
</script>

</body>
</html>