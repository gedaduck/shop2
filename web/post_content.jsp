<%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/21
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>帖子内容</title>
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


    <div class="layui-container">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md8 content detail">
                <div class="fly-panel detail-box">
                    <h1>帖子标题</h1>
                    <div class="fly-detail-info">
                        <!-- <span class="layui-badge">审核中</span> -->
                        <span class="layui-badge layui-bg-green fly-detail-column">动态</span>

                        <span class="layui-badge layui-bg-black">置顶</span>
                        <span class="layui-badge layui-bg-red">精帖</span>


                        <span class="fly-list-nums">
            <a href="##"><i class="iconfont" title="回答">&#xe60c;</i> 帖子回复数</a>
            <i class="iconfont" title="人气">&#xe60b;</i> 人气值
          </span>
                    </div>
                    <div class="detail-about">
                        <a class="fly-avatar" href="##">
                            <img src="res/image/user_icon.jpg" alt="用户">
                        </a>
                        <div class="fly-detail-user">
                            <a href="##" class="fly-link">
                                <cite>用户名</cite>
                            </a>
                            <span>发表时间：2021-1-1</span>
                        </div>
                        <div class="detail-hits" id="LAY_jieAdmin" data-id="123">

                            <span class="layui-btn layui-btn-xs jie-admin" type="edit"><a href="##">编辑此贴</a></span>
                        </div>
                    </div>
                    <div class="detail-body photos">
                        <p>
                            帖子内容：水水水水水水水水水水水水水水水水水水
                        </p>
                        图片<hr>
                        <p>
                            <img src="res/image/user_icon.jpg" alt="用户">
                        </p>
                    </div>
                </div>
                <div class="fly-panel detail-box" id="flyReply">
                    <fieldset class="layui-elem-field layui-field-title" style="text-align: center;">
                        <legend>回帖</legend>
                    </fieldset>
                    <ul class="jieda" id="jieda">
                        <%
                            for(int i=0;i<5;i++){
                        %>
                        <li data-id="111">
                            <a name="item-1111111111"></a>
                            <div class="detail-about detail-about-reply">
                                <a class="fly-avatar" href="">
                                    <img src="res/image/user_icon.jpg" alt="用户">
                                </a>
                                <div class="fly-detail-user">
                                    <a href="" class="fly-link">
                                        <cite>用户名</cite>
                                    </a>
                                </div>
                                <div class="detail-hits">
                                    <span>发表时间：2021-1-1</span>
                                </div>
                            </div>
                            <div class="detail-body jieda-body photos">
                                <p>蓝瘦那个香菇，这是第二条回帖</p>
                            </div>
                            <div class="jieda-reply">
              <span class="jieda-zan" type="zan">
                <i class="iconfont icon-zan"></i>
                <em>点赞数0</em>
              </span>
                                <span type="reply">
                <i class="iconfont icon-svgmoban53"></i>
                回复TA
              </span>
                                <div class="jieda-admin">
                                    <span type="edit">编辑</span>
                                    <span type="del">删除</span>

                                </div>
                            </div>
                        </li>

                        <%}%>
                        <!-- 无数据时 -->
                        <!-- <li class="fly-none">消灭零回复</li> -->
                    </ul>
                    <div class="layui-form layui-form-pane">
                        <form action="##" method="post">
                            <div class="layui-form-item layui-form-text">
                                <a name="comment"></a>
                                <div class="layui-input-block">
                                    <textarea id="L_content" name="content" required lay-verify="required" placeholder="请输入内容"  class="layui-textarea fly-editor" style="height: 150px;"></textarea>
                                </div>
                            </div>
                            <div class="layui-form-item">
                                <input type="hidden" name="jid" value="123">
                                <button class="layui-btn" lay-filter="*" lay-submit>提交回复</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="layui-col-md4">
                <dl class="fly-panel fly-list-one">
                    <dt class="fly-panel-title">本周热议</dt>
                    <!-- 无数据时 -->
                    <div class="fly-none">没有相关数据</div>
                </dl>

                <div class="fly-panel">
                    <div class="fly-panel-main">
                        <a href="post_add.jsp" target="_blank" class="fly-zanzhu" style="background-color: #393D49;">我要发帖</a>
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
