<%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/17
  Time: 17:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
    <link rel="stylesheet" href="res/css/Login.css">
</head>
<body>
<div class="box">
    <h2>管理员登录</h2>
    <form action="AdminController?method=adminLogin" method="post">
        <div class="inputBox">
            <input type="text" name="account" required="">
            <label>用户名</label>
        </div>
        <div class="inputBox">
            <input type="password" name="password" required="">
            <label>密码</label>
        </div>
        <input type="submit" name="" value="登录">。
    </form>
</div>
</body>
</html>
