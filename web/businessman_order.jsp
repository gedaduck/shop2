
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="vo.Orders" %>
<%@ page import="vo.Goods" %><%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/22
  Time: 14:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品信息</title>
    <link rel="stylesheet" type="text/css" href="res/css/public.css" />
    <link rel="stylesheet" type="text/css" href="res/css/mygxin.css" />
    <link rel="stylesheet" type="text/css" href="res/css/mygrxx.css"/>
    <link rel="stylesheet" type="text/css" href="res/css/myorder.css"/>
</head>
<body>
<!---------------------------head---------------------------->
<%@include file="block/top-main.jsp"%>
<!------------------------------idea------------------------------>
<div class="address mt" id="add">
    <div class="wrapper clearfix"><a href="index.jsp" class="fl">首页</a><span>/</span><a href="businessman_menu.jsp" class="on">商家中心</a></div>
</div>
<!------------------------------Bott------------------------------>
<%
    Object object2=session.getAttribute("businessman");
    Object object3=session.getAttribute("goodsList");
    Object object4=session.getAttribute("ordersList");
    businessman=new Businessman();
    List<Orders> ordersList=new ArrayList<Orders>();
    List<Goods> goodsList=new ArrayList<Goods>();

    if(object3 instanceof List ){
        goodsList=(List<Goods>)object3;
    }
    if(object4 instanceof List ){
        ordersList=(List<Orders>)object4;
    }
    if(object2 instanceof Businessman) {
        businessman=(Businessman)object2;
    }
%>
<div class="Bott">
    <div class="wrapper clearfix">
        <div class="zuo fl">
            <h3>
                <a href="#"><img style="width: 50px;height: 50px;" src="res/image/businessman.jpg" /></a>
                <p class="clearfix"><span class="fl">[<%=businessman.getBusinessman_name()%>]</span><span class="fr">
                    <a href="businessmanController?method=loginOut">[退出登录]</a></span></p>
            </h3>
            <div>
                <h4>商家功能</h4>
                <ul>
                    <li><a href="businessman_store.jsp">查看店铺</a></li>
                    <li><a href="businessman_add_goods.jsp">添加商品</a></li>
                    <li><a href="businessman_order.jsp">查看订单</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl">
            <div class="my clearfix" >
                <h2 class="fl" style="width: 800px;">我的订单</h2>
            </div>
            <div class="dlist clearfix" style="margin: 0px;">
                <ul class="fl clearfix" id="wa">
                    <li class="on"><a href="#2">全部订单</a></li>
                </ul>
            </div>
            <%
                for(int i=0;i<ordersList.size();i++){
                    String order_str=ordersList.get(i).getOrder_send();
                    if(order_str.equals("已发货")){
                        order_str=ordersList.get(i).getOrder_get();
                    }
            %>
            <div class="dkuang"><p class="one"><%=order_str%></p>
                <div class="word clearfix">
                    <ul class="fl clearfix">
                        <li><%=ordersList.get(i).getOrder_date()%></li>
                        <li><%=ordersList.get(i).getUser_account()%></li>
                        <li>订单号:<%=ordersList.get(i).getOrder_id()%></li>
                        <li>在线支付</li>
                        <li><%=ordersList.get(i).getOrder_send()%></li>
                    </ul>
                    <p class="fr">订单金额：<span><%=ordersList.get(i).getPrice()*ordersList.get(i).getGoods_num()%></span>元</p>

                </div>
                <%
                    int goods_id=0;
                    for(int j=0;j<goodsList.size();j++){
                        if(ordersList.get(i).getGoods_id()==goodsList.get(j).getGoods_id()){
                            goods_id=j;
                        }
                    }
                %>
                <div class="shohou clearfix">
                    <a href="#" class="fl"><img src="<%=goodsList.get(goods_id).getGoods_img()%>"/></a>
                    <p class="fl"><a href="#"><%=ordersList.get(i).getGoods_name()%></a>
                        <a href="#">¥<%=ordersList.get(i).getPrice()%>×<%=ordersList.get(i).getGoods_num()%></a>
                        <a href="#">评论：<%=ordersList.get(i).getOrder_comment()%></a>
                    </p>
                    <%
                        if(order_str.equals("未发货")){
                    %>
                    <p class="fr"><a href="businessmanController?method=sendGoods&order_id=<%=ordersList.get(i).getOrder_id()%>" style="background: #A10000;color: #fff;border: 1px solid #A10000;">确认发货</a></p>
                    <%}else if(order_str.equals("未收货")){%>
                    <p class="fr"><a href="#">等待收货</a></p>
                    <%}else if(order_str.equals("已收货")){%>
                    <p class="fr"><a href="#">订单完成</a></p>
                    <%}%>
                </div>
            </div>
            <%}%>
        </div>
    </div>
</div>
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