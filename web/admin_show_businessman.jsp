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
        <link rel="shortcut icon" href="./res/image/logo.jpg" type="image/x-icon" />
        <link rel="stylesheet"  type="text/css" href="./res/css/index.css">
        <link rel="stylesheet" type="text/css" href="res/css/public.css" />
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
                    <a href="#"><img style="width: 50px;height: 50px;" src="res/image/admin.jpg" /></a>
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
                    object=request.getAttribute("businessman");
                    List<Businessman> listBusinessman=null;
                    if(object instanceof List){
                        listBusinessman=(List<Businessman>)object;
                    }
                    if(listBusinessman!=null){
                %>
                <div class="tx clearfix">
                    已查找到<em style="color: red"><%=listBusinessman.size()%></em> 个商家
                </div>
                <div class="bott">
                    <table class="table2"  cellspacing="0" border="1" bordercolor="#b7bebe" style="text-align: center;border:1px solid #b7bebe;">
                        <tr>
                            <td class="td1" style="width: 150px;">账号</td>
                            <td class="td1" style="width: 100px;">密码</td>
                            <td class="td1" style="width: 100px;">名称</td>
                            <td class="td2" style="width: 200px;">地址</td>
                            <td class="td1" style="width: 150px;">电话号码</td>
                            <td class="td1" style="width: 150px;">店铺名称</td>
                            <td class="td1" style="width: 90px;">店铺编号</td>
                            <td class="td1" style="width: 150px;">操作</td>
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
                                <a style="color: #A10000" href="AdminController?method=deleteBusinessman&businessman_account=<%=businessman1.getBusinessman_account()%>">删除该用户</a>
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
