<%-- 
    Document   : uidgo
    Created on : 2017-9-22, 21:11:16
    Author     : snooker
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String uid=request.getParameter("sid2");
            request.getRequestDispatcher("admin1.jsp?uuid="+uid).forward(request, response);
        %>
    </body>
</html>
