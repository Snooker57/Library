<%-- 
    Document   : admin1C1
    Created on : 2017-9-22, 16:22:31
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
            String uclass=request.getParameter("tclass1");
            String phone=request.getParameter("tphone1");
            String role=request.getParameter("r2");
            String depart=request.getParameter("depart1");  
//            System.out.println(id+pass+name+uclass+phone+role+depart);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
            try{
                PreparedStatement pstmt1=null;
                String query1=null;
                query1="update user set user_password=?,user_name=?,user_class=?,user_phone=?,user_role=?,user_depart=? where user_id=?";
                pstmt1=con.prepareStatement(query1);
                pstmt1.setString(1, pass);
                pstmt1.setString(2, name);
                pstmt1.setString(3, uclass);
                pstmt1.setString(4, phone);
                pstmt1.setString(5, role);
                pstmt1.setString(6, depart);
                pstmt1.setString(7, id);
                pstmt1.executeUpdate();
                response.sendRedirect("admin1.jsp?tip1=yes");
            }
            catch(Exception e){}
        %>
    </body>
</html>
