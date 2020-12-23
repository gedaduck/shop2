<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="utf-8"%>
     <%@ page import="java.sql.*"%>

 <%@  page import="java.util.ArrayList"%>

  <%@  page import="java.util.List"%>

<%@ page import="vo.User" %>
<%@ page import="dao.get.GetOrder" %>
<%@ page import="vo.Orders" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>最家</title>
    <link rel="stylesheet" type="text/css" href="res/css/public.css"/>
    <link rel="stylesheet" type="text/css" href="res/css/myorder.css"/>
</head>
<body>
<!------------------------------head------------------------------>
<%@include file="block/top-main.jsp"%>
<!------------------------------idea------------------------------>

<div class="address mt">
    <div class="wrapper clearfix"><a href="#" class="fl">首页</a><span>/</span><a href="myImformation.jsp">个人中心</a><span>/</span><a href="order.jsp" class="on">我的订单</a></div>
</div>
<!------------------------------Bott------------------------------>
<div class="Bott">
    <div class="wrapper clearfix">
        <div class="zuo fl">
            <h3>
                <a href="#"><img src="img/tx.png"/></a>
                <p class="clearfix"><span class="fl"><%=user.getUser_name()%></span><span class="fr"><a href="userController?method=logout">退出登陆</a> </span></p></h3>
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
            <div class="my clearfix"><h2 class="fl">我的订单</h2></div>
            <div class="dlist clearfix">
                <ul class="fl clearfix" id="wa">
                    <li class="on"><a href="#2">全部有效订单</a></li>
                </ul>
            </div>
            <%
            GetOrder orderGet=new GetOrder();
            List<Orders> aorder = new ArrayList();
            aorder=orderGet.getOrder(user.getUser_account());
            System.out.println(aorder.size());
            for(Orders order:aorder){
                System.out.println(order.getOrder_send());
                System.out.println(order.getOrder_get());
            	if(order.getOrder_get().equals("已收货") && order.getGoods_comment().equals("暂无")){
            %>
            <div class="dkuang">
                <p class="one">已收货</p>
                <div class="word clearfix">
                    <ul class="fl clearfix">
                        <li><%=order.getOrder_date() %></li>
                        <li><%=order.getUser_account() %></li>
                        <li>订单号：<%=order.getOrder_id() %></li>
                    </ul>
                    <p class="fr">订单金额：<span><%=order.getPrice() %></span>元</p></div>
                <div class="shohou clearfix"><a href="#" class="fl"><img src="img/g1.jpg"/></a>
                    <p class="fl"><a href="#"><%=order.getGoods_name() %></a><a href="#">¥<%=order.getPrice() %>×<%=order.getGoods_num() %></a></p>
                    <p class="fr"><a href="comment.jsp?order_id=<%=order.getOrder_id() %>&user_account=<%=user.getUser_name()%>">去评价</a></p></div>
            </div>
            <%
            	}
            	if(!order.getGoods_comment().equals("暂无")){%>
                    <div class="dkuang">
                        <p class="one">已评价</p>
                        <div class="word clearfix">
                            <ul class="fl clearfix">
                                <li><%=order.getOrder_date() %></li>
                                <li><%=order.getUser_account() %></li>
                                <li>订单号：<%=order.getOrder_id() %></li>
                            </ul>
                            <p class="fr">订单金额：<span><%=order.getPrice() %></span>元</p>
                        </div>
                    <div class="shohou clearfix">
                        <a href="#" class="fl"><img src="img/g1.jpg"/></a>
                        <p class="fl"><a href="#"><%=order.getGoods_name() %></a><a href="#">¥<%=order.getPrice() %>×<%=order.getGoods_num() %></a></p>
                        <p class="fr"><a href="comment.jsp?goods_id=<%=order.getGoods_id() %>&user_account=<%=user.getUser_name()%>">已评价</a></p>
                    </div>
                </div>
                <%
                	
            	}
            	if(order.getOrder_send().equals("已发货")&& order.getOrder_get().equals("未收货")){
            	%>
            <div class="dkuang">
                <p class="one">未收货</p>
                <div class="word clearfix">
                    <ul class="fl clearfix">
                        <li><%=order.getOrder_date() %></li>
                        <li><%=order.getUser_account() %></li>
                        <li>订单号：<%=order.getOrder_id() %></li>
                    </ul>
                    <p class="fr">订单金额：<span><%=order.getPrice() %></span>元</p></div>
                <div class="shohou clearfix"><a href="#" class="fl"><img src="img/g1.jpg"/></a>
                    <p class="fl"><a href="#"><%=order.getGoods_name() %></a><a href="#">¥<%=order.getPrice() %>×<%=order.getGoods_num() %></a></p>
                    <p class="fr"><a href="Getservlet?goods_id=<%=order.getGoods_id() %>&user_account=<%=user.getUser_name()%>">确认收货</a></p></div>
            </div>
            <%} 
            	if(order.getOrder_send().equals("待发货")){
            %>
            <div class="dkuang deng"><p class="one">待发货</p>
                <div class="word clearfix">
                    <ul class="fl clearfix">
                        <li><%=order.getOrder_date() %></li>
                        <li><%=order.getUser_account() %></li>
                        <li>订单号：<%=order.getOrder_id() %></li>
                    </ul>
                    <p class="fr">订单金额：<span><%=order.getPrice() %></span>元</p></div>
                <div class="shohou clearfix"><a href="#" class="fl"><img src="img/g1.jpg"/></a>
                    <p class="fl"><a href="#"><%=order.getGoods_name() %></a><a href="#">¥<%=order.getPrice() %>×<%=order.getGoods_num() %></a></p>
                    <p class="fr"><a href="#">付款成功</a></p></div>
            </div>
             <%} 
             }%>
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
    <p>400-800-8200</p>
</div>
<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>