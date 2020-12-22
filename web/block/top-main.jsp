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
    <script type="text/javascript"></script>
</head>
<body>
    <!-- 顶部导航栏 -->
    <div id="div3">
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
                    <a href="login.jsp">亲，请登录</a>
                    <%}else{%>
                    <a href="myImformation.jsp"><%=user.getUser_name()%></a>
                    <%}%>

                </li>
            </ul>
            <ul class="cover-right">
                <li>
                    <a href="admin_login.jsp">管理员登录</a>
                </li>
                <li>
                    <a href="../html/business_login.html">卖家中心</a>
                </li>

                <li>|</li>
                <li>
                    <a href="##" id="cars">购物车</a>
                </li>
                <li>
                    <a href="##">我的订单</a>
                </li>
                <li>
                    <a href="post.jsp">讨论中心</a>
                </li>
            </ul>
        </div>
    </div>

</body>
</html>
