<%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/17
  Time: 14:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet"  type="text/css" href="./res/css/index.css">
    <link rel="shortcut icon" href="./res/image/logo.jpg" type="image/x-icon" />
</head>
<body>
    <%@include file="block/top.jsp"%>
    <%@include file="block/searchblock.jsp"%>
    <div style="margin-left: 160px;">
        <a href="AdminController?method=getAllUser">展示所有用户</a><br>
        <a href="AdminController?method=getAllBusinessman">展示所有商家</a>
    </div>
    <%@include file="block/buttom.jsp"%>
</body>
</html>
