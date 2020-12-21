<%--
  Created by IntelliJ IDEA.
  User: 张翔1
  Date: 2020/12/17
  Time: 16:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="res/css/public.css" />
    <link rel="stylesheet" type="text/css" href="res/css/mygrxx.css" />
</head>
<body>
<%@include file="block/top-main.jsp"%>
<!------------------------------idea------------------------------>
<div class="address mt" id="add">
    <div class="wrapper clearfix"><a href="index.jsp" class="fl">首页</a><span>/</span><a href="myImformation.jsp" class="on">个人中心</a></div>
</div>
<!------------------------------Bott------------------------------>
<div class="Bott">
    <div class="wrapper clearfix">
        <div class="zuo fl">
            <h3>
                <a href="#"><img src="#" /></a>
                <p class="clearfix"><span class="fl">[${sessionScope.user.user_name}]</span><span class="fr"><a href="userController?method=logout">[退出登录]</a></span></p>
            </h3>
            <div>
                <h4>我的交易</h4>
                <ul>
                    <li><a href="#">我的购物车</a></li>
                    <li><a href="#">我的订单</a></li>
                    <li><a href="#">评价晒单</a></li>
                </ul>
                <h4>个人中心</h4>
                <ul>
                    <li class="on"><a href="#">我的中心</a></li>
                    <li><a href="#">地址管理</a></li>
                </ul>
                <h4>账户管理</h4>
                <ul>
                    <li><a href="modify.jsp">个人信息</a></li>
                    <li><a href="repwd.jsp">修改密码</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl">
            <h2>修改密码</h2>
            <form action="userController?method=rePwd" method="post" class="remima">
                <p><span>登录名：</span><input type="text"  name="account"/></p>
                <p><span>原密码：</span><input type="text" name="oldPwd"/></p>
                <p class="op">输入原密码</p>
                <p><span>新密码：</span><input type="text" name="newPwd"/></p>
                <p class="op">6-16 个字符，需使用字母、数字或符号组合，不能使用纯数字、纯字母、纯符号</p>
                <input type="submit" value="提交">
            </form>
        </div>
    </div>
</div>
</div>
</body>
</html>
