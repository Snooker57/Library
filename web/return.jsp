<%-- 
    Document   : fpassword
    Created on : 2017-9-21, 8:45:28
    Author     : snooker
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.*"%>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Borrow Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/jquery.idcode.css" />
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.idcode.js"></script>
        <style>
            .d1{
                background: url(image/body_bg.jpg);
                background-repeat: no-repeat;
                width: 100%;
                height: 100%;
                background-position: center;
                background-size: cover;
                position: absolute;
            }
            .d2{
                width: 800px;
                height: 450px;
                margin: 60px 280px;
                border: 1px #c3c4d0 solid;
                background: #fff;
                border-top: 2px #fa7d3c solid;
                border-radius: 4px;
                font: 12px/1.3 'Arial','Microsoft YaHei';
                position: absolute;
            }
            .d3{
                float: right;
                margin-right: 20px;
            }
            .d3 a{
                font-size: 30px;
                color:#7c7c87;
                font-family: -webkit-pictograph;
                text-decoration:none;
            }
            .d3 a:hover{
                color:  #e69052;
            }
            
             .i_top {
                padding: 10px 0;
            }
            .i_top .title {
                margin-left: -100px;
                font-size: 25px;
                text-align: center;
                display: block;
                font-weight: 500; 
            }
            .i_mod {
                padding: 30px 0 100px;
                border-top: 1px #f2f2f5 solid;
                background: #fafafa;
                border-radius: 0 0 4px 4px;
                height: 215px;
                margin-left: -99px;
            }
           
            label{
                height: 42px;
                width: 65px;
                line-height: 42px;
                font-size: 14px;
                color: #666;
                font-weight: 700;
            }

             select.ra {
                width: 120px;
                height: 26px;
                margin-left: 53px;
                font-size: 15px;
                border: 2px solid #8e9eb1;
            }
            .bu1{
                width: 200px;
                height: 28px;
                background-color: cadetblue;
                border: 2px;
                font-size: 16px;
            }
            span{
               font-size: 14px;
            }
                
        </style>
    </head>
    <body>
        <div class="d1">
            <div class="d3">
                <a href="clerk1.jsp">Back</a>
            </div>
            <div class="d2">
                <div style="margin-left: 100px;">
                    <div class="i_top">
                        <h3 class="title">Return Confirmation </h3>
                    </div>
                    <div class="i_mod">
                        <%
                            request.setCharacterEncoding("UTF-8");
                        %>
                        <div style=" margin-top:20px; margin-left: 100px;">
                            <p>
                                <label>ID</label><span style=" margin-left: 130px;"><%=request.getParameter("td1")%></span>
                            </p>
                            <p>
                                <label>Title</label><span style=" margin-left: 116px;"><%=request.getParameter("td2")%></span>
                            </p>
                            <p>
                                <label>Price</label><span style=" margin-left: 109px;"><%=request.getParameter("td3")%></span>
                            </p>
                            <p>
                                <label>Borrow Date</label><span style=" margin-left: 59px;"><%=request.getParameter("td4")%></span>
                            </p>
                            <p>
                                <label>Last Return Date</label><span style=" margin-left: 30px;"><%=request.getParameter("td5")%></span>
                            </p>
                        </div>
                        <form action="returnC.jsp">
                            <div style="margin-left: 450px;margin-top: -262px;">
                                <% 
                                    Date nowdate=new Date(); 
                                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.CHINA);
                                    String time1=sdf.format(nowdate);
                                    String myString=request.getParameter("td5");
                                    
                                    Date d1 = sdf.parse(myString);
                                    Date d2 = sdf.parse(time1);
                                    //比较日期早晚
                                    boolean flag = d1.before(d2);
                                    if(flag)
                                    {
                                        //计算天数
                                        long beginTime = d1.getTime(); 
                                        long endTime =d2.getTime(); 
                                        long betweenDays = (long)((endTime - beginTime) / (1000 * 60 * 60 *24) + 0.5);
//                                        System.out.println(betweenDays);

                                        float price= Float.parseFloat(request.getParameter("td3"));
                                        String role="";
                                        String userid=request.getParameter("td6");
            //                            System.out.println(userid);
                                        Class.forName("com.mysql.jdbc.Driver");
                                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library?allowMultiQueries=true","root","123456");
                                        try{
                                            PreparedStatement pstmt=null;
                                            String query=null;
                                            query="select user_role from user where user_id=?";
                                            pstmt=con.prepareStatement(query);
                                            pstmt.setString(1, userid);
                                            ResultSet rs=pstmt.executeQuery();
                                            while(rs.next())
                                            {
                                                role=rs.getString("user_role");
                                            }
                                        }
                                        catch(Exception e){}
                                        //根据用户角色决定赔款价格
                                        if(role.equals("Student"))
                                        {
                                            price=price*3+betweenDays;
                                        }
                                        else if(role.equals("Teacher"))
                                        {
                                            price=price*2+betweenDays;
                                        }
                                        else if(role.equals("Other"))
                                        {
                                            price=price*1+betweenDays;
                                        }
                                %>
                                    <p>
                                        <label style="color:red">Sorry, you are overdue, please pay a fine.</label>
                                    </p>
                                    <p>
                                        <label>Fine</label><span style="margin-left:20px;font-weight:700;color: red"><%=price%>¥</span>
                                        <button type="button" id="btns" onclick="check()" style=" margin-left: 20px;width:60px;background-color: burlywood;border: 0px;">Pay</button>
                                    </p>
                                    <p>
                                        <span id="tishi" style="font-weight:700;color: red" hidden>Ok! Please return books on time next time!</span>
                                    </p>
                                <%
                                    }
                                %>
                                <p>
                                    <label>Return Date</label><span style="margin-left:20px;font-weight:700"><%=time1%></span>
                                </p>
                                <p>
                                    <input type="text" hidden name="num" value="<%=request.getParameter("td0")%>">
                                    <input type="text" hidden name="tbid" value="<%=request.getParameter("td1")%>">
                                    <input type="text" hidden name="trdate" value="<%=time1%>">
                                </p>
                                <br>
                                <input type="submit" value="Ok" id="ok" class="bu1">
                           </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        if( document.getElementById("tishi").hidden==true)
            document.getElementById("ok").disabled=true;
        function check()
        {
            document.getElementById("tishi").hidden=false;
            document.getElementById("ok").disabled=false;
        }
    </script>
</html>
