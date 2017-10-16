<%-- 
    Document   : returnC
    Created on : 2017-9-26, 9:09:28
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
            String num=request.getParameter("num");
            String bid=request.getParameter("tbid");
            String rdate=request.getParameter("trdate");
//            System.out.println(uid+" "+bid+" "+btitle+" "+bprice+" "+bdate+" "+lrdate);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library?allowMultiQueries=true","root","123456");
            try{
                PreparedStatement pstmt=null,pstmt1=null,pstmt2=null;
                String query=null,query1=null,query2=null;
                query="update record set return_date=? where num=?";
                pstmt=con.prepareStatement(query);
                pstmt.setString(1, rdate);
                pstmt.setString(2, num);
                pstmt.executeUpdate();
                
                query1="update book set book_amount=book_amount+1 where book_id=?";
                pstmt1=con.prepareStatement(query1);
                pstmt1.setString(1, bid);
                pstmt1.executeUpdate();
                response.sendRedirect("clerk1.jsp?tip=yes");
            }
            catch(Exception e){}
        %>
    </body>
</html>
