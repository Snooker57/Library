<%-- 
    Document   : admin1C
    Created on : 2017-9-22, 9:18:03
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
            String uclass=request.getParameter("tclass");
            String phone=request.getParameter("tphone");
            String role=request.getParameter("r1");
            String depart=request.getParameter("depart");  
//            System.out.println(id+pass+name+uclass+phone+role+depart);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
//            System.out.println("....");
            try{
                PreparedStatement pstmt=null,pstmt1=null;
                String query=null,query1=null;
                query="select * from user where user_id=?";
                pstmt=con.prepareStatement(query);
                pstmt.setString(1, id);
                ResultSet rs=pstmt.executeQuery();
                if(rs.next())
                {
                    response.sendRedirect("admin1.jsp?same=yes");
                }
                else
                {
                    query1="insert into user values(?,?,?,?,?,?,?)";
                    pstmt1=con.prepareStatement(query1);
                    pstmt1.setString(1, id);
                    pstmt1.setString(2, pass);
                    pstmt1.setString(3, name);
                    pstmt1.setString(4, uclass);
                    pstmt1.setString(5, phone);
                    pstmt1.setString(6, role);
                    pstmt1.setString(7, depart);
                    pstmt1.executeUpdate();
                    response.sendRedirect("admin1.jsp?tip=yes");
                }
            }
            catch(Exception e){}
        %>
    </body>
</html>
