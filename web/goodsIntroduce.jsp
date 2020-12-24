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
    <link rel="stylesheet" type="text/css" href="res/css/mygxin.css"/>
</head>
<body>
<%@include file="block/top-main.jsp"%>
<!-----------------address------------------------------->
<div class="address">
    <div class="wrapper clearfix">
        <a href="index.jsp">首页</a><span>/${requestScope.goods.goods_name}</span></a>
    </div>
</div>
<!-----------------------Detail------------------------------>
<div class="detCon">
    <div class="proDet wrapper">
        <div class="proCon clearfix">
            <div class="proImg fl" style="padding-left: 130px;">
                <img style="width: 320px;height: 320px;" class="det" src="${requestScope.goods.goods_img}" />
            </div>
            <div class="fr intro">
                <div class="title">
                    <h4>${requestScope.goods.goods_name}</h4>
                    <p>${requestScope.goods.goods_introduce}</p><span>${requestScope.goods.price}</span></div>
                <div class="proIntro">
                    <div class="num clearfix">
                        <img class="fl sub" src="res/image/sub.jpg">
                        <span class="fl" contentEditable="true" id="number">1</span>
                        <img class="fl add" src="res/image/add.jpg">
                    </div>
                </div>
                <%
                    if(session.getAttribute("user")!=null){
                %>
                <div class="btns clearfix">
                    <a href="javascript:buynow()">
                        <p class="buy fl">立即购买</p>
                    </a>
                    <a href="javascript:addcart()">
                        <p class="cart fr">加入购物车</p>
                    </a>
                </div>
                <%}else{%>
                <div class="btns clearfix">
                    <a href="login.jsp">
                        <p class="buy fl">立即购买</p>
                    </a>
                    <a href="login.jsp">
                        <p class="cart fr">加入购物车</p>
                    </a>
                </div>
                <%}%>
            </div>
        </div>
    </div>
</div>
<div class="introMsg wrapper clearfix">
    <div style="width: 1200px;" class="msgL fl">
        <div class="msgTit clearfix"><p>所有评价</p></div>
        <div class="">
            <div class="eva">
                <%
                    object1=request.getAttribute("goodsEvaluationList");
                    List<Orders> ordersList=null;
                    if(object1 instanceof List){
                        ordersList=(List<Orders>) object1;
                    }
                    if(ordersList==null){%>
                <div>
                    暂无评论
                </div>
                <%
                    }
                    for(Orders orders:ordersList){%>
                <div class="per clearfix"><img style="width: 50px;height: 50px;border-radius: 25px;" class="fl" src="res/image/user_icon.jpg">
                    <div class="perR fl">
                        <p><%=orders.getUser_account()%></p>
                        <p><%=orders.getOrder_comment()%></p>
                        <p><span><%=orders.getOrder_date()%></span></p>
                    </div>
                </div>
                <%
                    }
                %>
                <div>
                    暂无评论
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function  buynow() {
        var number=document.getElementById('number').innerHTML;
        window.location.href='paynow.jsp?goods_id=${requestScope.goods.goods_id}&number='+number;
    }
    function addcart() {
        var number=document.getElementById('number').innerHTML;
        window.location.href='Addservlet?goods_id=${requestScope.goods.goods_id}&number='+number;

    }
</script>
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
