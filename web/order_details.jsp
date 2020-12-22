<%@ page language="java" import="java.sql.*"  import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.Orders" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品详情</title>
<style>
#header {
	background-image: linear-gradient(#000033, #00FFFF);
    padding: 10px;
    margin-left:-8px;
    margin-right:-8px;
    margin-top:-8px;
    text-align:center;
}
#section {
	width: 1200px;
	min-height:490px;
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
	margin-top:-20px;
	height:20px;
	overflow:hidden;
	margin-top:-20px;
}
.log{
	position:absolute;
	left: 1140px;
	top:80px;
}
.p2{
	position:absolute;
	left: 20px;
	top:20px;
	color:#FFFFCC;
	text-decoration:none; 
}
td{
    border: 1px solid black;
    height:30px;
    text-align:left;
}
.a1{
    width:100%;
	margin:auto 50px;
}
</style>
</head>
<body>
	<%
	String name =(String)request.getAttribute("name");
	Object object=request.getAttribute("ordersList");
	List<Orders> ordersList=new ArrayList<>();
	if(object instanceof List){
		ordersList=(List<Orders>)object;
	}
	%>
	<div id="header">
		<a class=p2 href="businessmanView.jsp?name=<%=name %>">返回主页</a>
		<h1>店铺订单</h1>
		<a class=log>用户名：<%=name %></a>
	</div><br>
	<div id="section">
		<table class="a1"> 
	<% System.out.println(ordersList.size());
		for(int i=0;i<ordersList.size();i++){
	   		Orders order=ordersList.get(i);
	 %>
		<tr>
            <td>商品编号：<%=order.getGoods_id() %></td>
            <td>商品数量：<%=order.getGoods_num() %></td>
            <td>商品价格：<%=order.getPrice() %> </td>
            <td>顾客名: <%=order.getUser_account() %></td>
            <td>订单时间：<%=order.getOrder_date() %> </td>
            <td><a href="businessmanController?method=sendGoods&goods_id=<%=order.getGoods_id()%>"> <%=order.getOrder_send() %> </a></td>
    	</tr>
	<%}%>
    </table> 
    </div>	   
    <div id="footer"></div>    
</body>
</html>