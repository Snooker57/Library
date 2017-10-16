<%-- 
    Document   : fpassword
    Created on : 2017-9-21, 8:45:28
    Author     : snooker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Forget Password Page</title>
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
                height: 400px;
                margin: 100px 280px;
                border: 1px #c3c4d0 solid;
                background: #fff;
                border-top: 2px #fa7d3c solid;
                border-radius: 4px;
                font: 12px/1.3 'Arial','Microsoft YaHei';
                position: absolute;
            }
            .i_top {
                padding: 10px 0;
            }
            .i_top .title {
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
                height: 160px;
            }
            .i_mod .tit{
                display: inline-block;
                width: 314px;
                margin-right: 3px;
                text-align: right;
                font-size: 18px;
                color: chocolate;
                font-family: Times New Roman;
            }
            .i_mod input{
                height: 23px;
                height: 23px\9;
                line-height: 33px;
                line-height: 36px\9;
                border: 1px solid #ccc;
                padding-left: 3px;
                color: #8F809F;
                margin-left: 20px;
            }
            input[type="submit"]{
                background-color: #e69052;
                width:250px;
                height: 35px;
            }
            .i_mod .tit1{
                margin-right: 263px;
            }
            .i_mod .tit2{
                display: inline-block;
                width: 314px;
                text-align: right;
                font-size: 18px;
                color: chocolate;
                font-family: Times New Roman;
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
        </style>
    </head>
    <body>
        <div class="d1">
            <div class="d3">
                <a href="login.jsp">Back</a>
            </div>
            <div class="d2">
                <div class="i_top">
                    <h3 class="title">Reset Password</h3>
                </div>
                <div class="i_mod">
                    <form action="fpassC2.jsp" name="form1" onsubmit="return mycheck()">
                        <p>
                            <span class="tit">ID</span><input type="text" name="tuid" id="ttuid" placeholder="Please enter valid ID" value="<%=request.getParameter("pass2")%>">
                        </p>
                        <p> 
                            <span class="tit">New Password</span><input name="npass"  type="password" id="p1">
                        </p>
                        <p> 
                            <span class="tit">Confirm Password</span><input name="cpass" id="p2"  type="password" onchange="check()"><span id="tishi"></span>
                        </p>
                         <p> 
                            <span class="tit2">Verification Code</span>
                            <input type="text" id="Txtidcode"/>
                            <span id="idcode"></span>
                        </p>
                        <br>
                        <p>
                            <span class="tit1"></span>
                            <input type="submit" value="Submit" id="btns">
<!--                            <button type="button" id="btns" >Submit</button>-->
                        </p>
                    </form>
<!--                    <script>
                    </script>-->
                </div>
            </div>
        </div>
    </body>
    <script>
        $.idcode.setCode();
        var name = document.getElementById("ttuid").value;
        if(name=="null"||name==null)
            document.getElementById("ttuid").value="";

        var error="<%=request.getParameter("error")%>";
        if(error=="yes")
        {
            alert("Please enter a correct ID");
            document.getElementById("ttuid").focus();
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
                document.getElementById("tishi").innerHTML="<font color='red'>Error!Please enter again!</font>";
                document.getElementById("btns").disabled = true;
            }
        }
        function mycheck()
        {
          for(var i=0;i<document.form1.elements.length-1;i++)
          {
            if(document.form1.elements[i].value=="")
            {
                alert("Please fill in all the content...");
                document.form1.elements[i].focus();
                return false;
            }
            else{
                var IsBy = $.idcode.validateCode();
                if(IsBy==false){
                    alert("Please enter a valid Verification Code...");
                    document.getElementById("Txtidcode").value="";
                    return false;
                }
                else
                    return true;
                }
          }
          return true;
        }
    </script>
</html>
