<%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/22
  Time: 1:14
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
    <div class="wrapper clearfix">
        <a href="index.jsp" class="fl">首页</a><span>/</span><a href="admin_menu.jsp" class="on">商家中心</a>
    </div>
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
        <div class="you fl"><h2>修改商品信息</h2>
            <div class="gxin">
                <div class="tx">
                    <a href="#"><img src="img/tx.png" /></a>
                </div>
                <div class="xx">
                    <h3 class="clearfix">
                        <strong class="fl">输入商品资料</strong>
                        <a href="businessman_modify_goods.jsp" class="fr" id="edit1">提交修改</a>
                    </h3>

                    <form action="##">
                        <div>
                            商品名：<input type="text" name="goods_name">
                        </div>
                        <div>
                            商品介绍：<input type="text" name="goods_introduce">
                        </div>
                        <div>
                            商品种类：<input type="text" name="goods_category">
                        </div>
                        <div>
                            商品图片：<input type="file" name="goods_img">
                        </div>
                        <div>
                            商品价格：<input type="text" name="price">
                        </div>
                        <div >
                            <div style="border-bottom:none; position: relative;top: 10px;left: 200px;">
                                <h4>
                                    <input style="color: #A10000; border: solid 2px #f3f3f3;background-color: #fff" type="submit" value="提交修改">
                                </h4>
                            </div>
                        </div>
                    </form>

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
