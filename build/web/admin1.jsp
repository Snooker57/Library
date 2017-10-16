<%-- 
    Document   : admin1.jsp
    Created on : 2017-9-22, 8:49:31
    Author     : snooker
--%>
<%@page import="javax.security.auth.login.AccountException"%>
<%@page import="java.sql.*"%>
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
        <div class="g-header" style=" background-color: #f8f5d0">
            <div class="g-wrap">
                <div class="header-nav">
                    <ul>
                        <li><a href="admin.jsp">Personal Center</a></li>
                        <li class="pipe">|</li>
                        <li><a class="curr" href="javascript:void(0);">User Management </a></li>
                        <li class="pipe">|</li>
                        <li><a href="admin2.jsp">Book Management </a></li>
                        <li class="pipe">|</li>
                        <li><a href="admin3.jsp">Clerk Management </a></li>
                    </ul>
                </div>
                <div>
                    <label class="laA">Admin:</label>&nbsp;&nbsp;&nbsp;&nbsp;<span><%=session.getAttribute("sUserID")%></span>
                    <a href="login.jsp" class="lou">Log out</a>
                </div>
            </div>
        </div>
        <div class="g-content">
            <div class="g-body g-pro-body">
                <div class="g-body-mod pro-advantage-mod" style="background-image:url(image/body_bg.jpg) ">
                    <div class="g-wrap">
                        <div class="g-main" style="margin-left: 220px">
                            <form action="admin1C.jsp" name="form1" onsubmit="return myCheck()">
                                <p>
                                    <label>ID</label>
                                    <input type="text" class="in" name="tid" id="ttid">
                                </p>
                                <p>
                                    <label>Password</label>
                                    <input type="password" class="in" name="tpass">
                                </p>
                                <p>
                                    <label>Name</label>
                                    <input type="text" class="in" name="tname">
                                </p>
                                 <p>
                                    <label>Class</label>
                                    <input type="text" class="in" name="tclass" placeholder="No class,please enter 无/None">
                                </p>
                                <p>
                                    <label>Phone</label>
                                    <input type="text" class="in" name="tphone" onkeyup="this.value=this.value.replace(/\D/g,'')" 
                                                           pattern="^\d{11}$" title="Please enter a valide Phone number."
                                                           placeholder="xxx-xxxx-xxx">
                                </p>
                                <p>
                                    <label>Role</label>
                                    <input type="radio" name="r1" class="ra" value="Student"><span>Student</span>
                                    <input type="radio" name="r1" class="ra" value="Teacher"><span>Teacher</span>
                                    <input type="radio" name="r1" class="ra" value="Other"><span>Other</span>
                                </p>
                                <p>
                                    <label>Department</label>
                                    <select name="depart" onchange="change(this);" class="ra"> 
                                        <option selected="selected" value="None">None 
                                        <option  value="IT">IT
                                        <option value="Medicine" >Medicine 
                                        <option value="Art" >Art 
                                    </select> 
                                </p>
                                <br>
                                <p>
                                    <input type="submit" value="Add" class="bu1">
                                    <input type="reset" value="Reset" class="bu2">
                                </p>
                            </form>
                        </div>
                    </div>
                </div> 
                <div class="g-body-mod pro-advantage-mod">
                    <div class="g-wrap">
                        <div class="g-main" style="margin-left: 220px">
                            <%
                                int n=0,flag=0,m=0;
                                request.setCharacterEncoding("UTF-8");
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","123456");
                                try{
                                    PreparedStatement pstmt=null,pstmt1=null,pstmt2=null;
                                    String query=null,query1=null,query2=null;
                                    query="select * from user";
                                    pstmt=con.prepareStatement(query);
                                    ResultSet rs=pstmt.executeQuery();
                                    while(rs.next())
                                    {
                                        n++;
                                        flag=1;
                                    }
//                                    out.println(n);
                                    String[] user=new String[n];
//                                    rs.absolute(0); //Sql server
                                    rs.first();
                                    rs.previous();
                                    while(rs.next())
                                    {
                                        user[m]=rs.getString("user_id");
                                        m++;
                                    }
                                %>
                                <form action="admin1C1.jsp" name="form2" onsubmit="return myCheck1()">
                                    <p>
                                        <label>ID</label>
                                        <select name="sid1" class="ra" style=" margin-left: 125px;"> 
                                            <%
                                                for(int j=0;j<n;j++)
                                                {
                                                    %>
                                                    <option><%=user[j]%></option>
                                                    <%
                                                }
                                            %>
                                        </select>
                                    </p>
                                    <p>
                                    <label>Password</label>
                                    <input type="password" class="in" name="tpass1">
                                    </p>
                                    <p>
                                        <label>Name</label>
                                        <input type="text" class="in" name="tname1">
                                    </p>
                                     <p>
                                        <label>Class</label>
                                        <input type="text" class="in" name="tclass1" placeholder="No class,please enter 无/None">
                                    </p>
                                    <p>
                                        <label>Phone</label>
                                        <input type="text" class="in" name="tphone1" onkeyup="this.value=this.value.replace(/\D/g,'')" 
                                                           pattern="^\d{11}$" title="Please enter a valide Phone number."
                                                           placeholder="xxx-xxxx-xxx">
                                    </p>
                                    <p>
                                        <label>Role</label>
                                        <input type="radio" name="r2" class="ra" value="Student"><span>Student</span>
                                        <input type="radio" name="r2" class="ra" value="Teacher"><span>Teacher</span>
                                        <input type="radio" name="r2" class="ra" value="Other"><span>Other</span>
                                    </p>
                                    <p>
                                        <label>Department</label>
                                        <select name="depart1" onchange="change(this);" class="ra"> 
                                            <option selected="selected" value="None">None 
                                            <option  value="IT">IT
                                            <option value="Medicine" >Medicine 
                                            <option value="Art" >Art 
                                        </select> 
                                    </p>
                                    <br>
                                    <p>
                                        <input type="submit" value="Update" class="bu1">
                                        <input type="reset" value="Reset" class="bu2">
                                    </p>
                                </form>
                        </div>
                    </div>
                </div>
                <div class="g-body-mod pro-advantage-mod" style="background-image:url(image/body_bg.jpg) ">
                    <div class="g-wrap">
                        <div class="g-main">
                            <form action="uidgo.jsp">
                                <p> 
                                    <label>Please select the ID:</label>
                                    <select name="sid2" onchange="change(this);" id="ssid2" class="ra" style=" margin-left:20px;"> 
                                            <%
                                                for(int j=0;j<n;j++)
                                                {
                                                    %>
                                                    <option><%=user[j]%></option>
                                                    <%
                                                }
                                            %>
                                    </select> 
                                    <input type="submit" value="Details" class="bu1">
                                </p> 
                            </form>
                            <!--点击Details 反馈-->
                            <%
                                String sid2=request.getParameter("uuid");
                                if(sid2=="null"||sid2==null)
                                    sid2="";
                                query1="select * from user where user_id=?";
                                pstmt1=con.prepareStatement(query1);
                                pstmt1.setString(1, sid2);
                                ResultSet rs1=pstmt1.executeQuery();
                                while(rs1.next())
                                {
                            %>
                            <form action="admin1C2.jsp">
                                
                                <div style=" display: none;margin-left: 30px;" id="divDe">
                                    <p>
                                        <label>Name:</label><span class="span1" style=" margin-left: 80px"><%=rs1.getString("user_name")%></span>
                                        <input type="text" hidden name="tid2" value="<%=sid2%>">
                                    </p>
                                    <p>
                                        <label>Class:</label><span class="span1" style=" margin-left: 87px"><%=rs1.getString("user_class")%></span>
                                    </p>
                                    <p>
                                        <label>Phone:</label><span class="span1" style=" margin-left: 76px"><%=rs1.getString("user_phone")%></span>
                                    </p>
                                    <p>
                                        <label>Role:</label><span class="span1" style=" margin-left: 91px"><%=rs1.getString("user_role")%></span>
                                    </p>
                                    <p>
                                        <label>Deparment:</label><span class="span1" style=" margin-left:43px"><%=rs1.getString("user_depart")%></span>
                                    </p>
                                    <p>
                                        <input type="submit" value="Delete" class="bu1" style="margin-left: unset">
                                    </p>
                                </div>
                            </form>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
                <div class="g-body-mod pro-advantage-mod">
                    <div class="g-wrap">
                        <div class="g-main">
                            <form action="uidgo1.jsp">
                                <p>
                                    <label>Please select the ID:</label>
                                    <select name="sid3" onchange="change(this);" class="ra" id="ssid3"  style=" margin-left:20px;"> 
                                            <%
                                                for(int j=0;j<n;j++)
                                                {
                                                    %>
                                                    <option><%=user[j]%></option>
                                                    <%
                                                }
                                            %>
                                    </select> 
                                    <input type="submit" value="View" class="bu1">
                                </p>
                            </form>
                            <!--点击View 反馈-->
                            <%
                                String sid3=request.getParameter("uuid1");
                                if(sid3=="null"||sid3==null)
                                    sid3="";
                                query2="select * from user where user_id=?";
                                pstmt2=con.prepareStatement(query2);
                                pstmt2.setString(1, sid3);
                                ResultSet rs2=pstmt2.executeQuery();
                                while(rs2.next())
                                {
                            %>
                                <div style=" display: none;margin-left: 30px;" id="divView">
                                    <p>
                                        <label>Name:</label><span class="span1" style=" margin-left: 80px"><%=rs2.getString("user_name")%></span>
                                    </p>
                                    <p>
                                        <label>Class:</label><span class="span1" style=" margin-left: 87px"><%=rs2.getString("user_class")%></span>
                                    </p>
                                    <p>
                                        <label>Phone:</label><span class="span1" style=" margin-left: 76px"><%=rs2.getString("user_phone")%></span>
                                    </p>
                                    <p>
                                        <label>Role:</label><span class="span1" style=" margin-left: 91px"><%=rs2.getString("user_role")%></span>
                                    </p>
                                    <p>
                                        <label>Deparment:</label><span class="span1" style=" margin-left: 43px"><%=rs2.getString("user_depart")%></span>
                                    </p>
                                </div>
                            <%
                                }
                               }
                               catch(Exception e){}
                            %>
                        </div>
                    </div>
                </div>
            </div>
            <div class="g-sidebar">
                <ul class="lift-wrapper">
                    <li><a href="javascript:void(0)" class="lift-emit" style="width:150px">Add User<i class="ico-state"></i></a></li>
                    <li><a href="javascript:void(0)" class="lift-emit" style="width:150px">Update User<i class="ico-state"></i></a></li>
                    <li><a href="javascript:void(0)" class="lift-emit" style="width:150px">Delete User<i class="ico-state"></i></a></li>
                    <li><a href="javascript:void(0)" class="lift-emit on" style="width:150px">View User<i class="ico-state"></i></a></li>
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
        //add 反馈
        var tip="<%=request.getParameter("tip")%>";
        if(tip=="yes")
        {
            alert("Congratulations, add success!");
        }
        var same="<%=request.getParameter("same")%>";
        if(same=="yes")
        {
            alert("This User ID has been uesed,please use other id...");
            document.getElementById("ttid").focus();
        }
        
        //update 反馈
        var tip1="<%=request.getParameter("tip1")%>";
        if(tip1=="yes")
        {
            alert("Congratulations, update success!");
        }
        
        //Details 反馈
        
        var uuid="<%=request.getParameter("uuid")%>";
        if(uuid!="null")
        {
            document.getElementById("ssid2").focus();
            document.getElementById("ssid2").value=uuid;
            document.getElementById('divDe').style.display='block';  
        }
        
        //Delete 反馈
        var tip2="<%=request.getParameter("tip2")%>";
        if(tip2=="yes")
        {
            alert("Congratulations, delete success!");
        }
        
        
        //View 反馈
        
        var uuid1="<%=request.getParameter("uuid1")%>";
        if(uuid1!="null")
        {
            document.getElementById("ssid3").focus();
            document.getElementById("ssid3").value=uuid1;
            document.getElementById('divView').style.display='block';  
        }
        
        //add 检查
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
                alert("Please choose role...");
            return false;
              
            }
          }
          return true;
        }
        
        //update 检查
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
            var checked = false;
            var radios = document.getElementsByName('r2');
            for (var x=0; x<radios.length; x++) {
                checked = checked || radios[x].checked;
            }
            if (!checked) {
                alert("Please choose role...");
            return false;
              
            }
          }
          return true;
        }
    </script>
</html>
