
<%@page import="dao.JDBCUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.concurrent.CompletableFuture" %>
<%@ page import="vo.Comment" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.nio.charset.CoderMalfunctionError" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <style>
        body {
            background: url(images/a4.jpg) no-repeat center center fixed;
            -webkit-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }
    </style>
<body>
    <a href="/"><img src="images/a1.jpeg" width="30" height="30"></a><br>
      <%Object object=request.getAttribute("commentList");
        String forum_id=(String)request.getParameter("forum_id");
        List<Comment> commentList=new ArrayList<>();
        if(object instanceof List)
            commentList=(List<Comment>)object;
        for(Comment comment:commentList){%>
        <table>
            <tr>
                <td>用户 <%= comment.getUser_name()%> 回复内容是</td>
                <td><%=comment.getComment_content()%> </td>
            </tr>
            <tr>
                <td>回复的时间是：<%=comment.getComment_time()%> </td>
            </tr>
        </table>
      <%}%>
    <form name="form2" action="/forumController?method=addComment&forum_id=<%=forum_id%>" method="post">
        <table border="1">
            <tr>
                <td>输入你要回复的内容</td>
                <td><textarea rows="15" cols="110" name="content"></textarea></td>
            </tr>
            <tr align="center">
                <td colspan="2">
                    <input type="submit" value="确认回复" name="send">
                    <input type="reset" value="清除重写">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>