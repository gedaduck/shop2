<%--
  Created by IntelliJ IDEA.
  User: 张翔1
  Date: 2020/12/5
  Time: 0:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <link rel="stylesheet" href="res/css/Login.css">
</head>
<body>

<div class="box">
    <h2>注册会员</h2>
    <form action="userController?method=regist" method="post">
        <div class="inputBox">
            <input type="email" name="account" required="" placeholder="           请输入邮箱">
            <label>用户名</label>
        </div>
        <div class="inputBox">
            <input type="password" name="password" required="">
            <label>密码</label>
        </div >
        <div class="inputBox">
            <input type="text" name="name" required="">
            <label>姓名</label>
        </div>
        <div class="inputBox">
            <input type="text" name="telephone" required="">
            <label>联系方式</label>
        </div>
        <div class="inputBox">
            <input type="text" name="address" required="">
            <label>地址</label>
        </div>
        <div class="inputBox">
            <input type="text" name="id_card" required>
            <label>个人简介</label>
        </div>
        <input type="submit" value="注册">
    </form>

</div>
</body>
</html>
