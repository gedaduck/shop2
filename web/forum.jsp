<%@ page import="java.util.List" %>
<%@ page import="vo.Forum" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<style>
			body {
				background: url(images/a4.jpg) no-repeat center center fixed;
                -webkit-background-size: cover;
				-o-background-size: cover;                
				background-size: cover;
			}
			.table1{
				POSITION:absolute;
				left:400px;
				top:650px;
			}

	</style>
	<body>
	      <%int nowPage=(Integer) request.getAttribute("nowPage");
			int maxPage=(Integer) request.getAttribute("maxPage");
			Object object=request.getAttribute("forumList");
			List<Forum> forumList=new ArrayList<>();
			if(object instanceof List) {
				forumList=(List<Forum>)object;
			}
			for(Forum forum:forumList){
				int forum_id=forum.getForum_id();
		  %>

				<table>
					<tr>
						<td align="right" width="100"><a href="/forumController?method=getCView&forum_id=<%=forum_id%>"> <%=forum.getTitle()%></a></td>
						<td width="150" align="center"><%=forum.getUser_name()%></td>
						<td width="300"><%=forum.getRelease_time()%></td>
					</tr>
				</table>
		<%}%>
		  	<table>
			  	<tr>
				  	<td width="750" align="right">
					  	<a href="NewFile3.jsp">发表新帖子</a>
				  	</td>
			  	</tr>
			</table>
	<form action="/forumController?method=getForumView" method="post">
		<table class="table1">
			<tr>
				<td>
					目前页数：
					<font color=red><%=nowPage%></font>
				</td>
				<td>
					总页数：
					<font color=red><%=maxPage%></font>
				</td>
				<td>
					<a href=forum.jsp?page=1>【第一页】</a>
				</td>
				<%
					if(nowPage!=1){%>
				<td>
					<a href="/forumController?method=getForumView&page="+<%=nowPage-1%>>【上一页】</a>
				</td>
					<%}%>
					<%
						if(nowPage!=maxPage){%>
				<td>
					<a href="/forumController?method=getForumView&page="+<%=nowPage+1%>>【下一页】</a>
				</td>
						<%}%>

				<td>
					<a href="/forumController?method=getForumView&page="+<%=maxPage%>>【最后一页】</a>
				</td>
				<td>
					输入页次：
					<input type="text" size="3" name="page" value="<%=nowPage%>">
				</td>
				<td>
					<input type=submit name=send value="跳转">
				</td>
			</tr>
		</table>
	</form>
	</body>
</html>