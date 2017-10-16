<%-- 
    Document   : bidgo1
    Created on : 2017-9-24, 14:18:52
    Author     : snooker
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
            request.setCharacterEncoding("UTF-8");
            String uid=request.getParameter("sid3");
            request.getRequestDispatcher("admin2.jsp?uuid1="+uid).forward(request, response);
        %>
    </body>
</html>
