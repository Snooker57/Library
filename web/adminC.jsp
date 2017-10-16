<%-- 
    Document   : adminC
    Created on : 2017-9-21, 18:36:17
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
            String uid=session.getAttribute("sUserID").toString();
            String name=request.getParameter("tname");
            String email=request.getParameter("temail");
            String phone=request.getParameter("tphone");
            String gender=request.getParameter("r1");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
            try{
                PreparedStatement pstmt=null;
                String query=null;
                query="update admin set name=?,email=?,phone=?,gender=? where id=?";
                pstmt=con.prepareStatement(query);
                pstmt.setString(1, name);
                pstmt.setString(2, email);
                pstmt.setString(3, phone);
                pstmt.setString(4, gender);
                pstmt.setString(5, uid);
                pstmt.executeUpdate();
            }
            catch(Exception e){}
            response.sendRedirect("admin.jsp?tip=yes");
        %>
    </body>
</html>
