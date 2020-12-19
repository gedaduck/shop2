<%--
  Created by IntelliJ IDEA.
  User: 张翔1
  Date: 2020/12/9
  Time: 23:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>忘记密码</title>
    <link rel="stylesheet" href="CSS/Login.css">
</head>
<body>
<div class="box">
    <h2>忘记密码</h2>
    <form action="userController?method=forgetPwd" method="post">
        <div class="inputBox">
            <input type="text" name="user_account" required="">
            <label>登录名：</label>
        </div>
        <div class="inputBox">
            <input type="text" name="user_name" required="">
            <label>用户名：</label>
        </div>
        <div class="inputBox">
            <input type="password" name="new_password" required="">
            <label>新密码：</label>
        </div>
        <input type="submit" value="修改密码">
    </form>

</div>

</body>
</html>
