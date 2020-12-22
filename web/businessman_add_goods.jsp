<%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/21
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人信息</title>
    <link rel="stylesheet" type="text/css" href="res/css/public.css" />
    <link rel="stylesheet" type="text/css" href="res/css/mygxin.css" />
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
                    <li><a href="#">添加商品</a></li>
                    <li><a href="#">查看订单</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl">
            <form name="form1" method="post" action="##" enctype ="multipart/form-data">
                <table class="AddGoodsTable" style="border: solid 1px #f3f3f3">
                    <tr>
                        <td class="td1">商品编号：</td>
                        <td class="td3"><input style="width: 400px;" type="text" name="good_id" /></td>
                    </tr>
                    <tr>
                        <td class="td1">商品名称：</td>
                        <td class="td3">
                            <input style="width: 400px;" name="good_name">
                        </td>
                    </tr>
                    <tr>
                        <td class="td1">商品图片：</td>
                        <td class="td3"><input style="width: 400px;" type="file" name="good_img" /></td>
                    </tr>
                    <tr>
                        <td class="td1">商品介绍：</td>
                        <td class="td3"><textarea name="good_introduce" style="width: 400px;height: 150px;"></textarea></td>
                    </tr>
                    <tr>
                        <td class="td1">商品价格：</td>
                        <td class="td3"><input style="width: 400px;" type="text" name="good_price" /></td>
                    </tr>
                    <tr>
                        <td class="td1">商品类别：</td>
                        <td class="td3" style="text-align: center;">
                            <input type="radio" name="goods_category" value="1" checked>手机
                            <input type="radio" name="goods_category" value="2" >电脑
                            <input type="radio" name="goods_category" value="3" >笔记本
                            <input type="radio" name="goods_category" value="4" >键鼠外设
                            <input type="radio" name="goods_category" value="5" >其他
                        </td>
                    </tr>
                    <tr>
                        <td class="td1"></td>
                        <td class="td3" style="text-align: center">
                            <input type="submit" style="border: #f3f3f3 2px solid" value="提交" />
                        </td>
                    </tr>
                </table>
                <input type="hidden" name="businessman_account" value="商家账号"/>
            </form>
        </div>

    </div>
</div>
<div class="footer">
</div>
<%@include file="block/buttom.jsp"%>
<script src="res/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
