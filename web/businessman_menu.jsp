<%@ page import="java.util.List" %>
<%@ page import="vo.Goods" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vo.Orders" %><%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/21
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商家中心</title>
    <link rel="stylesheet" type="text/css" href="res/css/public.css" />
    <link rel="stylesheet" type="text/css" href="res/css/mygxin.css" />
</head>
<body>
    <!---------------------------head---------------------------->
    <%@include file="block/top-main.jsp"%>
    <!------------------------------idea------------------------------>
    <div class="address mt" id="add">
        <div class="wrapper clearfix">
            <a href="index.jsp" class="fl">首页</a><span>/</span>
            <a href="businessman_menu.jsp" class="on">商家中心</a>
        </div>
    </div>
    <!------------------------------Bott------------------------------>
    <%
        Object object2=session.getAttribute("businessman");
        Object object3=session.getAttribute("goodsList");
        Object object4=session.getAttribute("ordersList");
        businessman=new Businessman();
        List<Goods> goodsList=new ArrayList<Goods>();
        List<Orders> ordersList=new ArrayList<Orders>();
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
                    <a href="#"></a>
                    <p class="clearfix"><span class="fl">
                        [<%=businessman.getBusinessman_name()%>]</span>
                        <span class="fr"><a href="businessmanController?method=loginOut">[退出登录]</a></span>
                    </p>
                </h3>
                <div>
                    <h4>商家功能</h4>
                    <ul>
                        <li><a href="businessman_store.jsp">查看店铺</a></li>
                        <li><a href="businessman_add_goods.jsp">添加商品</a></li>
                        <li><a href="businessmanController?method=getOrders">查看订单</a></li>
                    </ul>
                </div>
            </div>
            <div class="you fl">
                <div class="tx clearfix">
                    <div class="fl clearfix">
                        <a href="#" class="fl"><img style="width: 90px;height: 90px;border-radius: 45px;" src="res/image/businessman.jpg" /></a>
                        <p class="fl"><span><%=businessman.getBusinessman_name()%></span></p>
                    </div>

                </div>
                <div class="bott">
                    <div class="clearfix">
                        <a href="#" class="fl"><img src="res/image/gxin1.jpg" /></a>
                        <p class="fl"><span>订单数量：<strong><%=ordersList.size()%></strong></span><a href="businessman_order.jsp">查看所有订单></a></p>
                    </div>
                    <div class="clearfix">
                        <a href="#" class="fl"><img src="res/image/gxin2.jpg" /></a>
                        <p class="fl"><span>店铺商品数量：<strong><%=goodsList.size()%></strong></span><a href="businessman_store.jsp">查看店铺商品></a></p>
                    </div>
                </div>
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
