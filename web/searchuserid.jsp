<%-- 
    Document   : searchuserid
    Created on : 2017-9-26, 11:27:07
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
            String id=request.getParameter("tid").trim();
            session.setAttribute("tid", id);
            response.sendRedirect("clerk1.jsp");
//            request.getRequestDispatcher("clerk1.jsp?tid1="+id).forward(request, response);
            
        %>
    </body>
</html>
