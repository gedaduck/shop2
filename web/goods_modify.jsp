<%@ page language="java" import="java.sql.*"  import="java.util.*"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="vo.Goods" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<head>
<style>
body{
    background-image:url(images/A8.png);
    background-size:100% 800px;
    background-repeat:no-repeat;
    padding: 15px;
}
.class{
    margin:80px auto;
    text-align:center;
}
table {
    border-collapse: collapse;
    width:50%;
	margin:auto auto;
}

table, td, th {
    border: 1px solid black;
    height:50px;
}

</style>
<meta>
<title>商品信息</title>
<meta>
</head>
<body>
	<%
	Goods goods=(Goods)request.getAttribute("good");
	%>
	<a style="color:black" href="/businessmanView.jsp?name=<%=goods.getBusinessman_account()%>">返回商品页</a>
	<div class="class">
		<div style="font-size:30px;color:blue">输入商品信息</div>
		<form name="form1" method="post" action="update_goods" enctype ="multipart/form-data">
			<table >
				<tr>
					<td>商品编号：</td>
					<td><input type="text" name="good_id" style="width: 197px" value="<%=goods.getGoods_id() %>" /></td>
				</tr>
				<tr>
					<td>商品类别：</td>
					<td><select  name="good_name">
							<option  value="手机">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp手机&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
							<option  value="电脑">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp电脑&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</option>
					</select>
					</td>
				</tr>
				<tr>
					<td>商品图片：</td>
					<td><input type="file" name="good_img" style="width: 200px"/></td>
				</tr>
				<tr>
					<td>商品介绍：</td>
					<td><textarea name="good_introduce" rows="4" cols="26" ><%=goods.getGoods_introduce() %></textarea></td>
				</tr>
				<tr>
					<td>商品价格：</td>
					<td><input type="text" name="good_price" style="width: 200px" value="<%=goods.getPrice() %>"  /></td>
				</tr>
				<tr>
					<td>商品类别：</td>
					<td><input type="text" name="good_category" style="width: 200px" value="<%=goods.getGoods_category() %>"  /></td>
				</tr>
				<tr>
					<td><input type="submit" value="提交" /></td>
					<td><input type="reset" value="取消" /></td>
				</tr>
			</table>
			<input type="hidden" name="id" value="<%=goods.getGoods_id() %>"/>
			<input type="hidden" name="businessman_account" value="<%=goods.getBusinessman_account()%>"/>
		</form>
	</div>
</body>
</html>