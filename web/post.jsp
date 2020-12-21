<%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/21
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="res/css/post.css">
</head>
<body>
    <%@include file="block/top-main.jsp"%>
    <div class="PostMain">
        <div id="div5">
            <div class="head">
                <div style="display: flex;flex-wrap: wrap" class="wrape">
                    <div class="logo">
                        <a class="img" href="#">
                            <img src="res/image/logo.jpg" alt="sb">
                        </a>
                    </div>
                    <!-- 搜索框 -->
                    <div class="search" style="margin-left: 100px;">
                        <h2>购物论坛</h2>
                        用户：<em>100</em>
                        帖子：<em>20</em>
                    </div>
                    <div style="border: dashed 2px ;height: 35px;">
                       <a href="#">
                           <h2>我要发帖</h2>
                       </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="Post" >
            <%
                for(int i=0;i<5;i++){
            %>
            <div class="SinglePost" style="display: flex; flex-wrap: wrap;">
                <div class="PostId">编号</div>
                <div class="Content">
                    <a href="#" class="Slogan">震惊，张翔是个sb玩意儿。。。。。</a>
                    <div class="PostImg">
                        <a href="#">
                            <img style="height: 130px;width: 130px;" src="res/image/1.jpg">
                        </a>
                    </div>
                </div>
                <div class="Poster">
                    发帖人
                </div>
                <div class="PostTime">
                    发帖时间
                </div>
            </div>
            <%}%>
        </div>
    </div>
<%@include file="block/buttom.jsp"%>
</body>
</html>
