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
    <title>帖子列表</title>
    <link rel="stylesheet" href="res/css/post.css">
    <link rel="stylesheet" href="res/css/layui.css">
    <link rel="stylesheet" href="res/css/global.css">
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
                </div>
            </div>
        </div>


        <div style="margin-top: 30px;" class="layui-container">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md8">
                    <div class="fly-panel" style="margin-bottom: 0;">
                        <div class="fly-panel-title fly-filter">
                            <a href="" class="layui-this">综合</a>
                            <span class="fly-filter-right layui-hide-xs">
                                <a href="" class="layui-this">按最新</a>
                            </span>
                        </div>

                        <ul class="fly-list">
                            <%
                                for(int i=0;i<10;i++){
                            %>
                            <li>
                                <a href="post_content.jsp" class="fly-avatar">
                                    <img src="res/image/user_icon.jpg" alt="用户">
                                </a>
                                <h2>
                                    <a class="layui-badge">动态</a>
                                    <a href="post_content.jsp">帖子标题2</a>
                                </h2>
                                <div class="fly-list-info">
                                    <a href="post_content.jsp" link>
                                        <cite>用户名</cite>
                                    </a>
                                    <span>发表时间：2021-1-1</span>

                                    <span class="fly-list-kiss layui-hide-xs" title="discuss"><i class="iconfont icon-pinglun1"></i>帖子回复数</span>

                                </div>
                                <div class="fly-list-badge">
                                    <span class="layui-badge layui-bg-red">精帖</span>
                                </div>
                            </li>
                            <%}%>
                        </ul>

                        <!-- <div class="fly-none">没有相关数据</div> -->

                        <div style="text-align: center">
                            <div class="laypage-main"><span class="laypage-curr">1</span><a href="/jie/page/2/">2</a><a href="/jie/page/3/">3</a><a href="/jie/page/4/">4</a><a href="/jie/page/5/">5</a><span>…</span><a href="/jie/page/148/" class="laypage-last" title="尾页">尾页</a><a href="/jie/page/2/" class="laypage-next">下一页</a></div>
                        </div>

                    </div>
                </div>
                <div class="layui-col-md4">
                    <dl class="fly-panel fly-list-one">
                        <dt class="fly-panel-title">本周热议</dt>
                        <dd>
                            <a href="">热议1</a><span>发表时间：2021-1-1</span>
                            <span><i class="iconfont icon-pinglun1"></i> 回复数</span>
                        </dd>
                        <dd>
                            <a href="">热议2</a><span>发表时间：2021-1-1</span>
                            <span><i class="iconfont icon-pinglun1"></i> 回复数</span>
                        </dd>
                        <dd>
                            <a href="">热议3</a><span>发表时间：2021-1-1</span>
                            <span><i class="iconfont icon-pinglun1"></i> 回复数</span>
                        </dd>
                        <dd>
                            <a href="">热议4</a><span>发表时间：2021-1-1</span>
                            <span><i class="iconfont icon-pinglun1"></i> 回复数</span>
                        </dd>
                        <dd>
                            <a href="">热议5</a><span>发表时间：2021-1-1</span>
                            <span><i class="iconfont icon-pinglun1"></i> 回复数</span>
                        </dd>

                        <!-- 无数据时 -->
                        <!--
                        <div class="fly-none">没有相关数据</div>
                        -->
                    </dl>

                    <div class="fly-panel">
                        <div class="fly-panel-main">
                            <a href="" target="_blank" class="fly-zanzhu" style="background-color: #393D49;">我要发帖</a>
                        </div>
                    </div>

                    <div class="fly-panel fly-link">
                        <h3 class="fly-panel-title">友情链接</h3>
                        <dl class="fly-panel-main">
                            <dd><a href="https://www.baidu.com/" target="_blank">Baidu</a><dd>
                            <dd><a href="https://www.google.com/" target="_blank">Google</a><dd>
                            <dd><a href="https://blog.csdn.net/" target="_blank">csdn</a><dd>
                            <dd><a href="https://www.cnblogs.com/" target="_blank">cnblogs</a><dd>
                        </dl>
                    </div>

                </div>
            </div>
        </div>

        <div class="fly-footer">
            <p>帖子社区 2020 &copy; 芜湖起飞组 版权所有</p>

        </div>
    </div>
</body>
</html>
