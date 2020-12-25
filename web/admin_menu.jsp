<%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/17
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员菜单</title>
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
                <a href="#"><img style="width: 90px;height: 90px;border-radius: 45px;" src="res/image/admin.jpg" /></a>
                <p class="clearfix"><span class="fl">[管理员]</span><span class="fr"><a href="AdminController?method=adminLoginOut">[退出登录]</a></span></p>
            </h3>
            <div>
                <h4>管理功能</h4>
                <ul>
                    <li><a href="AdminController?method=getAllUser">管理用户</a></li>
                    <li><a href="AdminController?method=getAllBusinessman">管理商家</a></li>
                    <li><a href="AdminController?method=getAllGoods">管理商品</a></li>
                    <li><a href="AdminController?method=getAllPost">管理帖子</a></li>
                    <li><a href="AdminController?method=getAllOrder">管理订单</a></li>
                </ul>
            </div>
        </div>

    </div>
</div>
<!--返回顶部-->
<div class="gotop">

    <a href="#" class="toptop">
        <dl>
            <dt><img src="res/image/gt4.png"/></dt>
            <dd>返回<br/>顶部</dd>
        </dl>
    </a>
    <a href="#" class="dh">
        <dl>
            <dt><img src="res/image/gt2.png"/></dt>
            <dd>联系<br/>客服</dd>
        </dl>
    </a>
    <p>400-800-8200</p>
</div>
<div class="footer">
</div>
<script src="res/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
