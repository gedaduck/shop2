<%@ page import="vo.Goods" %><%--
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
                <img class="det" src="res/image/${requestScope.goods.goods_img}" />
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
</body>
</html>
