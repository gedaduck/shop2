<%@ page import="java.util.List" %>
<%@ page import="dao.get.GetCart" %>
<%@ page import="dao.get.GetUser" %>
<%@ page import="dao.get.GetOrder" %>
<%@ page import="vo.*" %>
<%@ page import="com.mysql.cj.x.protobuf.MysqlxCrud" %><%--
  Created by IntelliJ IDEA.
  User: 张翔1
  Date: 2020/12/16
  Time: 16:11
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
    <div class="wrapper clearfix"><a href="index.jsp" class="fl">首页</a><span>/</span><a href="myImformation.jsp" class="on">个人中心</a></div>
</div>
<!------------------------------Bott------------------------------>
<div class="Bott">
    <div class="wrapper clearfix">
        <div class="zuo fl">
            <h3>

                <p class="clearfix">
                    <span class="fl">[${sessionScope.user.user_name}]</span>
                    <span class="fr"><a href="userController?method=logout">[退出登录]</a></span>
                </p>
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
        <div class="you fl">
            <div class="tx clearfix">
                <div class="fl clearfix">
                    <a href="#" class="fl"><img src="res/image/user_icon.jpg" style="width: 90px;height: 90px;border-radius: 45px;"/></a>
                    <p class="fl"><span>${sessionScope.user.user_name}</span><a href="modify.jsp">修改个人信息></a></p>
                </div>

            </div>
            <%
                GetCart getCart=new GetCart();
                List<Cart> cartList=getCart.getCart(user.getUser_account());
                GetOrder getOrder=new GetOrder();
                List<Orders> ordersList=getOrder.getOrder(user.getUser_account());
            %>
            <div class="bott">
                <div class="clearfix">
                    <a href="#" class="fl"><img src="res/image/gxin1.jpg" /></a>
                    <p class="fl"><span>我的订单：<strong><%=ordersList.size()%></strong></span><a href="order.jsp">查看我的订单></a></p>
                </div>
                <div class="clearfix">
                    <a href="#" class="fl"><img src="res/image/gxin2.jpg" /></a>
                    <p class="fl"><span>我的购物车：<strong><%=cartList.size()%></strong></span><a href="cart.jsp">查看购物车></a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--返回顶部-->
<div class="gotop">
    <a href="cart.jsp">
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
    <a href="myImformation.jsp">
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

<script src="res/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
