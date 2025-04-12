<%-- 
    Document   : updatechitboy
    Created on : 8 Jan, 2025, 6:18:18 PM
    Author     : HP
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        
    body {
        background-image: linear-gradient(rgba(0, 45, 0, 0.8), rgba(0, 45, 0, 0.8)), url('usachapic.jpg');
        background-size: cover;
        margin: 0;
        font-family: Arial, sans-serif;
    }

    /* Title Styling */
    h1 {
        color: white;
        text-align: center;
        font-size: 36px;
        padding: 20px;
        margin-top: 50px;
        text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
    }

    /* Table Styling */
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        border-radius: 10px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
        background-color: #ffffff;
    }

    th, td {
        padding: 12px;
        text-align: center;
        font-size: 18px;
        border: 1px solid #ddd;
        border-radius: 8px;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    td {
        background-color: #f9f9f9;
    }

    /* Form Input Styling */
    input {
        height: 30px;
        width: 150px;
        background-color: #f1f1f1;
        color: #333;
        text-align: center;
        font-size: 16px;
        border: 1px solid #ddd;
        border-radius: 5px;
    }

    input:focus {
        outline: none;
        border-color: #4CAF50;
        background-color: #fff;
    }

    /* Button Styling */
    button {
        width: 90px;
        height: 40px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #dbdbdb;
        color: black;
    }

    /* Centering Form and Table */
    center {
        display: block;
        text-align: center;
    }

</style>

      
       
        
    </head>
    <body>
        <%
    
      
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
      Statement stmt = con.createStatement(); 
      ResultSet rs = stmt.executeQuery("select * from regi");
    
     %>  
    <center>   
        <h1> All Farmer Nond List </h1>
        <form action="viewfarmerrequest.jsp">   
        <table>
         <tr><th><center>Regi_number</th><th><center>First Name</th><th><center>Mirst Name</th>
                 <th><center>Last Name</th><th><center>Gat_number</th><th><center>Show</th>
        </tr>
     <%   
    
      while(rs.next())
      {
     %>            
          
         <tr>   <td><center><input  readonly value="<%=rs.getInt(1)%>"></td>
                <td><center><input  readonly value="<%=rs.getString(2)%>"></td> 
                <td><center><input  readonly value="<%=rs.getString(3)%>"></td>     
                <td><center><input  readonly value="<%=rs.getString(4)%>"></td>  
                <td><center><input  readonly value="<%=rs.getInt("GATNO")%>"></center></td>     
                <td><center><button   type="submit"  name="id" value="<%=rs.getInt(1)%>">View</button></td></center>
        </tr>
            
          <%}%>  
          
        </table>   
          </center>
          </form>
    </body>
</html>
 