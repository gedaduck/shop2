<%@ page import="vo.User" %><%--
  Created by IntelliJ IDEA.
  User: 张翔1
  Date: 2020/12/14
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8" />
    <title>修改信息</title>
    <link rel="stylesheet" type="text/css" href="res/css/public.css" />
    <link rel="stylesheet" type="text/css" href="res/css/mygrxx.css" />
</head>

<body>
<!---------------------------head---------------------------->
<%@include file="block/top-main.jsp"%>
<!------------------------------idea------------------------------>
<div class="address mt" id="add">
    <div class="wrapper clearfix"><a href="index.jsp" class="fl">首页</a><span>/</span><a href="myImformation.jsp" class="on">个人中心</a></div>
</div>
<!------------------------------Bott------------------------------>
<div class="Bott">
    <div class="wrapper clearfix">
        <div class="zuo fl">
            <h3>
                <a href="#"><img src="#" /></a>
                <p class="clearfix"><span class="fl">[${sessionScope.user.user_name}]</span><span class="fr"><a href="userController?method=logout">[退出登录]</a></span></p>
            </h3>
            <div>
                <h4>我的交易</h4>
                <ul>
                    <li><a href="cart.jsp">我的购物车</a></li>
                    <li><a href="order.jsp">我的订单</a></li>
                </ul>
                <h4>个人中心</h4>
                <ul>
                    <li class="on"><a href="myImformation.jsp">我的中心</a></li>
                </ul>
                <h4>账户管理</h4>
                <ul>
                    <li><a href="modify.jsp">个人信息</a></li>
                    <li><a href="repwd.jsp">修改密码</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl"><h2>个人信息</h2>
            <div class="gxin">
                <div class="tx">
                    <a href="#"><img src="img/tx.png" /></a>
                </div>
                <div class="xx">
                    <h3 class="clearfix"><strong class="fl">基础资料</strong><a href="#" class="fr" id="edit1">编辑</a></h3>
                    <div>姓&nbsp;&nbsp;名：${sessionScope.user.user_name}</div>
                    <div>联系方式：${sessionScope.user.telephone}</div>
                    <div>地&nbsp;&nbsp;址：${sessionScope.user.address}</div>
                    <div>个人简介：${sessionScope.user.id_card}</div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="gotop">
    <a href="cart.html">
        <dl>
            <dt><img src="res/image/gt1.png"/></dt>
            <dd>去购<br/>物车</dd>
        </dl>
    </a>
    <a href="#" class="dh">
        <dl>
            <dt><img src="res/image/gt2.png"/></dt>
            <dd>联系<br/>客服</dd>
        </dl>
    </a>
    <a href="mygxin.html">
        <dl>
            <dt><img src="res/image/gt3.png"/></dt>
            <dd>个人<br/>中心</dd>
        </dl>
    </a>
    <a href="#" class="toptop" style="display: none;">
        <dl>
            <dt><img src="img/gt4.png"/></dt>
            <dd>返回<br/>顶部</dd>
        </dl>
    </a>
    <p>400-800-8200</p>
</div>
<!--遮罩-->
<div class="mask"></div>
<div class="bj">
    <div class="clearfix">
        <a href="#" class="fr gb"><img src="res/image/icon4.png" /></a>
    </div>
    <h3>编辑基础资料</h3>
    <form action="userController?method=modify" method="post">
        <p><label style="width: 60px;display: inline-block">姓&nbsp;&nbsp;名：</label><input type="text" value="${sessionScope.user.user_name} " name="name" /></p>
        <p><label style="width: 60px;display: inline-block">联系方式：</label><input type="text" value="${sessionScope.user.telephone}" name="telephone"/></p>
        <p><label style="width: 60px;display: inline-block">地&nbsp;&nbsp;址：</label><input type="text" value="${sessionScope.user.address}" name="address"/></p>
        <p><label style="width: 60px;display: inline-block">个人简介：</label><input type="text" value="${sessionScope.user.id_card} " name="id_card"></p>
        <div class="bc"><input type="submit" value="保存" /><input type="button" value="取消" /></div>
    </form>
</div>
<script src="res/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
