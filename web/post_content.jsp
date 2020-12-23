<%@ page import="java.util.List" %>
<%@ page import="vo.Comment" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vo.Forum" %><%--
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

    <%
        Object object2=request.getAttribute("commentList");
        Forum forum=(Forum)request.getAttribute("forum");
        String forum_id=(String)request.getParameter("forum_id");
        List<Comment> commentList=new ArrayList<>();
        if(object2 instanceof List)
            commentList=(List<Comment>)object2;
    %>
    <div class="layui-container">
        <div class="layui-row layui-col-space15">
            <div class="layui-col-md8 content detail">
                <div class="fly-panel detail-box">
                    <a href="/forumController?method=getForumView&page=1">返回</a>
                    <h1><%=forum.getTitle()%></h1>
                    <div class="fly-detail-info">
                        <!-- <span class="layui-badge">审核中</span> -->
                        <span class="layui-badge layui-bg-green fly-detail-column">动态</span>
                        <span class="layui-badge layui-bg-black">置顶</span>
                        <span class="layui-badge layui-bg-red">精帖</span>
                        <span class="fly-list-nums">
                            <a href="##"><i class="iconfont" title="回答">&#xe60c;</i> <%=commentList.size()%></a>
                        </span>
                    </div>
                    <%for (Comment comment:commentList){%>
                    <div class="detail-about">
                        <a class="fly-avatar" href="##">
                            <img src="res/image/user_icon.jpg" alt="用户">
                        </a>
                        <div class="fly-detail-user">
                            <a href="##" class="fly-link">
                                <cite><%=comment.getUser_name()%></cite>
                            </a>
                            <span>发表时间：<%=comment.getComment_time()%></span>
                        </div>
                        <div class="detail-hits" id="LAY_jieAdmin" data-id="123">
                            <span><%=comment.getComment_content()%></span>
                        </div>
                    </div>
                    <%}%>
                </div>
            </div>
        </div>
        <div class="layui-row layui-col-space15" ><span>回复：</span></div>
        <div class="layui-row layui-col-space15">
            <form action="/forumController?method=addComment&forum_id=<%=forum_id%>" method="post">
                <div><textarea rows="15" cols="110" name="content"></textarea></div>
                <input type="submit" value="回复" name="send">
                <input type="reset" value="清空">
            </form>
        </div>
        <div class="fly-footer">
            <p>帖子社区 2020 &copy; 芜湖起飞组 版权所有</p>
        </div>
    </div>
</div>
</body>
</html>
