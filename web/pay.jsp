<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="utf-8"%>
     <%@ page import="java.sql.*"%>

 <%@  page import="java.util.ArrayList"%>
<%@  page import="java.util.List"%>


<%@ page import="vo.User" %>
<%@ page import="dao.get.GetCart" %>
<%@ page import="vo.Cart" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>pay</title>
    <link rel="stylesheet" type="text/css" href="res/css/public.css"/>
    <link rel="stylesheet" type="text/css" href="res/css/proList.css"/>
    <link rel="stylesheet" type="text/css" href="res/css/mygxin.css"/>
</head>
<body>

<!----------------------------------------order------------------>
<div class="head ding">
    <div class="wrapper clearfix">
        <ul class="clearfix" id="bott">
            <li><a href="index.jsp">首页</a></li>
            <li><a href="cart.jsp">购物车</a></li>
        </ul>
    </div>
</div>
<% User user=(User)session.getAttribute("user");%>
<div class="order cart mt">
    <div class="site">
        <p class="wrapper clearfix"><span class="fl">订单确认</span></p>
    </div>
    <div class="orderCon wrapper clearfix">
        <div class="orderL fl"><h3>收件信息</h3>
            <div class="addres clearfix">
                <div class="addre fl on">
                    <div class="tit clearfix">
                        <p class="fl"><%=user.getUser_name() %> <span class="default"></span></p>
                    </div>
                    <div class="addCon">
                        <p><%=user.getAddress() %></p>
                        <p><%=user.getTelephone() %></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="orderR fr">
            <div class="msg">
                <h3>订单内容<a href="cart.jsp" class="fr">返回购物车</a></h3><!--------ul---------------->
                <%GetCart cartController=new GetCart();
                List<Cart> acart = new ArrayList();
                acart=cartController.getCart(user.getUser_account());
                session.setAttribute("acart",acart);
                int numsum=0;double pricesum=0;
                for(int i=0;i<acart.size();i++){
                    Cart cart=(Cart)acart.get(i); %>
                    <ul class="clearfix">
                        <li class="fl"><img src="<%=cart.getGoods_img()%>"></li>
                        <li class="fl"><p><%=cart.getGoods_name() %></p><p>数量：<%=cart.getNumber() %></p></li>
                        <li class="fr">￥<%=cart.getPrice() %></li>
                    </ul>
                    <%numsum+=cart.getNumber();
                    pricesum+=cart.getPrice()*cart.getNumber(); };%>
            </div><!--------tips---------------->
            <div class="tips">
                <p><span class="fl">商品金额：</span><span class="fr">￥<%=pricesum %></span></p>
                <p><span class="fl">运费：</span><span class="fr">免运费</span></p>
            </div>
            <div class="count tips">
                <p><span class="fl">合计：</span><span class="fr">￥<%=pricesum %></span></p>
            </div>
            <a href="Addorderservlet?user_account=<%=user.getUser_account() %>" class="pay">去支付</a>
        </div>
    </div>
</div>
<!--返回顶部-->
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
</div>

<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/pro.js" type="text/javascript" charset="utf-8"></script>
<script src="js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>