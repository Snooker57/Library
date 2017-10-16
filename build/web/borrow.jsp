<%-- 
    Document   : fpassword
    Created on : 2017-9-21, 8:45:28
    Author     : snooker
--%>

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
                height: 500px;
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
                width: 180px;
                padding: 11px 10px;
                border: 2px solid #8e9eb1;
                font-size: 14px;
                color: #666;
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
            input[type=date]::-webkit-inner-spin-button { visibility: hidden; }
            input[type=date]{
                display: block;
                height: 2px;
                width: 160px;
                padding: 11px 10px;
                border: 2px solid #8e9eb1;
                font-size: 14px;
                color: #666;
            }
            span{
               font-size: 14px;
            }
                
        </style>
    </head>
    <body>
        <div class="d1">
            <div class="d3">
                <a href="user1.jsp">Back</a>
            </div>
            <div class="d2">
                <div style=" margin-left: 100px;">
                    <%
                        request.setCharacterEncoding("UTF-8");
                    %>
                    <div style=" margin-top:40px;margin-left: 30px;">
                        <p>
                            <label>ID</label><span style=" margin-left: 100px;"><%=request.getParameter("td1")%></span>
                        </p>
                        <p>
                            <label>Title</label><span style=" margin-left: 85px;"><%=request.getParameter("td2")%></span>
                        </p>
                        <p>
                            <label>Author</label><span style=" margin-left: 69px;"><%=request.getParameter("td3")%></span>
                        </p>
                        <p>
                            <label >Price</label><span style=" margin-left: 80px;"><%=request.getParameter("td4")%></span>
                        </p>
                        <p>
                            <label>Publisher</label><span style=" margin-left: 51px;"><%=request.getParameter("td5")%></span>
                        </p>
                        <p>
                            <label>Type</label><span style=" margin-left: 85px;"><%=request.getParameter("td6")%></span>
                        </p>
                        <p>
                            <label>Amount</label><span style=" margin-left: 60px;"><%=request.getParameter("td7")%></span>
                        </p>
                        <p>
                            <label>Publish Date</label><span style=" margin-left: 30px;"><%=request.getParameter("td8")%></span>
                        </p>
                    </div>
                    <form action="borrowC.jsp">
                        <div style="margin-left: 300px;margin-top: -260px;">
                            <p>
                                <label>Borrow Amount</label><span style="margin-left:48px;font-weight:700">1</span>
                            </p>
                            <% 
                                Date bDate=new Date();
                                Date rDate=new Date();
                                Calendar calendar = Calendar.getInstance(); //得到日历
                                calendar.setTime(bDate);//把当前时间赋给日历
                                calendar.add(calendar.MONTH, +3);  //设置为前3月
                                rDate = calendar.getTime();   //得到前3月的时间

                                DateFormat format=new SimpleDateFormat("yyyy-MM-dd");
                                String time1=format.format(bDate); 
                                String time2=format.format(rDate);       
                            %>
                            <p>
                                <label>Borrow Date</label><span style="margin-left:48px;font-weight:700"><%=time1%></span>
                            </p>

                            <p>
                                <label>Last Return Date</label><span style="margin-left:20px;font-weight:700"><%=time2%></span>
                            </p>
                            <p>
                                <input type="text" hidden name="tbid" value="<%=request.getParameter("td1")%>">
                                <input type="text" hidden name="tbtitle" value="<%=request.getParameter("td2")%>">
                                <input type="text" hidden name="tbprice" value="<%=request.getParameter("td4")%>">
                                <input type="text" hidden name="tbdate" value="<%=time1%>">
                                <input type="text" hidden name="tlrdate" value="<%=time2%>">
                            </p>
                            <br>
                            <input type="submit" value="Borrow" class="bu1">
                       </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
