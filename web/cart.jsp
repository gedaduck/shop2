<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@  page import="java.util.ArrayList"%>
<%@  page import="java.util.List"%>
<%@ page import="dao.get.GetCart" %>
<%@ page import="vo.Cart" %>
<%@ page import="vo.User" %>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>购物车</title>
    <link rel="stylesheet" type="text/css" href="res/css/public.css"/>
    <link rel="stylesheet" type="text/css" href="res/css/proList.css"/>
    <style type="text/css">
.goOn1 {
    height: 500px;
    line-height: 500px;
    font-size: 16px;
    color: #666;
    text-align: center;
    display: none;
    
}

.goOn1a {
    color: #C10000;
    text-decoration: underline;
}</style>
</head>
<body>
<%@include file="block/top-main.jsp"%>
<!--------------------------------------cart--------------------->

<div class="cart mt" style="margin-top: 0px;">
    <div class="site" style="border-bottom: solid 2px #f3f3f3">
        <p class="wrapper"><span class="fl">购物车</span></p>
    </div>
    <div class="site">
        <p class=" wrapper clearfix">
            <a href="javascript:history.back(-1)" class="fl">返回</a>
            <img class="top" src="res/image/cartTop01.png">
            <a href="index.jsp" class="fr">继续购物&gt;</a></p>
    </div><!-----------------table------------------->
    <div class="table wrapper">
        <div class="tr">
            <div>商品</div>
            <div>单价</div>
            <div>数量</div>
            <div>小计</div>
            <div>操作</div>
        </div>
        <%GetCart cartGet=new GetCart();
        List<Cart> acart = new ArrayList();
        System.out.println(user.getUser_account());
        acart=cartGet.getCart(user.getUser_account());
        System.out.println(acart.size());
        int numsum=0;
        double pricesum=0;
        int i=0;
        for(Cart cart:acart){
            int id[]=new int[1000];
            int number[]=new int[1000];
            id[i]=cart.getGoods_id();
            number[i]=cart.getNumber();%>
        <div class="th">
            <div class="pro clearfix"style="text-align: center">
                <table>
                    <tr >
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td><img src="<%=cart.getGoods_img()%>" style="height: 120px;width: 120px;padding:11px;"></td>
                        <td><p><%=cart.getGoods_name()%></p></td>
                    </tr>
                </table>
            </div>
            <div class="price" style="text-align: center">￥<%=cart.getPrice() %></div>
        <%if(cart.getNumber()==1){%>
            <div class="number">
                <p class="num clearfix">
                    <img class="fl sub" src="res/image/sub.jpg">
                    <span class="fl"><%=cart.getNumber() %></span>
                    <a href="Addnumservlet?goods_id=<%=id[i]%>&number=<%=number[i]%>"><img class="fl add" src="res/image/add.jpg"></a>
                </p>
            </div>
        <%}if(cart.getNumber()<5&&cart.getNumber()>1){%>
            <div class="number">
                <p class="num clearfix">
                    <a href="Subnumservlet?goods_id=<%=id[i]%>&number=<%=number[i]%>"><img class="fl sub" src="res/image/sub.jpg"></a>
                    <span class="fl"><%=cart.getNumber() %></span>
                    <a href="Addnumservlet?goods_id=<%=id[i]%>&number=<%=number[i]%>"><img class="fl add" src="res/image/add.jpg"></a>
                </p>
            </div>
        <%}if(cart.getNumber()==5){%>
            <div class="number">
                <p class="num clearfix">
                  <a href="Subnumservlet?goods_id=<%=id[i]%>&number=<%=number[i]%>"><img class="fl sub" src="res/image/sub.jpg"></a>
                  <span class="fl"><%=cart.getNumber() %></span>
                  <img class="fl add" src="res/image/add.jpg">
                </p>
            </div>
        <%}%>
            <div class="price sAll" style="text-align: center">￥<%=cart.getPrice()*cart.getNumber() %></div>
            <div class="price" style="text-align: center"><a class="del" href="Removeservlet?id=<%=cart.getGoods_id()%>">删除</a></div>
        </div>
        <%numsum+=cart.getNumber();
        pricesum+=cart.getPrice()*cart.getNumber();
        i++; }
        if(numsum==0){%>
        <div style="margin:20px 0px 20px 100px">
            <p style="font-size: 35px">
                <h3>空空如也~</h3>
            </p>
        </div>
        <div class="goOn1a" style="margin:20px 0px 20px 100px;color: #A10000;">
            <a href="index.jsp" style="color: #A10000;" > 去逛逛</a>
        </div>
   		<%}%>
        <div class="tr clearfix">
            <label class="fl"><input class="checkAll" type="checkbox"/><span></span></label>
            <p class="fr">
                <span>共<small id="sl"><%=numsum %></small>件商品</span>
                <span>合计:&nbsp;<small id="all">￥<%=pricesum %></small></span>
                <a href="pay.jsp?user_account=<%=user.getUser_account() %>" class="count">结算</a>
            </p>
        </div>
    </div>
</div>
<!--返回顶部-->
<div class="gotop">
    <a href="cart.jsp">
        <dl>
            <dt><img src="res/image/gt1.png"/></dt>
            <dd>去购<br/>物车</dd>
        </dl>
    </a>
    <a href="#" class="dh">
        <dl>
            <dt><img src="res/image/gt2.png"/></dt>
            <dd>联系<br/>客服</dd>
        </dl>
    </a>
    <a href="myImformation.jsp">
        <dl>
            <dt><img src="res/image/gt3.png"/></dt>
            <dd>个人<br/>中心</dd>
        </dl>
    </a>
    <a href="#" class="toptop" style="display: none;">
        <dl>
            <dt><img src="img/gt4.png"/></dt>
            <dd>返回<br/>顶部</dd>
        </dl>
    </a>
    <p>400-800-8200</p>
</div>
<!--footer-->
<div class="footer">
    <div class="top">
        <div class="wrapper">
        </div>
    </div>
</div><!----------------mask------------------->
<script src="res/js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/pro.js" type="text/javascript" charset="utf-8"></script>
<script src="res/js/cart.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>