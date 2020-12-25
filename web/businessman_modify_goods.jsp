<%@ page import="vo.Goods" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/22
  Time: 1:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改商品</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" type="text/css" href="res/css/public.css" />
    <link rel="stylesheet" type="text/css" href="res/css/mygxin.css" />
    <link rel="stylesheet" type="text/css" href="res/css/mygrxx.css"/>
</head>
<body>
<!---------------------------head---------------------------->
<%@include file="block/top-main.jsp"%>
<!------------------------------idea------------------------------>
<div class="address mt" id="add">
    <div class="wrapper clearfix">
        <a href="index.jsp" class="fl">首页</a><span>/</span><a href="businessman_menu.jsp" class="on">商家中心</a>
    </div>
</div>
<!------------------------------Bott------------------------------>
<%
    Object object2=session.getAttribute("businessman");
    Object object3=session.getAttribute("goodsList");
    Object object4=session.getAttribute("ordersList");
    businessman=new Businessman();
    List<Goods> goodsList=new ArrayList<Goods>();
    if(object3 instanceof List ){
        goodsList=(List<Goods>)object3;
    }
    if(object2 instanceof Businessman) {
        businessman=(Businessman)object2;
    }
%>
<div class="Bott">
    <div class="wrapper clearfix">
        <div class="zuo fl">
            <h3>
                <a href="#"><img style="width: 90px;height: 90px;border-radius: 45px;" src="res/image/businessman.jpg" /></a>
                <p class="clearfix"><span class="fl">[<%=businessman.getBusinessman_name()%>]</span>
                    <span class="fr">
                    <a href="businessmanController?method=loginOut">[退出登录]</a>
                    </span></p>
            </h3>
            <div>
                <h4>商家功能</h4>
                <ul>
                    <li><a href="businessman_store.jsp">查看店铺</a></li>
                    <li><a href="businessman_add_goods.jsp">添加商品</a></li>
                    <li><a href="businessmanController?method=getOrders">查看订单</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl"><h2>修改商品信息</h2>
            <div class="gxin">
                <div class="tx">
                    <a href="#"><img style="width: 120px;height: 120px;" src="res/image/modify.png" /></a>
                </div>
                <div class="xx">
                    <h3 class="clearfix">
                        <strong class="fl">输入商品资料</strong>
                    </h3>
                    <%
                        int i;
                        i=Integer.parseInt(request.getParameter("list_id"));
                    %>

                    <form action="businessmanController?method=modify" method="post">
                        <div>
                            商品名：<input style="width: 400px" type="text" name="goods_name" value="<%=goodsList.get(i).getGoods_name()%>">
                        </div>
                        <div>
                            商品介绍：<input style="width: 400px" type="text" name="goods_introduce" value="<%=goodsList.get(i).getGoods_introduce()%>">
                        </div>
                        <div>
                            商品种类：
                            <input type="radio" name="goods_category" value="1" checked>手机
                            <input type="radio" name="goods_category" value="2" >电脑
                            <input type="radio" name="goods_category" value="3" >笔记本
                            <input type="radio" name="goods_category" value="4" >键鼠外设
                            <input type="radio" name="goods_category" value="5" >其他
                        </div>
                        <div>
                            商品价格：<input type="text" name="price" value="<%=goodsList.get(i).getPrice()%>">
                            <input type="hidden" name="goods_id" value="<%=goodsList.get(i).getGoods_id()%>" >
                            <input type="hidden" name="list_id" value="<%=i%>" >
                            <input type="hidden" name="businessman_account" value="<%=businessman.getBusinessman_account()%>" >
                        </div>
                        <div >
                            <div style="border-bottom:none; position: relative;top: 10px;left: 200px;">
                                <h4>
                                    <input style="color: #A10000; border: solid 2px #f3f3f3;background-color: #fff" type="submit" value="提交修改">
                                </h4>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
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
</body>
</html>
