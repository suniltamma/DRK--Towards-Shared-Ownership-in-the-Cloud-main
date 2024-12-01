<%-- 
    Document   : Logout
    Created on : 5 Feb, 2019, 10:41:08 AM
    Author     : Ch.Sravani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% session.invalidate();
        response.sendRedirect("index.html");
        %>
    </body>
</html>
