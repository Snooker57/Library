<%-- 
    Document   : borrowC
    Created on : 2017-9-25, 10:56:53
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
            String uid=(String)session.getAttribute("sUserID1");
            String bid=request.getParameter("tbid");
            String btitle=request.getParameter("tbtitle");
            String bprice=request.getParameter("tbprice");
            String bdate=request.getParameter("tbdate");
            String lrdate=request.getParameter("tlrdate");
//            System.out.println(uid+" "+bid+" "+btitle+" "+bprice+" "+bdate+" "+lrdate);
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library?allowMultiQueries=true","root","123456");
            try{
                PreparedStatement pstmt=null,pstmt1=null,pstmt2=null;
                String query=null,query1=null,query2=null;
                query="insert into record(user_id,book_id,book_title,book_price,borrow_date,last_return_date) values(?,?,?,?,?,?)";
                pstmt=con.prepareStatement(query);
                pstmt.setString(1, uid);
                pstmt.setString(2, bid);
                pstmt.setString(3, btitle);
                pstmt.setString(4, bprice);
                pstmt.setString(5, bdate);
                pstmt.setString(6, lrdate);
                pstmt.executeUpdate();

                query1="update book set book_amount=book_amount-1 where book_id=?";
                pstmt1=con.prepareStatement(query1);
                pstmt1.setString(1, bid);
                pstmt1.executeUpdate();
                
                response.sendRedirect("user1.jsp?tip=yes");
            }
            catch(Exception e){}
        %>
    </body>
</html>
