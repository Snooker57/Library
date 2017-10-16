<%-- 
    Document   : admin3C1
    Created on : 2017-9-23, 17:38:06
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
            String id=request.getParameter("sid1");
            String pass=request.getParameter("tpass1");
            String name=request.getParameter("tname1");
            String phone=request.getParameter("tphone1");
            String address=request.getParameter("taddress1");  
//            System.out.println(id+pass+name+phone+address);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
            try{
                PreparedStatement pstmt1=null;
                String query1=null;
                query1="update clerk set clerk_pass=?,clerk_name=?,clerk_phone=?,clerk_address=? where clerk_id=?";
                pstmt1=con.prepareStatement(query1);
                pstmt1.setString(1, pass);
                pstmt1.setString(2, name);
                pstmt1.setString(3, phone);
                pstmt1.setString(4, address);
                pstmt1.setString(5, id);
                pstmt1.executeUpdate();
                response.sendRedirect("admin3.jsp?tip1=yes");
            }
            catch(Exception e){}
        %>
    </body>
</html>
