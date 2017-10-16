<%-- 
    Document   : loginC
    Created on : 2017-9-20, 14:53:47
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
            int flag=0;
            request.setCharacterEncoding("UTF-8"); 
            String uid=request.getParameter("txtOperid").trim();
            String upass=request.getParameter("txtPwd");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456"); 
            try {
                PreparedStatement pstmt=null;
                String query=null;
                query="select id,password from admin";
                pstmt=con.prepareStatement(query);
                ResultSet rs=pstmt.executeQuery();
                while(rs.next())
                {
                   if(uid.equals(rs.getString("id"))&&upass.equals(rs.getString("password"))){
                       session.setAttribute("sUserID",rs.getString("id"));
                       response.sendRedirect("admin.jsp");
//                       response.sendRedirect("admin.jsp?wuid="+uid);
                       flag=1;
                   }    
                }
                if(flag!=1)
                {
                    response.sendRedirect("login.jsp?error=yes&wuid="+uid);
                }
            }
            catch (Exception e) {}
        %>
    </body>
</html>
