<%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/21
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品信息</title>
    <link rel="stylesheet" type="text/css" href="res/css/public.css" />
    <link rel="stylesheet" type="text/css" href="res/css/mygxin.css" />
    <link rel="stylesheet" type="text/css" href="res/css/mygrxx.css"/>
</head>
<body>
<!---------------------------head---------------------------->
<%@include file="block/top-main.jsp"%>
<!------------------------------idea------------------------------>
<div class="address mt" id="add">
    <div class="wrapper clearfix"><a href="index.jsp" class="fl">首页</a><span>/</span><a href="admin_menu.jsp" class="on">控制台</a></div>
</div>
<!------------------------------Bott------------------------------>
<div class="Bott">
    <div class="wrapper clearfix">
        <div class="zuo fl">
            <h3>
                <a href="#"><img style="width: 50px;height: 50px;" src="res/image/businessman.jpg" /></a>
                <p class="clearfix"><span class="fl">[商家]</span><span class="fr"><a href="AdminController?method=adminLoginOut">[退出登录]</a></span></p>
            </h3>
            <div>
                <h4>商家功能</h4>
                <ul>
                    <li><a href="#">查看店铺</a></li>
                    <li><a href="businessman_add_goods.jsp">添加商品</a></li>
                    <li><a href="#">查看订单</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl"><h2>商品信息</h2>
            <div class="gxin">
                <div class="tx">
                    <a href="#"><img src="img/tx.png" /></a>
                </div>
                <div class="xx">
                    <h3 class="clearfix">
                        <strong class="fl">商品资料</strong>
                        <a href="businessman_modify_goods.jsp" class="fr" id="edit1">修改</a>
                    </h3>
                    <div>
                        商品名：${sessionScope.user.user_name}
                    </div>
                    <div>
                        商品介绍：${sessionScope.user.telephone}
                    </div>
                    <div>
                        商品种类：${sessionScope.user.telephone}
                    </div>
                    <div>
                        商品图片：${sessionScope.user.address}
                    </div>
                    <div>
                        商品价格：${sessionScope.user.id_card}
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<div class="footer">
</div>
<script src="res/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
