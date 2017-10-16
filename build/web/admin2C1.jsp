<%-- 
    Document   : admin2C1
    Created on : 2017-9-24, 13:22:49
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
            String price=request.getParameter("tprice1");
            String amount=request.getParameter("tamount1");
//            System.out.println(id+price+amount);
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
            try{
                PreparedStatement pstmt1=null;
                String query1=null;
                query1="update book set book_price=?,book_amount=? where book_id=?";
                pstmt1=con.prepareStatement(query1);
                pstmt1.setString(1, price);
                pstmt1.setString(2, amount);
                pstmt1.setString(3, id);
                pstmt1.executeUpdate();
                response.sendRedirect("admin2.jsp?tip1=yes");
            }
            catch(Exception e){}
        %>
    </body>
</html>
