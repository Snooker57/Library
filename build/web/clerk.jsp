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
             .span1{
               font-size: 16px;
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
                        <li><a class="curr" href="javascript:void(0);">Personal Center</a></li>
                        <li class="pipe">|</li>
                        <li><a href="clerk1.jsp">Return Book</a></li>
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
                            <%
                                request.setCharacterEncoding("UTF-8");
                                String userid=(String)session.getAttribute("sUserID2");
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
                                try{
                                    PreparedStatement pstmt=null,pstmt1=null;
                                    String query=null,query1=null;
                                    query="select * from clerk where clerk_id=?";
                                    pstmt=con.prepareStatement(query);
                                    pstmt.setString(1, userid);
                                    ResultSet rs=pstmt.executeQuery();
                                    while(rs.next())
                                    {
                            %>
                                <p>
                                    <label>Name</label><span class="span1" style=" margin-left: 80px"><%=rs.getString("clerk_name")%></span>
                                </p>
                                <p>
                                    <label>Phone</label><span class="span1" style=" margin-left: 75px"><%=rs.getString("clerk_phone")%></span>
                                </p>
                                <p>
                                    <label>Gender</label><span class="span1"style=" margin-left: 71px"><%=rs.getString("clerk_gender")%></span>
                                </p>
                                <p>
                                    <label>Address</label><span class="span1" style=" margin-left:65px"><%=rs.getString("clerk_address")%></span>
                                </p>
                                <%
                                    }
                                    }
                                    catch(Exception e){}
                                %>
                        </div>
                    </div>
                </div> 
                <div class="g-body-mod pro-advantage-mod">
                    <div class="g-wrap">
                        <div class="g-main" style="margin-left: 220px">
                             <form action="clerk1C.jsp" name="form1" onsubmit="return myCheck()">
                                <p>
                                    <label>Old Password</label>
                                    <input type="password" class="in" name="opass" id="olpass">
                                </p>
                                <p>
                                    <label>New Password</label>
                                    <input type="password" class="in" id="p1" name="npass">
                                </p>
                                <p> 
                                    <label>Confirm Password</label>
                                    <input type="password" class="in" id="p2" onchange="check()"><span id="tishi"></span>
                                </p>
                                <br>
                                <p>
                                    <input type="submit" value="Save" id="btns" class="bu1">
                                    <input type="reset" value="Reset" class="bu2">
                                </p>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="g-sidebar">
                <ul class="lift-wrapper">
                    <li><a href="javascript:void(0)" class="lift-emit" style="width:150px">Personal Data<i class="ico-state"></i></a></li>
                    <li><a href="javascript:void(0)" class="lift-emit" style="width:150px">Reset Password<i class="ico-state"></i></a></li>
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
        function myCheck()
        {
           for(var i=0;i<document.form1.elements.length-1;i++)
            {
              if(document.form1.elements[i].value=="")
              {
                  alert("Please fill in all the content...")
                  document.form1.elements[i].focus();
                  return false;
              }
            }
            return true;
        }
        function check() 
        {
            var p1 = document.getElementById("p1").value;
            var p2 = document.getElementById("p2").value;
            if(p1 == p2) 
            {
                document.getElementById("tishi").innerHTML="";
                document.getElementById("btns").disabled = false;
            }
            else 
            {
                document.getElementById("tishi").innerHTML="<font color='red'>Error!Please enter again,then click blank to confirm!</font>";
                document.getElementById("btns").disabled = true;
            }
        }
        
        //重置密码 反馈
        var tip1="<%=request.getParameter("tip1")%>";
        if(tip1=="yes")
        {
            alert("Congratulations, reset success!");
        }
        
        var error="<%=request.getParameter("error")%>";
        if(error=="yes")
        {
            alert("Please enter a correct old password");
            document.getElementById("olpass").focus();
        }
        
    </script>
</html>
