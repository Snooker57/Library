<%-- 
    Document   : cidgo
    Created on : 2017-9-23, 21:05:10
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
            String uid=request.getParameter("sid2");
            request.getRequestDispatcher("admin3.jsp?uuid="+uid).forward(request, response);
        %>
    </body>
</html>
