<%--
  Created by IntelliJ IDEA.
  User: 张翔1
  Date: 2020/12/7
  Time: 14:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
</head>
<body>
    <%
        Object object=request.getAttribute("res");
        String object1 = (String)object;
        System.out.println(object1);
        if(object1!=null){
    %>
        <h3 style="color: red;text-align: center"><br>登陆成功，</br>三秒后自动跳转，若未跳转，请点击<a href="index.jsp">连接</a></h3>
        <%response.setHeader("Refresh","3,URL=index.jsp");%>
        <%}
        else{
        %>
            <script>
                alert("登陆失败！");
                window.location="login.jsp";
            </script>
        <%}%>
</body>
</html>
