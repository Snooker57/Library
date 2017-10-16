<%-- 
    Document   : admin3
    Created on : 2017-9-22, 8:59:12
    Author     : snooker
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head lang="zh-cn">
        <meta charset="UTF-8">
        <title>User Page</title>
        <link rel="stylesheet" href="css/base.css">
        <style>
            label{
                height: 42px;
                width: 65px;
                line-height: 42px;
                font-size: 14px;
                color: #666;
                font-weight: 700;
            }
            .in{
                display: block;
                height: 2px;
                width: 240px;
                padding: 11px 10px;
                border: 2px solid #8e9eb1;
                font-size: 14px;
                color: #666;
            }
            .ra{
                margin-left: 30px;
            }
            span{
                line-height: 42px;
                font-size: 14px;
            }
            .bu1{
                margin-left: 5px;
                width: 100px;
                height: 28px;
                background-color: cadetblue;
                border: 2px;
                font-size: 16px;
            }
            .bu2{
                margin-left: 48px;
                width: 100px;
                height: 28px;
                background-color: cadetblue;
                border: 2px;
                font-size: 16px;
            }
            .lou{
                margin-top: 8px;
                float:right;
            }
            .lou:hover{
                font-size: 20px;
            }
            .laA{
                margin-left: 200px;
            }
            select.ra {
                width: 120px;
                height: 26px;
                margin-left: 53px;
                font-size: 15px;
                border: 2px solid #8e9eb1;
            }
            .idgo{
                margin-left: 12px;
                height: 2px;
                width: 120px;
                padding: 11px 10px;
                border: 2px solid #8e9eb1;
                font-size: 14px;
                color: #666;
            }
             table.imagetable {
                margin-top: 30px;
                font-family: verdana,arial,sans-serif;
                font-size:11px;
                color:#333333;
                border-width: 1px;
                border-color: #999999;
                border-collapse: collapse;
            }
            table.imagetable th {
                background:#b5cfd2 url('image/cell-blue.jpg');
                border-width: 1px;
                padding: 8px;
                border-style: solid;
                border-color: #999999;
            }
            table.imagetable td {
                background:#dcddc0 url('image/cell-grey.jpg');
                border-width: 1px;
                padding: 8px;
                border-style: solid;
                border-color: #999999;
            }
            .footer p {
                text-align: center;
                margin-top: -80px;
                line-height: 20px;
            }
        </style>
    </head>
    <body>
        <div class="g-header" style=" background-color: antiquewhite">
            <div class="g-wrap">
                <div class="header-nav">
                    <ul>
                        <li><a href="clerk.jsp">Personal Center</a></li>
                        <li class="pipe">|</li>
                        <li><a class="curr" href="javascript:void(0);">Return Book</a></li>
                        <li class="pipe">|</li>
                        <li><a href="clerk2.jsp">Compensation Ordinance</a></li>
                    </ul>
                </div>
                <div>
                    <label class="laA">Clerk:</label>&nbsp;&nbsp;&nbsp;&nbsp;<span><%=session.getAttribute("sUserID2")%></span>
                    <a href="login.jsp" class="lou">Log out</a>
                </div>
            </div>
        </div>
        <div class="g-content">
            <div class="g-body g-pro-body">
                <div class="g-body-mod pro-advantage-mod" style="background-image:url(image/body_bg.jpg) ">
                    <div class="g-wrap">
                        <div class="g-main" style="margin-left: 220px">
                            <form action="searchuserid.jsp">
                                <p>
                                    <label>Enter User ID:</label>
                                    <input type="text" class="in" name="tid" placeholder="Please enter the exact ID" required style="display:inline;width:180px;margin-left: 10px">
                                    <input type="submit" value="Search" class="bu1" style="margin-left:10px">
                                </p>
                            </form>
                            <%
                                request.setCharacterEncoding("UTF-8");
                                String userid=(String)session.getAttribute("tid");
//                                String userid=request.getParameter("tid1");
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library?allowMultiQueries=true","root","123456");
                                try{
                                    PreparedStatement pstmt=null;
                                    String query=null; 
                                    query="select * from record where user_id=? &&return_date is null";
                                    pstmt=con.prepareStatement(query);
                                    pstmt.setString(1, userid);
                                    ResultSet rs=pstmt.executeQuery();        
                            %>
                                <div>
                            <%
                                if(rs.next())
                                {
                                    rs.previous();
                            %>     
                                    <table class="imagetable">
                                        <tr>
<!--                                            <th>num</th>-->
                                            <th>User Id</th>
                                            <th>Book Id</th>
                                            <th>Title</th>
                                            <th>Price</th>
                                            <th>Borrow Date</th>
                                            <th>Last Return Date</th>
                                            <th>Action</th>
                                        </tr>
                            <%
                                    while(rs.next())
                                    {
                            %>
                                        <tr>
                                            <form action="return.jsp">
                                                <!--<td></td>-->
                                                <input type="text" hidden value="<%=rs.getString(8)%>" name="td0">
                                                <td><%=rs.getString(1)%> <input type="text" hidden value="<%=rs.getString(1)%>" name="td6"></td>
                                                <td><%=rs.getString(2)%> <input type="text" hidden value="<%=rs.getString(2)%>" name="td1"></td>
                                                <td><%=rs.getString(3)%> <input type="text" hidden value="<%=rs.getString(3)%>" name="td2"></td>
                                                <td><%=rs.getString(4)%> <input type="text" hidden value="<%=rs.getString(4)%>" name="td3"></td>
                                                <td><%=rs.getString(5)%> <input type="text" hidden value="<%=rs.getString(5)%>" name="td4"></td>
                                                <td><%=rs.getString(6)%> <input type="text" hidden value="<%=rs.getString(6)%>" name="td5"></td>
                                                <td><input type="submit" value="Return"></td>
                                            </form>
                                        </tr>
                            <%
                                    }
                            %>
                                    </table>
                            <%
                                    }
                                    else
                                    {
                            %>
                                    <span>No record...</span>
                            <%
                                    }
                            %>
                                </div>
                            <%
                                    }
                                    catch(Exception e){}
                            %>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="g-sidebar">
                <ul class="lift-wrapper">
                    <li><a href="javascript:void(0)" class="lift-emit" style="width:150px">Return Process<i class="ico-state"></i></a></li>
                </ul>
            </div>
            <div class="footer">
                <p>
                    Copyright © NanTong University<a href="http://www.miitbeian.gov.cn/" style="text-decoration: none;"> 苏ICP备05007127号</a><br>
                    地址：江苏省南通市啬园路9号 邮编：226019  南通大学
                    <a href="http://met.ntu.edu.cn">信息化工作办公室（现代教育技术中心)&nbsp;</a>设计制作维护
                </p>
            </div>
        </div>
        <script src="js/jquery.min.js"></script>
        <script src="js/lift.js"></script>
        <script>
            $(document).ready(function(){
                $("a").lift({
                    floorWrap:".lift-wrapper",floorSelector:".g-body-mod"
                }),
                window.openSDK=function(){ysf.open()}
            });
        </script>
    </body>
    <script>
        var tip="<%=request.getParameter("tip")%>";
        if(tip=="yes")
        {
            alert("Congratulations, return success!");
        }
    </script>
</html>
