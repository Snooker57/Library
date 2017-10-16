<%-- 
    Document   : admin3
    Created on : 2017-9-22, 8:59:12
    Author     : snooker
--%>

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
            .g-main p{
                font-size: 15px;
                font-family: monospace;
                font-weight:580; 
            }
            .footer p {
                text-align: center;
                margin-top: -80px;
                line-height: 20px;
            }
        </style>
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
                        <li><a href="user2.jsp">Search Book</a></li>
                        <li class="pipe">|</li>
                        <li><a class="curr" href="javascript:void(0);">Compensation Ordinance</a></li>
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
                            <div>
                                <p>
                                    1.  Defaced books and periodicals for 1 yuan per page compensation;
                                </p>
                                <p>
                                    2.  Tear damage books and periodicals per page 2 yuan compensation;
                                </p>
                                <p>
                                    3.  Photocopy book: 20-30 times the original price of the book compensation;
                                </p>
                                <p>
                                    4.  The award of foreign-language books for the reference of similar books implementation;
                                </p>
                                <p>
                                    5.  89 years ago, the publication of ordinary books, according to the original price of 20 times times fine;
                                </p>
                                <p>
                                    6.  90 years after the publication of the ordinary book, according to the original price of 10 times times fine;
                                </p>
                                <p>
                                    7.  Photocopy of the book, according to the original price of 30 times times fine;
                                </p>
                                <p>
                                    8.  The press is fined 5 times times the annual price, and the torn newspaper clippings are punished for theft;
                                </p>
                                <p>
                                    9.  A book in a valuable book, the original price or 2-5 times compensation for a set of valuable books;
                                </p>
                                <p>
                                    10.  If the original book cannot be purchased, the following provisions shall be dealt with;
                                </p>
                                <p>
                                    11.  A book in a valuable book, the original price or 2-5 times compensation for a set of valuable books;
                                </p>
                                <p>
                                    12.  The original price 2-5 times compensation, the dissatisfaction of 1 yuan are calculated at 1 yuan starting &nbsp;&nbsp;from;
                                </p>
                                <p>
                                    13.  If you find the original book within one months, you can receive a refund for the receipt of the compensation, &nbsp;&nbsp;the fee of 2 yuan per volume, expired no longer refund;
                                </p>
                                <p>
                                    14.  Readers should cherish books and periodicals, where the damage to be responsible for compensation.
                                </p>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="g-sidebar">
                <ul class="lift-wrapper">
                    <li><a href="javascript:void(0)" class="lift-emit" style="width:200px">Compensation Rules<i class="ico-state"></i></a></li>
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
</html>
