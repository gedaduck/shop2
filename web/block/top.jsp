<%@ page import="vo.User" %><%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/15
  Time: 18:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>top</title>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet"  type="text/css" href="./res/css/index.css">
    <link rel="shortcut icon" href="./res/image/logo.jpg" type="image/x-icon" />
</head>
<body>
    <!-- 顶部导航栏 -->
    <div class="cover">
        <ul class="cover-left">
            <li class="land">中国大陆</li>
            <li class="login">
                <%
                    Object object=session.getAttribute("user");
                    User user=new User();
                    if(object instanceof User){
                        user=(User)object;
                    }

                    if(user.getUser_name()==null){
                %>
                        <a style="color:black;" href="login.jsp">亲，请登录</a>
                    <%}else{%>
                        <a style="color:black;" href="myImformation.jsp"><%=user.getUser_name()%></a>
                    <%}%>

            </li>
        </ul>
        <ul class="cover-right">
            <li>
                <a href="##">网站导航</a>
            </li>
            <li>
                <div class="hid">
                    <a href="##">联系客服</a>
                </div>
                <div class="my">
                    <ul>
                        <li>
                            <a href="##">消费者客服
                            </a>
                        </li>
                        <li>
                            <a href="##">卖家客服</a>
                        </li>
                    </ul>
                </div>
            </li>
            <li>
                <a href="html/business_log.html">卖家中心</a>
            </li>

            <li>|</li>
            <li>
                <a href="##">收藏夹</a>
            </li>
            <li>
                <a href="##" id="cars">购物车</a>
            </li>
            <li>
                <a href="##">我的订单</a>
            </li>
        </ul>
    </div>
</body>
</html>
