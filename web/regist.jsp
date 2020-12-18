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
</head>
<body>
    <div style="text-align: center">
        <h1>注册</h1>
    </div>
    <div >
        <form action="registController">
            <table style="margin: auto;" border="1" cellpadding="10px">
                <tr>
                    <td>登陆名：</td>
                    <td><input type="text" name="account"></td>
                </tr>
                <tr>
                    <td>密 &nbsp;码：</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td>用户名：</td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>地 &nbsp;址：</td>
                    <td><input type="text" name="address"></td>
                </tr>
                <tr>
                    <td>电 &nbsp;话：</td>
                    <td><input type="text" name="telephone"></td>
                </tr>
                <tr>
                    <td>签 &nbsp;名：</td>
                    <td><input type="text" name="id_card"></td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center"><input type="submit" value="注册"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
