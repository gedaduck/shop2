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
</head>
<body>
    <div>
        <h1 style="text-align: center">忘记密码</h1>
    </div>
    <div>
        <form action="forgetPwdController">
            <table>
                <tr>
                    <td>登录名：</td>
                    <td><input type="text" name="user_account"></td>
                </tr>
                <tr>
                    <td>姓&nbsp;名：</td>
                    <td><input type="text" name="user_name"></td>
                </tr>
            </table>
            登录名：<input type="text" name="user_account">
            姓名：<input type="text" name="user_name">
            新密码<input type="text" name="new_password">
            <input type="submit" value="提交">
        </form>
    </div>


</body>
</html>
