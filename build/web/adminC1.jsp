<%-- 
    Document   : adminC1
    Created on : 2017-9-21, 21:27:03
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
            String opass=request.getParameter("opass");
            String npass=request.getParameter("npass");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
            try{
                PreparedStatement pstmt=null,pstmt1=null;
                String query=null,query1=null;
                query="select password from admin where id=?";
                pstmt=con.prepareStatement(query);
                pstmt.setString(1, uid);
                ResultSet rs=pstmt.executeQuery();
                while(rs.next())
                {
                    if(opass.equals(rs.getString("password")))
                    {
                        query1="update admin set password=? where id=?";
                        pstmt1=con.prepareStatement(query1);
                        pstmt1.setString(1, npass);
                        pstmt1.setString(2, uid);
                        pstmt1.executeUpdate();
                        response.sendRedirect("admin.jsp?tip1=yes");
                    }
                    else
                        response.sendRedirect("admin.jsp?error=yes");
                }
            }
            catch(Exception e){}
        %>
    </body>
</html>
