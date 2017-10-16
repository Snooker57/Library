<%-- 
    Document   : admin
    Created on : 2017-9-20, 22:01:58
    Author     : snooker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head lang="zh-cn">
        <meta charset="UTF-8">
        <title>Admin Page</title>
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
            .footer p {
                text-align: center;
                margin-top: -80px;
                line-height: 20px;
            }
        </style>
    </head>
    <body>
        <div class="g-header" style=" background-color: #f8f5d0">
            <div class="g-wrap">
                <div class="header-nav">
                    <ul>
                        <li><a class="curr" href="javascript:void(0);">Personal Center</a></li>
                        <li class="pipe">|</li>
                        <li><a href="admin1.jsp">User Management </a></li>
                        <li class="pipe">|</li>
                        <li><a href="admin2.jsp">Book Management </a></li>
                        <li class="pipe">|</li>
                        <li><a href="admin3.jsp">Clerk Management </a></li>
                    </ul>
                </div>
                <div>
                    <label class="laA">Admin:</label>&nbsp;&nbsp;&nbsp;&nbsp;<span><%=session.getAttribute("sUserID")%></span>
                    <%--<%=request.getParameter("wuid")%>--%>
                    <a href="login.jsp" class="lou">Log out</a>
                </div>
            </div>
        </div>
        <div class="g-content">
            <div class="g-body g-pro-body">
                <div class="g-body-mod pro-advantage-mod" style="background-image:url(image/body_bg.jpg) ">
                    <div class="g-wrap">
                        <div class="g-main" style="margin-left: 220px">
                            <form action="adminC.jsp" name="form1"  onsubmit="return myCheck()">
                                <p>
                                    <label>Name</label>
                                    <input type="text" class="in" name="tname">
                                </p>
                                <p>
                                    <label>Email</label>
                                    <input  type="email" class="in" name="temail">
                                </p>
                                <p>
                                    <label>Phone</label>
                                    <input type="text" class="in" name="tphone" onkeyup="this.value=this.value.replace(/\D/g,'')" 
                                                           pattern="^\d{11}$" title="Please enter a valide Phone number."
                                                           placeholder="xxx-xxxx-xxx">
                                </p>
                                <p>
                                    <label>Gender</label>
                                    <input type="radio" name="r1" class="ra" value="Male"><span>Male</span>
                                    <input type="radio" name="r1" class="ra" value="FeMale"><span>FeMale</span>
                                </p>
                                <br>
                                <p>
                                    <input type="submit" value="Save" class="bu1">
                                    <input type="reset" value="Reset" class="bu2">
                                </p>
                            </form>
                        </div>
                    </div>
                </div> 
                <div class="g-body-mod pro-advantage-mod">
                    <div class="g-wrap" >
                        <div class="g-main" style="margin-left: 220px">
                            <form action="adminC1.jsp" name="form2" onsubmit="return myCheck1()">
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
                    <li><a href="javascript:void(0)" class="lift-emit" style="width:150px">Perfect Information <i class="ico-state"></i></a></li>
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
            var checked = false;
            var radios = document.getElementsByName('r1');
            for (var x=0; x<radios.length; x++) {
                checked = checked || radios[x].checked;
            }
            if (!checked) {
                alert("Please choose gender...");
            return false;
              
            }
          }
          return true;
        }
        
        var tip="<%=request.getParameter("tip")%>";
        if(tip=="yes")
        {
            alert("Congratulations, save success!");
        }
        
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
        
        
        function myCheck1()
        {
           for(var i=0;i<document.form2.elements.length-1;i++)
            {
              if(document.form2.elements[i].value=="")
              {
                  alert("Please fill in all the content...")
                  document.form2.elements[i].focus();
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
    </script>
</html>
