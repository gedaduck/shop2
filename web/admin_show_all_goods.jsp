<%@ page import="vo.Goods" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/20
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看所有商品</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="shortcut icon" href="./res/image/logo.jpg" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="res/css/public.css" />
    <link rel="stylesheet" href="res/css/index.css">
    <link rel="stylesheet" type="text/css" href="res/css/mygxin.css" />
</head>
<body>
<%@include file="block/top-main.jsp"%>
<!------------------------------idea------------------------------>
<div class="address mt" id="add">
    <div class="wrapper clearfix"><a href="index.jsp" class="fl">首页</a><span>/</span><a href="admin_menu.jsp" class="on">控制台</a></div>
</div>
<!------------------------------Bott------------------------------>
<div class="Bott">
    <div class="wrapper clearfix">
        <div class="zuo fl">
            <h3>
                <a href="#"><img style="width: 90px;height: 90px;border-radius: 45px;" src="res/image/admin.jpg" /></a>
                <p class="clearfix"><span class="fl">[管理员]</span><span class="fr"><a href="AdminController?method=adminLoginOut">[退出登录]</a></span></p>
            </h3>
            <div>
                <h4>管理功能</h4>
                <ul>
                    <li><a href="AdminController?method=getAllUser">管理用户</a></li>
                    <li><a href="AdminController?method=getAllBusinessman">管理商家</a></li>
                    <li><a href="AdminController?method=getAllGoods">管理商品</a></li>
                    <li><a href="AdminController?method=getAllPost">管理帖子</a></li>
                    <li><a href="AdminController?method=getAllOrder">管理订单</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl">
            <%
                Object goods=request.getAttribute("goods");
                List<Goods> listGoods =null;
                if(goods instanceof List){
                    listGoods =(List<Goods>)goods;
                }
                Goods goods3=new Goods();
                if(listGoods !=null){
            %>
            <div class="tx clearfix">
                已查找到<em style="color: red"><%=listGoods.size()%></em> 个商品
            </div>
            <div class="bott">
                <table class="table3"  cellspacing="0" border="1" bordercolor="#b7bebe" style="text-align: center;border:1px solid #b7bebe;">
                    <tr>
                        <td class="td1" style="width: 100px;">商品编号</td>
                        <td class="td1" style="width: 200px;">商品名称</td>
                        <td class="td1" style="width: 200px;">商品介绍</td>
                        <td class="td1" style="width: 90px;">商品种类</td>
                        <td class="td2" style="width: 100px;">价格</td>
                        <td class="td1"style="width: 120px;">操作</td>
                    </tr>
                    <%

                        for(Goods goods2 : listGoods){
                    %>
                    <tr>
                        <td class="td1"><%=goods2.getGoods_id()%></td>
                        <td class="td1"><%=goods2.getGoods_name()%></td>
                        <td class="td1"><%=goods2.getGoods_introduce()%></td>
                        <td class="td1"><%=goods2.getGoods_category()%></td>
                        <td class="td2"><%=goods2.getPrice()%></td>
                        <td class="td1">
                            <a style="color: #A10000" href="AdminController?method=deleteGoods&goods_id=<%=goods2.getGoods_id()%>">删除该商品</a>
                        </td>
                    </tr>
                    <%
                            }
                        }
                    %>
                </table>
            </div>
        </div>
    </div>
</div>
<!--返回顶部-->
<div class="gotop">

    <a href="#" class="toptop">
        <dl>
            <dt><img src="res/image/gt4.png"/></dt>
            <dd>返回<br/>顶部</dd>
        </dl>
    </a>
    <a href="#" class="dh">
        <dl>
            <dt><img src="res/image/gt2.png"/></dt>
            <dd>联系<br/>客服</dd>
        </dl>
    </a>
    <p>400-800-8200</p>
</div>
<div class="footer">
</div>
<script src="res/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/user.js" type="text/javascript" charset="utf-8"></script>



<%@include file="block/buttom.jsp"%>
</body>
</html>
