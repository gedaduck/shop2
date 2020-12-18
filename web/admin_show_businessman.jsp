<%@ page import="vo.Businessman" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: 陈旭龙
  Date: 2020/12/17
  Time: 14:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet"  type="text/css" href="./res/css/index.css">
    <link rel="shortcut icon" href="./res/image/logo.jpg" type="image/x-icon" />
</head>
<body>
    <%@include file="block/top.jsp"%>
    <%@include file="block/searchblock.jsp"%>
    <%
        Object businessman=request.getAttribute("businessman");
        List<Businessman> listBusinessman=null;
        if(businessman instanceof List){
            listBusinessman=(List<Businessman>)businessman;
        }
        if(listBusinessman!=null){
    %>
    <div>
        <div style="margin-left: 200px;margin-top: 20px;margin-bottom: 20px;">
            已查找到<em style="color: red"><%=listBusinessman.size()%></em> 个用户
        </div>
        <div style="margin-left: 200px;margin-right: 200px;">
            <table id="table1" cellspacing="0" border="1" bordercolor="#b7bebe" style="text-align: center;border:1px solid #b7bebe;">
                <tr>
                    <td class="td1">账号</td>
                    <td class="td1">密码</td>
                    <td class="td1">名称</td>
                    <td class="td2">地址</td>
                    <td class="td1">电话号码</td>
                    <td class="td1">店铺名称</td>
                    <td class="td1">店铺编号</td>
                    <td class="td1">操作</td>
                </tr>
                <%

                    for(Businessman businessman1:listBusinessman){
                %>
                <tr>
                    <td class="td1"><%=businessman1.getBusinessman_account()%></td>
                    <td class="td1"><%=businessman1.getBusinessman_password()%></td>
                    <td class="td1"><%=businessman1.getBusinessman_name()%></td>
                    <td class="td2"><%=businessman1.getBusinessman_address()%></td>
                    <td class="td1"><%=businessman1.getBusinessman_telephone()%></td>
                    <td class="td1"><%=businessman1.getStore_name()%></td>
                    <td class="td1"><%=businessman1.getStore_id()%></td>
                    <td class="td1">
                        <a href="AdminController?method=deleteBusinessman&businessman_account=<%=businessman1.getBusinessman_account()%>">删除该用户</a>
                    </td>
                </tr>
                <%
                        }
                    }
                %>
            </table>


        </div>

    </div>
    <%@include file="block/buttom.jsp"%>
</body>
</html>
