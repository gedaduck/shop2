<%@ page language="java" contentType="text/html;charset=UTF-8"
         pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>

<%@  page import="java.util.ArrayList"%>
<%@  page import="java.util.List"%>


<%@ page import="dao.get.GetCart" %>
<%@ page import="vo.*" %>
<%@ page import="dao.dao.GoodsDao" %>
<%@ page import="dao.Impl.GoodsImpl" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>支付订单</title>
    <link rel="stylesheet" type="text/css" href="res/css/public.css"/>
    <link rel="stylesheet" type="text/css" href="res/css/proList.css"/>
    <link rel="stylesheet" type="text/css" href="res/css/mygxin.css"/>
</head>
<body>

<!----------------------------------------order------------------>
<%@include file="block/top-main.jsp"%>
<% user=(User)session.getAttribute("user");%>
<div class="order cart mt" style="margin-bottom: 20px;">
    <div class="site">
        <p class="wrapper clearfix">
            <span class="fl">订单确认</span>
            <img class="top" src="res/image/cartTop02.png">
        </p>
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
            <h3>支付方式</h3><!--------way---------------->
            <div class="way clearfix">
                <img class="on" src="res/image/way01.jpg">
                <img src="res/image/way02.jpg">
                <img src="res/image/way03.jpg">
                <img src="res/image/way04.jpg">
            </div>
            <h3>选择快递</h3><!--------dis---------------->
            <div class="dis clearfix"><span class="on">顺风快递</span><span>百世汇通</span><span>圆通快递</span><span>中通快递</span>
            </div>
        </div>
        <div class="orderR fr">
            <div class="msg">
                <h3>订单内容<a href="index.jsp" class="fr">返回首页</a></h3><!--------ul---------------->
                <%  int goods_id=Integer.valueOf(request.getParameter("goods_id"));
                    int number=Integer.valueOf(request.getParameter("number"));
                    Goods goods=new Goods();
                    GoodsDao goodsImpl=new GoodsImpl();
                    goods=goodsImpl.getGoods(goods_id);
                    session.setAttribute("goods",goods);
                     %>
                <ul class="clearfix">
                    <li class="fl">
                        <img style="width: 150px; height: 150px;" src="<%=goods.getGoods_img()%>">
                    </li>
                    <li class="fl"><p><%=goods.getGoods_name() %></p><p>数量：<%=number%></p></li>
                    <li class="fr">￥<%=goods.getPrice()*number %></li>

                </ul>
            </div><!--------tips---------------->
            <div class="tips">
                <p><span class="fl">商品金额：</span><span class="fr">￥<%=goods.getPrice()*number%></span></p>
                <p><span class="fl">运费：</span><span class="fr">免运费</span></p>
            </div>
            <div class="count tips">
                <p><span class="fl">合计：</span><span class="fr">￥<%=goods.getPrice()*number %></span></p>
            </div>
            <a href="payNowServlet?number=1" class="pay">去支付</a>
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
<script src="res/js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/nav.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/pro.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/cart.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>