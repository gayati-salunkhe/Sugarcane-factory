<%-- 
    Document   : logout
    Created on : 5 Jan, 2025, 10:51:23 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        session.setAttribute("userid", null);
        session.invalidate();
        response.sendRedirect("index.html");
        %>
    </body>
</html>
