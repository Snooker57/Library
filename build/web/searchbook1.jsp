<%-- 
    Document   : searchbook1
    Created on : 2017-9-26, 19:49:50
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
            String kword=request.getParameter("kw");
            String content=request.getParameter("tcontent").trim();
            request.getRequestDispatcher("user2.jsp?kw1="+kword+"&&content="+content).forward(request, response);
        %>
    </body>
</html>
