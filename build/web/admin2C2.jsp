<%-- 
    Document   : admin2C2
    Created on : 2017-9-24, 14:01:25
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
                query="delete from book where book_id=?";
                pstmt=con.prepareStatement(query);
                pstmt.setString(1, uid);
                pstmt.executeUpdate();
            }
            catch(Exception e){}
            response.sendRedirect("admin2.jsp?tip2=yes");
        %>
    </body>
</html>
