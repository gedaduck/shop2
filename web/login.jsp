<%@ page import="dao.Impl.UserImpl" %><%--
  Created by IntelliJ IDEA.
  User: 张翔1
  Date: 2020/12/4
  Time: 20:02
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
    <h2>用户登录</h2>
    <form action="loginController">
        <div class="inputBox">
            <input type="text" name="account" required="">
            <label>用户名</label>
        </div>
        <div class="inputBox">
            <input type="password" name="password" required="">
            <label>密码</label>
        </div>
        <input type="submit" name="" value="登录">。
        <input type="button"  value="注册" onclick="window.location.href='regist.jsp'">
        <input type="button"  value="忘记密码" onclick="window.location.href='forgetpwd.jsp'">

    </form>
</div>
</body>
</html>
