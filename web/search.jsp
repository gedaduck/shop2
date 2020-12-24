<%@ page import="java.util.List" %>
<%@ page import="vo.Goods" %><%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/15
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="res/css/search.css">
</head>
<body>
    <%@include file="block/top-main.jsp"%>
    <%@include file="block/searchblock.jsp"%>
    <%
        Object goods=request.getAttribute("goods");
        List<Goods> listGoods=null;
        if(goods instanceof List){
            listGoods=(List<Goods>)goods;
        }
    %>
    <div>
        <div style="margin-left: 160px;margin-top: 20px;margin-bottom: 20px;">
            <% if(request.getParameter("keyword")!=null){%>
            关键词：<em style="color: red"><%=request.getParameter("keyword")%></em>
            <%}%>
            已搜索到<em style="color: red"><%=listGoods.size()%></em> 件商品
        </div>
        <div style="display: flex; flex-wrap: wrap; margin-left: 155px;margin-right: 155px;margin-bottom: 20px;">

            <%
                if(listGoods!=null){
                    for(Goods goods1:listGoods){
            %>

            <div class="div1" style="display: block; margin: 10px;padding:10px; background-color: #f3f3f3;">
                <a href="goodsController?method=getGoods&goods_id=<%=goods1.getGoods_id()%>">
                    <img style="height: 240px;width: 240px;" src="<%=goods1.getGoods_img()%>"/>
                </a>

                <div>
                    <p style="color:red;size: 15px; ">￥<%=goods1.getPrice()%></p>
                    <a href="##">
                        <p style=""><%=goods1.getGoods_name()%></p>
                    </a>

                </div>
            </div>
            <%
                    }
                }
            %>
        </div>

    </div>
    <%@include file="block/buttom.jsp"%>
</body>
</html>
