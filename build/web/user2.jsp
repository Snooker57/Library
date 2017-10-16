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
                margin-left: 100px;
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
        <script type="text/javascript" src="js/pagination.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript">
        //全局变量
        var numCount;       //数据总数量
        var columnsCounts;  //数据列数量
        var pageCount;      //每页显示的数量
        var pageNum;        //总页数
        var currPageNum ;   //当前页数

        //页面标签变量
        var blockTable;
        var preSpan;
        var firstSpan;
        var nextSpan;
        var lastSpan;
        var pageNumSpan;
        var currPageSpan;
        window.onload=function(){
            //页面标签变量
            blockTable = document.getElementById("blocks");
            preSpan = document.getElementById("spanPre");
            firstSpan = document.getElementById("spanFirst");
            nextSpan = document.getElementById("spanNext");
            lastSpan = document.getElementById("spanLast");
            pageNumSpan = document.getElementById("spanTotalPage");
            currPageSpan = document.getElementById("spanPageNum");

            numCount = document.getElementById("blocks").rows.length - 1;       //取table的行数作为数据总数量（减去标题行1）
            columnsCounts = blockTable.rows[0].cells.length;
            pageCount = 6;
            pageNum = parseInt(numCount/pageCount);
            if(0 != numCount%pageCount){
                pageNum += 1;
            }

            firstPage();
        };
    </script>
    </head>
    <body>
        <div class="g-header" style=" background-color: azure">
            <div class="g-wrap">
                <div class="header-nav">
                    <ul>
                        <li><a href="user.jsp">Personal Center</a></li>
                        <li class="pipe">|</li>
                        <li><a href="user1.jsp">Borrow Book</a></li>
                        <li class="pipe">|</li>
                        <li><a class="curr" href="javascript:void(0);">Search Book</a></li>
                        <li class="pipe">|</li>
                        <li><a href="user3.jsp">Compensation Ordinance</a></li>
                    </ul>
                </div>
                <div>
                    <label class="laA">User:</label>&nbsp;&nbsp;&nbsp;&nbsp;<span><%=session.getAttribute("sUserID1")%></span>
                    <a href="login.jsp" class="lou">Log out</a>
                </div>
            </div>
        </div>
        <div class="g-content">
            <div class="g-body g-pro-body">
                <div class="g-body-mod pro-advantage-mod" style="background-image:url(image/body_bg.jpg) ">
                    <div class="g-wrap">
                        <div class="g-main" style="margin-left: 220px">
                           <form action="searchbook1.jsp">
                                <p>
                                    <select name="kw" onchange="myselect(this)" id="s1" class="ra"> 
                                        <option value="ID">Book ID</option>
                                        <option value="Title">Book Title</option>
                                        <option value="Author">Book Author</option>
                                     </select>
                                    <input type="text" class="in" name="tcontent" id="t1" placeholder="Please enter the exact ID " required style="display:inline;width:250px;margin-left: 10px">
                                    <input type="submit" value="Search" class="bu1" style="margin-left:10px">
                                </p>
                            </form>
                            <!--Search 反馈-->
                            <%
                                request.setCharacterEncoding("UTF-8"); 
                                String kword=request.getParameter("kw1");
                                String content=request.getParameter("content");
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
                                try {
                                     PreparedStatement pstmt=null;
                                     String query=null;
                                     if(kword.equals("ID"))
                                        query="select * from book where book_id='"+content+"'";
                                     else if(kword.equals("Title"))
                                        query="select * from book where book_title like '%"+content+"%'";
                                     else if(kword.equals("Author"))
                                        query="select * from book where book_author like '%"+content+"%'";
                                     pstmt=con.prepareStatement(query);
                                     ResultSet rs=pstmt.executeQuery();
                             %>
                             <div style=" margin-left: 53px;">
                                    
                            <%
                                if(rs.next())
                                {
                                    rs.previous();
                            %>
                            <table class="imagetable" id="blocks" style=" position: absolute;">
                                        <tr>
                                            <th>Id</th>
                                            <th>Title</th>
                                            <th>Author</th>
                                            <th>Price</th>
                                            <th>Publisher</th>
                                            <th>Type</th>
                                            <th>Amount</th>
                                            <th>Publish Date</th>
                                        </tr>
                                        <%
                                        while(rs.next())
                                       {
                                        %>
                                        <tr>
                                            <td><%=rs.getString(1)%>
                                            <td><%=rs.getString(2)%>
                                            <td><%=rs.getString(3)%>
                                            <td><%=rs.getString(4)%>
                                            <td><%=rs.getString(5)%>
                                            <td><%=rs.getString(6)%>
                                            <td><%=rs.getString(7)%>
                                            <td><%=rs.getString(8)%>
                                        </tr>
                                        <%
                                         }
                                        %>
                                    </table>
                                     <div id="pagiDiv" style="width:1200px; margin-left: 180px;    position: absolute;margin-top: 300px ">
                                        <span id="spanFirst">First</span>&nbsp;&nbsp;
                                        <span id="spanPre">Pre</span>&nbsp;&nbsp;
                                        <span id="spanNext">Next</span>&nbsp;&nbsp;
                                        <span id="spanLast">Last</span>&nbsp;&nbsp;
                                        The&nbsp;<span id="spanPageNum"></span>&nbsp;Page/Total&nbsp;<span id="spanTotalPage"></span>&nbsp;Page
                                    </div>
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
                                    catch (Exception e) { }
                                %>
                        </div>  
                    </div>
                </div> 
            </div>
            <div class="g-sidebar">
                <ul class="lift-wrapper">
                    <li><a href="javascript:void(0)" class="lift-emit" style="width:150px">Search Process<i class="ico-state"></i></a></li>
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
            function myselect(ms)
            {
                if(ms.value=="ID")
                {
                    $(function(){    
                        $("#t1").attr('placeholder','Please enter the exact ID')
                    })
                }
                if(ms.value=="Title")
                {
                    $(function(){    
                        $("#t1").attr('placeholder','Press the spacebar to search for all')
                    })
                }
                if(ms.value=="Author")
                {
                    $(function(){    
                        $("#t1").attr('placeholder','Press the spacebar to search for all')
                    })
                }
            }
        </script>
    </body>
</html>
