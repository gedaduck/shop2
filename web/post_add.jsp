<%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/23
  Time: 0:33
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

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>帖子发布</title>
    <link rel="stylesheet" href="layui.css">
    <link rel="stylesheet" href="global.css">
</head>
<body>



<div class="layui-container fly-marginTop">
    <div class="fly-panel" pad20 style="padding-top: 5px;">
        <!--<div class="fly-none">没有权限</div>-->
        <div class="layui-form layui-form-pane">
            <div class="layui-tab layui-tab-brief" lay-filter="user">
                <ul class="layui-tab-title">
                    <li class="layui-this">发表新帖<!-- 编辑帖子 --></li>
                </ul>
                <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
                    <div class="layui-tab-item layui-show">
                        <form action="" method="post">
                            <div class="layui-row layui-col-space15 layui-form-item">

                                <div class="layui-col-md9">
                                    <label for="L_title" class="layui-form-label">帖子标题</label>
                                    <div class="layui-input-block">
                                        <input type="text" id="L_title" name="title" required lay-verify="required" autocomplete="off" class="layui-input">
                                        <!-- <input type="hidden" name="id" value="{{d.edit.id}}"> -->
                                    </div>
                                </div>
                            </div>

                            <div class="layui-form-item layui-form-text">
                                <div class="layui-input-block">
                                    <textarea id="L_content" name="content" required lay-verify="required" placeholder="帖子内容" class="layui-textarea fly-editor" style="height: 260px;"></textarea>
                                </div>
                            </div>


                            <div class="layui-form-item">
                                <button class="layui-btn" lay-filter="*" lay-submit>立即发布</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="fly-footer">
    <p>帖子社区 2020 &copy; 芜湖起飞组 版权所有</p>

</div>


</body>
</html>
</div>
</body>
</html>
