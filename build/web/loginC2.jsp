<%-- 
    Document   : loginC2
    Created on : 2017-9-20, 15:39:39
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
            String uid=request.getParameter("txtOperid1").trim();
            String upass=request.getParameter("txtPwd1");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456"); 
            

            try {
                PreparedStatement pstmt=null;
                String query=null;
                query="select user_id,user_password from user";
                pstmt=con.prepareStatement(query);
                ResultSet rs=pstmt.executeQuery();
                while(rs.next())
                {
                   if(uid.equals(rs.getString("user_id"))&&upass.equals(rs.getString("user_password"))){
                       session.setAttribute("sUserID1",rs.getString("user_id"));
                       response.sendRedirect("user.jsp");
//                       response.sendRedirect("admin.jsp?wuid="+uid);
                       flag=1;
                   }    
                }
                if(flag!=1)
                {
                    response.sendRedirect("login.jsp?error1=yes&wuid1="+uid);
                }
            }
            catch (Exception e) {}
        %>
    </body>
</html>
