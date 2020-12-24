<%@ page import="vo.Goods" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/21
  Time: 21:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品信息</title>
    <link rel="stylesheet" type="text/css" href="res/css/public.css" />
    <link rel="stylesheet" type="text/css" href="res/css/mygxin.css" />
    <link rel="stylesheet" type="text/css" href="res/css/mygrxx.css"/>
</head>
<body>
<!---------------------------head---------------------------->
<%@include file="block/top-main.jsp"%>
<!------------------------------idea------------------------------>
<div class="address mt" id="add">
    <div class="wrapper clearfix"><a href="index.jsp" class="fl">首页</a><span>/</span><a href="businessman_menu.jsp" class="on">商家中心</a></div>
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
                <p class="clearfix"><span class="fl">[<%=businessman.getBusinessman_name()%>]</span><span class="fr">
                    <a href="businessmanController?method=loginOut">[退出登录]</a></span></p>
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
        <div class="you fl"><h2>商品信息</h2>
            <%
                for(int i=0;i<goodsList.size();i++){
            %>
            <div class="gxin">
                <div class="tx">
                    <a href="#"><img style="width: 120px;height: 120px;" src="<%=goodsList.get(i).getGoods_img()%>" /></a>
                </div>
                <div class="xx">
                    <h3 class="clearfix">
                        <strong class="fl">商品资料</strong>
                        <a href="businessman_modify_goods.jsp?list_id=<%=i%>" class="fr" id="edit1">修改</a>
                        <a style="position: relative;right: 20px;" href="businessmanController?method=deleteGoods&goods_id=<%=goodsList.get(i).getGoods_id()%>" class="fr" >删除</a>
                    </h3>
                    <div>
                        商品名：<%=goodsList.get(i).getGoods_name()%>
                    </div>
                    <div>
                        商品介绍：<%=goodsList.get(i).getGoods_introduce()%>
                    </div>
                    <div>
                        商品种类：<%=goodsList.get(i).getGoods_category()%>
                    </div>
                    <div>
                        商品图片：<%=goodsList.get(i).getGoods_img()%>
                    </div>
                    <div>
                        商品价格：<%=goodsList.get(i).getPrice()%>
                    </div>
                </div>
            </div>

            <%}%>
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
