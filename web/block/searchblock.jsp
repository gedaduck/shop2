<%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/16
  Time: 11:02
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
<!-- 搜索区 -->
<div id="div5">
    <div class="head">
        <div class="wrape">
            <div class="logo">
                <a href=".">
                    <img src="res/image/logo.jpg" alt="sb">
                </a>
            </div>
            <!-- 搜索框 -->
            <div class="search">
                <div class="search-top">
                    <ul class="top">
                        <li class="top-left"><a href="##">宝贝</a></li>
                    </ul>
                </div>
                <div class="search-input">
                    <form action="SearchController" method="get">
                        <div class="input">
                            <input type="text" name="keyword" id="search" autocomplete="off" placeholder="请输入要搜索的宝贝">
                        </div>
                        <div class="button">
                            <button type="submit" >搜索</button>
                        </div>
                    </form>
                </div>
                <div class="search-bot">
                    <ul class="b">
                        <li><a href="SearchController?keyword=联想">联想</a></li>
                        <li><a href="SearchController?keyword=锤子">锤子</a></li>
                        <li><a href="SearchController?keyword=iPhone">iPhone</a></li>
                        <li><a href="SearchController?keyword=华为">华为</a></li>

                    </ul>
                </div>
                <div class="showresult">
                    <ul class="results" id="results">
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
