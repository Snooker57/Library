<%-- 
    Document   : fpasswC
    Created on : 2017-9-21, 9:51:13
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
            String uid=request.getParameter("tuid");
            String npass=request.getParameter("npass");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
            try{
                PreparedStatement pstmt=null,pstmt1=null;
                String query=null,query1=null;
                query="select * from clerk where clerk_id=?";
                pstmt=con.prepareStatement(query);
                pstmt.setString(1, uid);
                ResultSet rs=pstmt.executeQuery();
                if(rs.next())
                {
                    query1="update clerk set clerk_pass=? where clerk_id=?";
                    pstmt1=con.prepareStatement(query1);
                    pstmt1.setString(1,npass);
                    pstmt1.setString(2,uid);
                    pstmt1.executeUpdate();
                    response.sendRedirect("login.jsp?tip2=yes");
                }
                else
                    response.sendRedirect("fpassword2.jsp?error=yes");
            }
            catch(Exception e){}
        %>
    </body>
</html>
