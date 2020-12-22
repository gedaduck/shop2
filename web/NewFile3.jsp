<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
			body {
				background: url(images/a5.jpg) no-repeat center center fixed;
                -webkit-background-size: cover;
				-o-background-size: cover;                
				background-size: cover;
			}
</style>
<body>
<form action="/forumController?method=addForum" method="post">
<table border=3 width=200 height=400 align="center">
<tr >
<td>姓名</td><td><input type="text" size=60 name="name"></td>
</tr>
<tr >
<td>E-mail</td><td><input type=text size=60 name="email"></td>
</tr>
<tr >
<td><pre>主题</pre></td><td><input type=text size=60 name="title"></td>
</tr>
<tr valign=top >
<td><pre>内容</pre></td><td><textarea rows=10 cols=60 name="content"></textarea></td>
</tr>
<tr align=center>
<td colspan=2><input type="submit" value="发表帖子" name="send">
<input type="reset" value="重置"></td>
</tr>
</table>
</form>
</body>
</html>