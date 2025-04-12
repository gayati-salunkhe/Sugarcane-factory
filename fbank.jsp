<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bank Account Information</title>
    <!-- Font Awesome for Icons -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="bankform.css">
</head>
<body>
     <%
       
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
      Statement stmt = con.createStatement(); 
      ResultSet rs = stmt.executeQuery("select * from regi where USERNAME ='"+session.getAttribute("username")+"' and"
                                                   + " PASSWORD = '"+session.getAttribute("password")+"' ");
       
     if (rs.next())
     {  %>     

    <div class="form-container">
        <h2><i class="fas fa-university"></i> Bank Account Information</h2>

        <form action="fbankadd.jsp" method="POST">
            
            <div class="d1">
                <label for="regino"><i class="fas fa-id-card"></i> Regi Number</label>
                <input type="text" name="regino" id="regino" readonly  value="<%=rs.getInt(1)%>">
            </div>

             <div class="d1">
                <label for="accountholder"><i class="fas fa-user"></i> Account Holder Name</label>
                <input type="text" name="accountholder" id="accountholder" value="<%=rs.getString(2)%> " >
            </div>
            
            <div class="d1">
                <label for="bankname"><i class="fas fa-building"></i> Bank Name</label>
                <input type="text" name="bankname" id="bankname" required>
            </div>

             <div class="d1">
                <label for="branch"><i class="fas fa-map-marker-alt"></i> Branch</label>
                <input type="text" name="branch" id="branch" required>
            </div>
            
            <div class="d1">
                <label for="accountno"><i class="fas fa-credit-card"></i> Account Number</label>
                <input type="text" name="accountno" id="accountno" required>
            </div>

            <div class="d1">
                <label for="ifscno"><i class="fas fa-code"></i> IFSC Code</label>
                <input type="text" name="ifscno" id="ifscno" required>
            </div>

            <button type="submit"><i class="fas fa-save"></i> Save Information</button>

        </form>
    </div>
<%}%>
</body>
</html>
