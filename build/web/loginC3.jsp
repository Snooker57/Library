<%-- 
    Document   : login3
    Created on : 2017-9-20, 15:56:52
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
            String uid=request.getParameter("txtOperid2").trim();
            String upass=request.getParameter("txtPwd2");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456"); 
            

            try {
                PreparedStatement pstmt=null;
                String query=null;
                query="select clerk_id,clerk_pass from clerk";
                pstmt=con.prepareStatement(query);
                ResultSet rs=pstmt.executeQuery();
                while(rs.next())
                {
                   if(uid.equals(rs.getString("clerk_id"))&&upass.equals(rs.getString("clerk_pass"))){
                       session.setAttribute("sUserID2",rs.getString("clerk_id"));
                       response.sendRedirect("clerk.jsp");
//                       response.sendRedirect("admin.jsp?wuid="+uid);
                       flag=1;
                   }    
                }
                if(flag!=1)
                {
                    response.sendRedirect("login.jsp?error2=yes&wuid2="+uid);
                }
            }
            catch (Exception e) {}
        %>
    </body>
</html>
