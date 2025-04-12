<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Table with 5 Table Headers</title>
    <link rel="stylesheet" href="villageview.css">
</head>
<body>  
    <%!
        double  totalarea = 0;
        %>
     <%   // Load Oracle driver
        Class.forName("oracle.jdbc.driver.OracleDriver");

        // Establish connection
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "vstar", "vaibhav");

        // Create statement and execute query
        Statement stmt = con.createStatement(); 
        ResultSet rs = stmt.executeQuery("SELECT * FROM regi where  VILLEGE_NAME= 'bahireshwar' ");
       // ResultSet rs1 = stmt.executeQuery("SELECT SUM(A_UNDER_SUGAR) as totalarea FROM regi ");

        // Start of table and header
    %>
    
    <div class="table-heading">View Area-wise</div>
    <table>
        <thead>
            <tr>
                <th>Regi Number</th>
                <th>Farmer Name</th>
                <th>Shuger Cane Type</th>
                <th>Village Name</th>
                <th>Area of Sugar Cane</th>
                <th>Area Sum</th>
                
            </tr>
        </thead>
        <tbody>
            <% 
                // Loop through the result set and display each row
                while (rs.next()) {
                    // Fetch data for each column (adjust indices based on your table structure)
                    int regiNumber = rs.getInt("REGI_NO"); // Use column name instead of index
                    String farmerName = rs.getString("FNAME");
                    String sugarCaneType = rs.getString("TYPE_SUGARCANE");
                    double areaOfSugarCane = rs.getDouble("A_UNDER_SUGAR");
                    double areaSum = rs.getDouble("A_UNDER_SUGAR");
                    String villageName = rs.getString("VILLEGE_NAME");
                
                    
            %>
            <tr>
                <td><%= regiNumber %></td>
                <td><%= farmerName %></td>
                <td><%= sugarCaneType %></td>
                 <td><%= villageName %></td>
                <td><%= areaOfSugarCane %></td>
                <td><%= areaSum %></td>
            </tr>
            
            
            <% } %>
             <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td> Sum of All list Area</td>
                <td><%= totalarea %></td>
            </tr>
        </tbody>
    </table>

    <% 
        // Close the resources to avoid memory leaks
        rs.close();
        stmt.close();
        con.close();
    %>

</body>
</html>
