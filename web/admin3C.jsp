<%-- 
    Document   : admin3C
    Created on : 2017-9-23, 17:13:28
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
            String id=request.getParameter("tid");
            String pass=request.getParameter("tpass");
            String name=request.getParameter("tname");
            String phone=request.getParameter("tphone");
            String gender=request.getParameter("r1");
            String address=request.getParameter("taddress");  
//            System.out.println(id+pass+name+phone+gender+address);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
            try{
                PreparedStatement pstmt=null,pstmt1=null;
                String query=null,query1=null;
                query="select * from clerk where clerk_id=?";
                pstmt=con.prepareStatement(query);
                pstmt.setString(1, id);
                ResultSet rs=pstmt.executeQuery();
                if(rs.next())
                {
                    response.sendRedirect("admin3.jsp?same=yes");
                }
                else
                {
                    query1="insert into clerk values(?,?,?,?,?,?)";
                    pstmt1=con.prepareStatement(query1);
                    pstmt1.setString(1, id);
                    pstmt1.setString(2, pass);
                    pstmt1.setString(3, name);
                    pstmt1.setString(4, phone);
                    pstmt1.setString(5, gender);
                    pstmt1.setString(6, address);
                    pstmt1.executeUpdate();
                    response.sendRedirect("admin3.jsp?tip=yes");
                }
            }
            catch(Exception e){}
        %>
    </body>
</html>
