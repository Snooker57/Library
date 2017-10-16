<%-- 
    Document   : admin2C
    Created on : 2017-9-23, 23:02:59
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
            String title=request.getParameter("ttitle");
            String author=request.getParameter("tauthor");
            String price=request.getParameter("tprice");
            String publisher=request.getParameter("tpub");
            String type=request.getParameter("ttype");
            String amount=request.getParameter("tamount");  
            String pbdate=request.getParameter("tpbdate");
            String picture=request.getParameter("tpicture");
            
//            System.out.println(id+" "+title+" "+author+" "+price+" "+publisher+" "+type+" "+amount+" "+pbdate+" "+picture);

            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
//            System.out.println("....");
            try{
                PreparedStatement pstmt=null,pstmt1=null;
                String query=null,query1=null;
                query="select * from book where book_id=?";
                pstmt=con.prepareStatement(query);
                pstmt.setString(1, id);
                ResultSet rs=pstmt.executeQuery();
                if(rs.next())
                {
                    response.sendRedirect("admin2.jsp?same=yes");
                }
                else
                {
                    query1="insert into book(book_id,book_title,book_author,book_price,book_publisher,book_type,book_amount,book_p_date,book_picture)values(?,?,?,?,?,?,?,?,?)";
                    pstmt1=con.prepareStatement(query1);
                    pstmt1.setString(1, id);
                    pstmt1.setString(2, title);
                    pstmt1.setString(3, author);
                    pstmt1.setString(4, price);
                    pstmt1.setString(5, publisher);
                    pstmt1.setString(6, type);
                    pstmt1.setString(7, amount);
                    pstmt1.setString(8, pbdate);
                    pstmt1.setString(9, picture);
                    pstmt1.executeUpdate();
                    response.sendRedirect("admin2.jsp?tip=yes");
                }
            }
            catch(Exception e){}
        %>
    </body>
</html>
