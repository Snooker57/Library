<%-- 
    Document   : admin1C2
    Created on : 2017-9-23, 13:13:00
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
            String uid=request.getParameter("tid2");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
            try{
                PreparedStatement pstmt=null;
                String query=null;
                query="delete from user where user_id=?";
                pstmt=con.prepareStatement(query);
                pstmt.setString(1, uid);
                pstmt.executeUpdate();
            }
            catch(Exception e){}
            response.sendRedirect("admin1.jsp?tip2=yes");
        %>
    </body>
</html>
