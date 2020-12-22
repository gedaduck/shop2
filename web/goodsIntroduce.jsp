<%@ page import="vo.Goods" %>
<%@ page import="java.util.List" %>
<%@ page import="vo.Orders" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 张翔1
  Date: 2020/12/17
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>详情页</title>
    <link rel="stylesheet" type="text/css" href="res/css/public.css"/>
    <link rel="stylesheet" type="text/css" href="res/css/proList.css"/>
</head>
<body>
<%@include file="block/top-main.jsp"%>
<!-----------------address------------------------------->
<div class="address">
    <div class="wrapper clearfix">
        <a href="index.html">首页</a><span>/${requestScope.goods.goods_name}</span></a>
    </div>
</div>
<!-----------------------Detail------------------------------>
<div class="detCon">
    <div class="proDet wrapper">
        <div class="proCon clearfix">
            <div class="proImg fl">
                <img class="det" src="${requestScope.goods.goods_img}" />
            </div>
            <div class="fr intro">
                <div class="title">
                    <h4>${requestScope.goods.goods_name}</h4>
                    <p>${requestScope.goods.goods_introduce}</p><span>${requestScope.goods.price}</span></div>
                <div class="proIntro">


                </div>
                <div class="btns clearfix">
                    <a href="#2">
                        <p class="buy fl">立即购买</p>
                    </a>
                    <a href="#2">
                        <p class="cart fr">加入购物车</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="introMsg wrapper clearfix">
    <div class="msgL fl">
        <div class="msgTit clearfix"><p>所有评价</p></div>
        <div class="">
            <div class="eva">
                <%
                    object1=request.getAttribute("goodsEvaluationList");
                    List<Orders> ordersList=null;
                    if(object1 instanceof List){
                        ordersList=(List<Orders>) object1;
                    }
                    for(Orders orders:ordersList){%>
                <div class="per clearfix"><img class="fl" src="img/temp/per01.jpg">
                    <div class="perR fl">
                        <p><%=orders.getUser_account()%></p>
                        <p><%=orders.getGoods_evaluation()%></p>
                        <p><span><%=orders.getOrder_date()%></span></p>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </div>
</div>

<script src="res/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/nav.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/pro.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/cart.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    jQuery(".bottom").slide({
        titCell: ".hd ul",
        mainCell: ".bd .likeList",
        autoPage: true,
        autoPlay: false,
        effect: "leftLoop",
        autoPlay: true,
        vis: 1
    });
</script>
</body>
</html>
