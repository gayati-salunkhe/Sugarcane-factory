<%-- 
    Document   : add_harvesting
    Created on : 14 Jan, 2025, 9:41:40 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="tractor.css">
         <!-- Add Font Awesome CDN to load icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

    </head>
    <body>
        <%
            String cid = request.getParameter("cluster_id");
            int cluster_id = Integer.parseInt(cid);
            
            String machine_no = request.getParameter("machine_number");
            session.setAttribute("machine_no",machine_no);
             
            String oname = request.getParameter("owner_name");
            session.setAttribute("oname",oname);
            
            String omno = request.getParameter("owner_mob_no");
            long Omob_no = Long.parseLong(omno);
            session.setAttribute("Omob_no",Omob_no);
            
             String dname = request.getParameter("driver_name");
            session.setAttribute("dname",dname);
             
            String dmno = request.getParameter("driver_mob_no");
            long dmob_no = Long.parseLong(dmno);
            session.setAttribute("dmob_no",dmob_no);
            
            String no_mc = request.getParameter("number_machine");
            int number_mc = Integer.parseInt(no_mc);
            session.setAttribute("number_mc",number_mc);
            

      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","vstar","vaibhav");
      Statement stmt = con.createStatement(); 
      int result = stmt.executeUpdate("insert into USMACHINE values (MACHINE_ID.nextVal ,"+cluster_id+",'"+machine_no+"',"
                                      + "'"+oname+"',"+Omob_no+",'"+dname+"',"+dmob_no+","+number_mc+" )");
      
      
      ResultSet rs = stmt.executeQuery("select * from USMACHINE ");
       
      if (rs.next()){
            
        %>
        
             
    <div class="form-container">
        <h2>Tractor Registration Form</h2>
        <form action="add_tractor.jsp" method="POST">

            <div class="form-row">
                <div class="form-group">
                    <label for="machine_id">Machine ID</label>
                    <input type="number" value="<%=rs.getInt(1)%>" name="machine_id" selected required>
                    <i class="fas fa-cogs"></i>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="cluster_id">Cluster ID</label>
                    <input type="number" value="<%=rs.getInt(2)%>" name="cluster_id" selected required>
                    <i class="fas fa-sitemap"></i>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="tractor_no">Tractor No</label>
                    <input type="text" id="tractor_no" name="tractor_no" required>
                    <i class="fas fa-truck"></i>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="owner_name">Owner Name</label>
                    <input type="text" id="owner_name" name="owner_name" required>
                    <i class="fas fa-user"></i>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="owner_mob_no">Owner Mobile No</label>
                    <input type="tel" id="owner_mob_no" name="owner_mob_no" pattern="[0-9]{10}" required>
                    <i class="fas fa-phone-alt"></i>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="driver_name">Driver Name</label>
                    <input type="text" id="driver_name" name="driver_name" required>
                    <i class="fas fa-user-tie"></i>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="driver_mob_no">Driver Mobile No</label>
                    <input type="tel" id="driver_mob_no" name="driver_mob_no" pattern="[0-9]{10}" required>
                    <i class="fas fa-phone-alt"></i>
                </div>
            </div>

            <div class="form-row">
                <div class="form-group">
                    <label for="total_traly">Total Trolley</label>
                    <input type="number" id="total_traly" name="total_trollye" required>
                    <i class="fas fa-cogs"></i>
                </div>
            </div>

            <button type="submit" class="submit-btn">ADD</button>

        </form>
    </div>
    <!-- Font Awesome Icons (Add your icons) -->
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <%
        }
%>
    </body>
</html>
