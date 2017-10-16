<%-- 
    Document   : admin2.jsp
    Created on : 2017-9-22, 8:56:58
    Author     : snooker
--%>

<%@page import="java.io.OutputStream"%>
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
                width: 183px;
                height: 30px;
                margin-left: -0.2px;
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
             .span1{
               font-size: 16px;
            }
             .footer p {
                text-align: center;
                margin-top: -80px;
                line-height: 20px;
            }
        </style>
        <script>
            var openFile = function(event) {
                //检验是否为图像文件  
                var file = document.getElementById("file").files[0];
                if(!/image\/\w+/.test(file.type)) {
                    alert("This is not a picture file! Check, please! ");
                }
              var input = event.target;
              var reader = new FileReader();
              reader.onload = function(){
                  
                var dataURL = reader.result;
                var output = document.getElementById('output');
                output.src = dataURL;
              };
              reader.readAsDataURL(input.files[0]);
            };
        </script>
    </head>
    <body>
        <div class="g-header" style=" background-color: #f8f5d0">
            <div class="g-wrap">
                <div class="header-nav">
                    <ul>
                        <li><a href="admin.jsp">Personal Center</a></li>
                        <li class="pipe">|</li>
                        <li><a href="admin1.jsp">User Management </a></li>
                        <li class="pipe">|</li>
                        <li><a class="curr" href="javascript:void(0);">Book Management </a></li>
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
                            <form action="admin2C.jsp" name="form1" onsubmit="return myCheck()">
                                <div style=" margin-top:-20px;">
                                    <p>
                                        <label>ID</label>
                                        <input type="text" class="in" style="width:160px" name="tid" id="ttid">
                                    </p>
                                    <p>
                                        <label>Title</label>
                                        <input type="text" class="in" style="width:160px" name="ttitle">
                                    </p>
                                    <p>
                                        <label>Author</label>
                                        <input type="text" class="in" style="width:160px" name="tauthor">
                                    </p>
                                    <p>
                                        <label >Price</label>
                                        <input type="text" class="in" style="width:160px;" name="tprice"
                                               onkeyup="this.value=(this.value.match(/\d+(\.\d{0,2})?/)||[''])[0]" 
                                               placeholder="                                     ¥">
                                    </p>
                                    <p>
                                        <label>Publisher</label>
                                        <input type="text" class="in" style="width:160px" name="tpub">
                                    </p>
                                </div>
                                <div style="margin-left: 250px;margin-top: -281px;">
                                    <p>
                                        <label>Type</label>
                                        <select name="ttype" onchange="change(this);" class="ra" style="display: block"> 
                                            <option selected="selected" value="Other">Other 
                                            <option  value="IT">IT
                                            <option value="Medicine" >Medicine 
                                            <option value="Art" >Art 
                                        </select> 
                                    </p>
                                    <p>
                                        
                                        <label>Amount</label>
                                        <input type="text" class="in" style="width:160px" name="tamount"
                                               onkeyup="this.value=this.value.replace(/\D/g,'')"
                                               maxlength="5" placeholder="Max length:5">
                                    </p>
                                    <p>
                                        <label>Publication Date</label>
                                        <input type="date" name="tpbdate">
                                    </p>
                                    <p>
                                        <label>Upload Picture</label>
                                        <input type="file" id="file" accept="image/jpg,image/png"  name="tpicture" onchange="openFile(event)" style="display: block;width:65px">
                                    </p>
                                </div>
                                <div style=" margin-left:480px; height:210px;width:140px;margin-top: -210px">
                                    <img id="output" style=" min-width: 100%; max-height: 100%">
                                </div>
                                <div style="margin-left: 200px;margin-top: 40px;">
                                    <input type="submit" value="Add" class="bu1">
                                    <input type="reset" value="Reset" class="bu2">
                                </div>
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
                                    query="select * from book";
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
                                        user[m]=rs.getString("book_id");
                                        m++;
                                    }
                                %>
                                <form action="admin2C1.jsp" name="form2" onsubmit="return myCheck1()">
                                    <p>
                                        <label>ID</label>
                                        <select name="sid1" onchange="change(this);" class="ra" style=" margin-left:62px;"> 
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
                                            <label>Price</label>
                                            <input type="text" class="in"  name="tprice1"
                                                   onkeyup="this.value=(this.value.match(/\d+(\.\d{0,2})?/)||[''])[0]" 
                                                   placeholder="                                                        ¥">
                                        </p>
                                        <p>
                                            <label>Amount</label>
                                            <input type="text" class="in" name="tamount1"
                                                   onkeyup="this.value=this.value.replace(/\D/g,'')"
                                                   maxlength="5" placeholder="Max length:5">
                                        </p>
                                        <br><br>
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
                            <form action="bidgo.jsp">
                                <p>
                                    <label>Please select the ID:</label>
                                    <select name="sid2" onchange="change(this);" class="ra" id="ssid2" style=" margin-left:20px;"> 
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
                                    query1="select * from book where book_id=?";
                                    pstmt1=con.prepareStatement(query1);
                                    pstmt1.setString(1, sid2);
                                    ResultSet rs1=pstmt1.executeQuery();
                                    while(rs1.next())
                                    {
                                %>      
                                <form action="admin2C2.jsp">
                                   <div style=" display: none;margin-left: 30px;" id="divDe">
                                       <p>
                                           <label>Title</label><span class="span1" style=" margin-left: 110px"><%=rs1.getString("book_title")%></span>
                                        <input type="text" hidden name="tid2" value="<%=sid2%>">
                                       </p>
                                       <p>
                                           <label>Author</label><span class="span1" style=" margin-left: 92px"><%=rs1.getString("book_author")%></span>
                                       </p>
                                        <p>
                                            <label>Price</label><span class="span1" style=" margin-left: 105px"><%=rs1.getString("book_price")%></span>
                                       </p>
                                       <p>
                                           <label>Publisher</label><span class="span1" style=" margin-left: 75px"><%=rs1.getString("book_publisher")%></span>
                                       </p>
                                       <p>
                                           <label>Type</label><span class="span1" style=" margin-left: 107px"><%=rs1.getString("book_type")%></span>
                                       </p>
                                        <p>
                                            <label>Amount</label><span class="span1" style=" margin-left: 81px"><%=rs1.getString("book_amount")%></span>
                                       </p>
                                       <p>
                                           <label>Publish Date</label><span class="span1" style=" margin-left: 50px" ><%=rs1.getString("book_p_date")%></span>
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
                            <form action="bidgo1.jsp">
                                <p>
                                    <label>Please select the ID:</label>
                                    <select name="sid3" onchange="change(this);" class="ra" id="ssid3" style=" margin-left:20px;"> 
                                            <%
                                                for(int j=0;j<n;j++)
                                                {
                                                    %>
                                                    <option><%=user[j]%></option>
                                                    <%
                                                }
                                            %>
                                    </select> 
                                    <input type="submit" value="View" class="bu1" onclick="view()">
                                </p>
                            </form>
                            <!--点击View 反馈-->
                            <%
                                String sid3=request.getParameter("uuid1");
                                if(sid3=="null"||sid3==null)
                                    sid3="";
                                query2="select * from book where book_id=?";
                                pstmt2=con.prepareStatement(query2);
                                pstmt2.setString(1, sid3);
                                ResultSet rs2=pstmt2.executeQuery();
                                while(rs2.next())
                                {
                            %>
                                <div style=" display: none;margin-left: 30px;" id="divView">
                                    <p>
                                        <label>Title</label><span class="span1" style=" margin-left: 110px"><%=rs2.getString("book_title")%></span>
                                    </p>
                                    <p>
                                        <label>Author</label><span class="span1" style=" margin-left: 92px"><%=rs2.getString("book_author")%></span>
                                    </p>
                                     <p>
                                         <label>Price</label><span class="span1" style=" margin-left: 105px"><%=rs2.getString("book_price")%></span>
                                    </p>
                                    <p>
                                        <label>Publisher</label><span class="span1" style=" margin-left: 75px"><%=rs2.getString("book_publisher")%></span>
                                    </p>
                                    <p>
                                           <label>Type</label><span class="span1" style=" margin-left: 107px"><%=rs2.getString("book_type")%></span>
                                   </p>
                                    <p>
                                        <label>Amount</label><span class="span1" style=" margin-left: 81px"><%=rs2.getString("book_amount")%></span>
                                   </p>
                                   <p>
                                       <label>Publish Date</label><span class="span1" style=" margin-left: 50px" ><%=rs2.getString("book_p_date")%></span>
                                   </p>
                                   
                                   <%
//                                        Blob b = rs2.getBlob("book_picture"); 
//                                        long size = b.length(); 
////                                        out.print(size); 
//                                        byte[] bs = b.getBytes(1, (int)size); 
//                                        response.setContentType("image/png"); 
//                                        OutputStream outs = response.getOutputStream(); 
//                                        outs.write(bs); 
//                                        outs.flush(); 
                                   %>
                                   <p>
                                       <label>Picture</label><span class="span1" style=" margin-left: 90px" ><%=rs2.getBlob("book_picture")%></span>
                                   </p>
                                </div>
                            </form>
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
                    <li><a href="javascript:void(0)" class="lift-emit" style="width:150px">Add Book<i class="ico-state"></i></a></li>
                    <li><a href="javascript:void(0)" class="lift-emit" style="width:150px">Update Book<i class="ico-state"></i></a></li>
                    <li><a href="javascript:void(0)" class="lift-emit" style="width:150px">Delete Book<i class="ico-state"></i></a></li>
                    <li><a href="javascript:void(0)" class="lift-emit on" style="width:150px">View Book<i class="ico-state"></i></a></li>
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
        }
          return true;
        }
    </script>
</html>
