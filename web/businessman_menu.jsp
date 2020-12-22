<%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/21
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息</title>
    <link rel="stylesheet" type="text/css" href="res/css/public.css" />
    <link rel="stylesheet" type="text/css" href="res/css/mygxin.css" />
</head>
<body>
    <!---------------------------head---------------------------->
    <%@include file="block/top-main.jsp"%>
    <!------------------------------idea------------------------------>
    <div class="address mt" id="add">
        <div class="wrapper clearfix"><a href="index.jsp" class="fl">首页</a><span>/</span><a href="admin_menu.jsp" class="on">控制台</a></div>
    </div>
    <!------------------------------Bott------------------------------>
    <div class="Bott">
        <div class="wrapper clearfix">
            <div class="zuo fl">
                <h3>
                    <a href="#"><img style="width: 50px;height: 50px;" src="res/image/businessman.jpg" /></a>
                    <p class="clearfix"><span class="fl">[商家]</span><span class="fr"><a href="AdminController?method=adminLoginOut">[退出登录]</a></span></p>
                </h3>
                <div>
                    <h4>商家功能</h4>
                    <ul>
                        <li><a href="businessman_store.jsp">查看店铺</a></li>
                        <li><a href="businessman_add_goods.jsp">添加商品</a></li>
                        <li><a href="#">查看订单</a></li>
                    </ul>
                </div>
            </div>
            <div class="you fl">
                <div class="tx clearfix">
                    <div class="fl clearfix">
                        <a href="#" class="fl"><img style="width: 50px;height: 50px;" src="res/image/businessman.jpg" /></a>
                        <p class="fl"><span>商家姓名</span><a href="#">修改个人信息></a></p>
                    </div>

                </div>
                <div class="bott">
                    <div class="clearfix">
                        <a href="#" class="fl"><img src="res/image/gxin1.jpg" /></a>
                        <p class="fl"><span>订单数量：<strong>0</strong></span><a href="#">查看所有订单></a></p>
                    </div>
                    <div class="clearfix">
                        <a href="#" class="fl"><img src="res/image/gxin2.jpg" /></a>
                        <p class="fl"><span>店铺商品数量：<strong>0</strong></span><a href="#">查看店铺商品></a></p>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="footer">
    </div>
    <script src="res/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="res/js/public.js" type="text/javascript" charset="utf-8"></script>
    <script src="res/js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
