<%-- 
    Document   : newjsp
    Created on : 2017-9-20, 21:23:58
    Author     : snooker
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login Page</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
        <style>
            .d1{
                background: url(image/bg.jpg);
                background-repeat: no-repeat;
                width: 100%;
                height: 100%;
                background-position: center;
                background-size: cover;
                position: absolute;
            }
            .d2{
                margin:200px 450px;
                position:absolute;
            }
            .content_box {
                height: auto;
                padding: 40px 0px 25px 40px;
                margin-top: 40px;
                border-radius: 3px;
                position: absolute;
                left: 0;
                _padding-left: 0;
                _margin-left: -73px;
                background: url(image/bg01.png);
            }
            .content_left {
                float: left;
                width: 395px;
                padding-right: 30px;
                text-align: left;
            }
            .content_left p {
                line-height: 22px;
                font-size: 14px;
                color: #ffffff;
                background-color: #8c7277;
                border-radius: 5px;
                margin-bottom: 10px;
                text-align: left;
                padding: 10px 0;
            }
            .content_left p input {
                height: 22px;
                vertical-align: top;
                color: #ffffff;
                width: 200px;
                background-color: #8c7277;
                border: none;
                font-size: 16px;
                padding-left: 5px;
                outline: none;
            }
            .content_left p span {
                width: 78px;
                display: inline-block;
                padding-left: 10px;
                border-right: 1px solid #a69290;
            }
           
            .login {
                width:367px;
                color: #ffffff;
                font-size: 18px;
                background: #514862;
                text-align: center;
                padding: 10px 0;
                display: block;
            }
            .d3{
                float:right;
                margin-right: 20px;
            }
            .d3 a{
                font-size: 30px;
                color:#ccffff;
                font-family: -webkit-pictograph;
            }
            .d3 a:hover{
                color: #5f536d;
                text-decoration:none;
            }
            .forget:hover{
                text-decoration:none;
                font-size: 15px;
            }
        </style>
    </head>
    <body>
        <div class="d1"> 
            <div class="d3">
                <a href="home.html">Home</a>
            </div>
            <div class="d2">
                <ul id="myTab" class="nav nav-tabs">
                    <li class="active"><a href="#admin" data-toggle="tab">Admin</a></li>
                    <li><a href="#user" data-toggle="tab">User</a></li>
                    <li><a href="#clerk" data-toggle="tab">Clerk</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade in active" id="admin">
                        <div class="content_box">
                            <div class="content_left">
                                <form action='loginC1.jsp'>
                                    <p>
                                        <span>ID</span><input name="txtOperid" tabindex="1" id="txtOperid" type="text" value="<%=request.getParameter("wuid")%>" 
                                                              required  oninvalid="setCustomValidity('Please fill in it')" oninput="setCustomValidity('')">
                                    </p>
                                    <p> 
                                        <span>Password</span><input name="txtPwd" tabindex="2" id="txtPwd" type="password" 
                                                                    required oninvalid="setCustomValidity('Please fill in it')" oninput="setCustomValidity('')">
                                    </p>
                                    <input type="submit" value="Login" class="login"> 
                                    <!--<a class="login" id="btnLogin" href="admin.html">Login</a>-->
                                    <a class="forget" href="fpassword.jsp?pass=<%=request.getParameter("wuid")%>">Forget？</a>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="user">
                        <div class="content_box">
                            <div class="content_left">
                                <form action='loginC2.jsp'>
                                    <p>
                                        <span>ID</span><input name="txtOperid1" tabindex="1" id="txtOperid1" type="text" value="<%=request.getParameter("wuid1")%>"
                                                              required  oninvalid="setCustomValidity('Please fill in it')" oninput="setCustomValidity('')">
                                    </p>
                                    <p> 
                                        <span>Password</span><input name="txtPwd1" tabindex="2" id="txtPwd1" type="password"
                                                                    required oninvalid="setCustomValidity('Please fill in it')" oninput="setCustomValidity('')">
                                    </p>
                                    <input type="submit" value="Login" class="login"> 
                                    <!--<a class="login" id="btnLogin" href="admin.html">Login</a>-->
                                    <a class="forget" href="fpassword1.jsp?pass1=<%=request.getParameter("wuid1")%>">Forget？</a>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="clerk">
                        <div class="content_box">
                            <div class="content_left">
                                <form action='loginC3.jsp'>
                                    <p>
                                        <span>ID</span><input name="txtOperid2" tabindex="1" id="txtOperid2" type="text"value="<%=request.getParameter("wuid2")%>"
                                                              required  oninvalid="setCustomValidity('Please fill in it')" oninput="setCustomValidity('')">
                                    </p>
                                    <p> 
                                        <span>Password</span><input name="txtPwd2" tabindex="2" id="txtPwd2" type="password" 
                                                                    required oninvalid="setCustomValidity('Please fill in it')" oninput="setCustomValidity('')">
                                    </p>
                                    <input type="submit" value="Login" class="login"> 
<!--                                        <a class="login" id="btnLogin" href="admin.html">Login</a>-->
                                    <a class="forget" href="fpassword2.jsp?pass2=<%=request.getParameter("wuid2")%>">Forget？</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script>
        //Admin 登录反馈
        var error1="<%=request.getParameter("error")%>";
        if(error1=="yes")
        {
            alert("Login failed. Please login again...");
        }
        
        var name = document.getElementById("txtOperid").value;
        if(name=="null"||name==null)
            document.getElementById("txtOperid").value="";
        
        //Admin 修改密码反馈
        var tip="<%=request.getParameter("tip")%>";
        if(tip=="yes")
        {
            alert("Please login again use new password...");
        }
        
        
        //User 登录反馈
        var error2="<%=request.getParameter("error1")%>";
        if(error2=="yes")
        {
            alert("Login failed. Please login again...");
        }
        
        var name1 = document.getElementById("txtOperid1").value;
        if(name1=="null"||name1==null)
            document.getElementById("txtOperid1").value="";
        
        //User 修改密码反馈
        var tip1="<%=request.getParameter("tip1")%>";
        if(tip1=="yes")
        {
            alert("Please login again use new password...");
        }
        
        //Clerk 登录反馈
        var error3="<%=request.getParameter("error2")%>";
        if(error3=="yes")
        {
            alert("Login failed. Please login again...");
        }
        
        var name2 = document.getElementById("txtOperid2").value;
        if(name2=="null"||name2==null)
            document.getElementById("txtOperid2").value="";
        
         //Clerk 修改密码反馈
        var tip2="<%=request.getParameter("tip2")%>";
        if(tip2=="yes")
        {
            alert("Please login again use new password...");
        }
    </script>
</html>
