<%@ page import="vo.Businessman" %><%--
  Created by IntelliJ IDEA.
  User: ������
  Date: 2020/12/21
  Time: 19:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=gb2312" language="java" %>
<html>
<head>
    <title>�����Ʒ</title>
    <link rel="stylesheet" type="text/css" href="res/css/public.css" />
    <link rel="stylesheet" type="text/css" href="res/css/mygxin.css" />
</head>
<body>
<!---------------------------head---------------------------->

<!------------------------------idea------------------------------>
<div class="address mt" id="add">
    <div class="wrapper clearfix">
        <a href="index.jsp" class="fl">��ҳ</a>
        <span>/</span>
        <a href="businessman_menu.jsp" class="on">�̼�����</a>
    </div>
</div>
<!------------------------------Bott------------------------------>
<%
    Object object2=session.getAttribute("businessman");
    Businessman businessman=new Businessman();
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
                    <a href="businessmanController?method=loginOut">[�˳���¼]</a>
                    </span>
                </p>
            </h3>
            <div>
                <h4>�̼ҹ���</h4>
                <ul>
                    <li><a href="businessman_store.jsp">�鿴����</a></li>
                    <li><a href="businessman_add_goods.jsp">�����Ʒ</a></li>
                    <li><a href="businessmanController?method=getOrders">�鿴����</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl">
            <form name="form1" method="post" action="businessmanController?method=addGoods" enctype ="multipart/form-data">
                <table class="AddGoodsTable" style="border: solid 1px #f3f3f3">
                    <tr>
                        <td class="td1">��Ʒ���ƣ�</td>
                        <td class="td3">
                            <input style="width: 400px;" name="good_name">
                        </td>
                    </tr>
                    <tr>
                        <td class="td1">��ƷͼƬ��</td>
                        <td class="td3"><input style="width: 400px;" type="file" name="good_img" /></td>
                    </tr>
                    <tr>
                        <td class="td1">��Ʒ���ܣ�</td>
                        <td class="td3"><textarea name="good_introduce" style="width: 400px;height: 150px;"></textarea></td>
                    </tr>
                    <tr>
                        <td class="td1">��Ʒ�۸�</td>
                        <td class="td3"><input style="width: 400px;" type="text" name="good_price" /></td>
                    </tr>
                    <tr>
                        <td class="td1">��Ʒ���</td>
                        <td class="td3" style="text-align: center;">
                            <input type="radio" name="good_category" value="1" checked>�ֻ�
                            <input type="radio" name="good_category" value="2" >����
                            <input type="radio" name="good_category" value="3" >�ʼǱ�
                            <input type="radio" name="good_category" value="4" >��������
                            <input type="radio" name="good_category" value="5" >����
                        </td>
                    </tr>
                    <tr>
                        <td class="td1"></td>
                        <td class="td3" style="text-align: center">
                            <div style="border-bottom:none; position: relative;">
                                <h4>
                                    <input style="color: #A10000; border: solid 2px #f3f3f3;background-color: #fff" type="submit" value="���">
                                </h4>
                            </div>
                        </td>
                    </tr>
                </table>
                <input type="hidden" name="businessman_account" value="<%=businessman.getBusinessman_account()%>"/>
            </form>
        </div>

    </div>
</div>
<div class="gotop">

    <a href="#" class="toptop">
        <dl>
            <dt><img src="res/image/gt4.png"/></dt>
            <dd>����<br/>����</dd>
        </dl>
    </a>
    <a href="#" class="dh">
        <dl>
            <dt><img src="res/image/gt2.png"/></dt>
            <dd>��ϵ<br/>�ͷ�</dd>
        </dl>
    </a>
    <p>400-800-8200</p>
</div>
<div class="footer">
</div>
<script src="res/js/jquery-1.12.4.min.js" type="text/javascript" charset="gb2312"></script>
<script src="res/js/public.js" type="text/javascript" charset="gb2312"></script>
<script src="res/js/user.js" type="text/javascript" charset="gb2312"></script>
</body>
</html>
