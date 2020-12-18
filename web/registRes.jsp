<%--
  Created by IntelliJ IDEA.
  User: 张翔1
  Date: 2020/12/7
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
</head>
<body>
    <%
        Object object=request.getAttribute("res");
        String res=(String)object;
        if(res!=null){
    %>
            <h3 style="color: red;text-align: center"><br>注册成功！</br>三秒后自动跳转，若未跳转，请点击<a href="login.jsp">链接</a></h3>
            <%response.setHeader("Refresh","3,URL=login.jsp");%>
    <%
        }else{
    %>
    <script>
        alert("注册失败");
        window.location="regist.jsp";
    </script>
    <%}%>
</body>
</html>
