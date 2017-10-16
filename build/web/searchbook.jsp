<%-- 
    Document   : searchbook
    Created on : 2017-9-26, 20:08:21
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
            String title=request.getParameter("ttitle").trim();
            String kword=request.getParameter("kw");
            session.setAttribute("btitle", title);
//            session.setAttribute("kwords",kword);
            response.sendRedirect("user1.jsp?kwords="+kword);
//            request.getRequestDispatcher("user1.jsp?kw1="+kword+"&&content="+title).forward(request, response);
        %>
    </body>
</html>
