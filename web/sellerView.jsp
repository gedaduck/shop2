<%@ page language="java" import="java.sql.*"  import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="GB2312"%>
<%@page import="vo.Goods" %>
<%@ page import="vo.Businessman" %>
<%@ page import="com.mysql.cj.Session" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
#header {
	background-image: linear-gradient(#000033, #00FFFF);
    padding: 10px;
    margin-left:-8px;
    margin-right:-8px;
    margin-top:-8px;
    text-align:center;
}

#nav {
	line-height: 30px;
	background-image: linear-gradient(#CCFFFF, #FFFFFF);
	margin-left:-8px;
	height:520px;
	width: 100px;
	float: left;
	padding: 5px;
	margin:auto,auto;
}

#section {
	width: 1200px;
	float: left;
	padding: 10px;
}

#footer {
	background-image: linear-gradient(#0099FF, #000033);
	color: black;
	clear: both;
    margin-left:-8px;
    margin-right:-8px;
	text-align: center;
	height:20px;
	overflow:hidden;

}

.myclass div {
	padding-left: 42px;
	width: 150px;
	max-height: 100px;
	overflow: hidden;
	white-space: normal;
	display: inline-table;
	float:left;
}

.price2 {
	color: #070719;
	font-size:10px;
	padding-left:44px;
	width: 150px;
	height: 50px;
	overflow: hidden;
	position:relative;
	top:-12px;
}
.price {
	color: #ff0055;
	padding-left: 44px;
	width: 160px;
	overflow: hidden;
	position:relative;
	top:-32px;
}

.myclass {
	float: left;
	margin-top:15px;
	width: 150px;
	height:240px;
	margin-right: 40px;
}

.img1 {
	padding-left: 42px;
	height: 160px;
	width : 160px;
}
.log{
	position:absolute;
	left: 1140px;
	top:80px;
}
.log1{
      border: 1px solid #f00;
      position:absolute;  
	  left: 1280px;
	  top:80px;
      background:#CC3300; 
      width: 40px;
      height: 20px;
      line-height: 20px;
      text-align: center; 
      border-radius: 6px; 
      font-size: 10px;
      color: white;
      text-decoration:none; 
}
.p1{
      font-size: 20px;
}
.href1{
      text-decoration:none; 
      color: black;
}
.p2{
	position:absolute;
	left: 20px;
	top:20px;
	color:#FFFFCC;
	text-decoration:none; 
}
.img2{
	position:absolute;
	left: 0px;
	top: 436px;
	width:110px;
	height:200px;
}
.img3{
	position:absolute;
	left: 0px;
	top: 106px;
	width:110px;
	height:200px;
}
.img4{
	position:absolute;
	left: 0px;
	top: 306px;
	width:110px;
	height:130px;
}
</style>
</head>

<body>
	<%
		Businessman Businessman=(Businessman)session.getAttribute("Businessman");
		Object object=session.getAttribute("goodsList");
		List<Goods> goodsList=null;
		if(object instanceof List){
			goodsList=(List<Goods>)object;
		}
	%>
	<div id="header">
		<a class=p2 href="index.html">返回主页</a>
		<h1>店铺主页</h1>
		<a class=log1 href="business_log.html">登录</a>
		<a class=log>用户名：<%=Businessman.getBusinessman_account() %></a>
	</div>

	<div id="nav">
		<br><br><br><br><br><br><br>
		<a class=href1 href="addGoods.jsp?name=<%=Businessman.getBusinessman_account() %>">添加商品</a><br><br>
		<a class=href1 href="order_details.jsp?name=<%=Businessman.getBusinessman_account() %>">订单详情</a>
	</div>
	<img class="img2" src="images/13.jpg">
	<img class="img3" src="images/16.jpg">
	
	<div id="section">
<% 	for(int i=0;i<goodsList.size();i++){
		Goods goods=goodsList.get(i);
%>	
	<div class="myclass">
	<a class=href1 href="/BusinessmanController?method=getaGood&goods_id=<%=goods.getGoods_id()%>"><img class="img1" src=<%=goods.getGoods_img()%> alt="无法加载!" /></a>
	<p class="price2"><%=goods.getGoods_introduce()%></p>
	<p class="price">￥<%=goods.getPrice()%>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="shop_s/delete_goods?ID=<%=goods.getGoods_id() %>&name=<%=Businessman.getBusinessman_account()%>">删除</a></p>
	</div>
<%}%>
	</div>
	<div id="footer"></div>
</body>
</html>
