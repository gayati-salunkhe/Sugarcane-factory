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
            body{
                 background-image:linear-gradient(rgba(0,45,0,0.8),rgba(0,45,0,0.8)),url(usachapic.jpg); 
             background-size: cover; 
            }
            table{ 
            height: 200px;
            width: 100%;
            border: 2px double black;
            border-radius: 5px;
            box-shadow: 0  10px 20px rgba(0, 0, 0, 0.5);
            background-color: #ffffff;
            }
            th,td{
                border: 1px solid black;
              border-radius: 5px; 
              font-size: 20px;
            }
            input{
                height: 25PX;
                width: 180PX;
                background-color: lightcyan;
                color: black;
                text-align: center;
                font-size: 20px;
                font-family: 200;
                border-color: darkorchid;
                border-bottom-left-radius: 10px;
                border-top-right-radius: 10px;
             
              
            }
            button{
                width: 70px;
                height: 30px;
                background-color: limegreen ;
                text-align: center;
                font-size: 20px;
                border-radius: 5px;
                color: black;
              
            }
            button:hover{
                background-color: lightskyblue;
                
            }
            h1{
                color: #fff;
            }
        </style>   
       
        
    </head>
    <body>
        <%
    
      
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select STAFF_ID, CLUSTER_ID ,FNAME,LNAME,P_ADDRESS from chitboy ");


    
     %>  
    <center>   
        <h1>All chitboy List Under Your Work</h1>
        <form action="fnaleditechitboy.jsp">   
        <table>
         <tr><th><center>Staff-Id</th><th><center>Cluster_Id</th><th><center>First Name</th>
                 <th><center>Last Name</th><th><center>Office location</th><th><center>Click</th>
        </tr>
     <%   
    
      while(rs.next())
      {
     %>            
          
         <tr>   <td><center><input  readonly value="<%=rs.getInt(1)%>"></td>
                <td><center><input  readonly value="<%=rs.getInt(2)%>"></td> 
                <td><center><input  readonly value="<%=rs.getString(3)%>"></td>     
                <td><center><input  readonly value="<%=rs.getString(4)%>"></td>  
                <td><center><input  readonly value="<%=rs.getString(5)%>"></center></td>     
                <td><center><button   type="submit"  name="id" value="<%=rs.getInt(1)%>">View</button></td></center>
        </tr>
            
          <%}%>  
          
        </table>   
          </center>
          </form>
    </body>
</html>
 