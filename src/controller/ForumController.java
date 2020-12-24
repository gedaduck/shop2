package controller;

import service.forum.ForumService;
import service.forum.ForumServiceImpl;
import vo.Comment;
import vo.Forum;
import vo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.desktop.SystemSleepEvent;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.nio.charset.IllegalCharsetNameException;
import java.text.Format;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.ForkJoinPool;

@WebServlet(urlPatterns = "/forumController")
public class ForumController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        System.out.println(method);
        selectFun(request, response, method);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        System.out.println(method);
        selectFun(request, response, method);
    }

    public void selectFun(HttpServletRequest request, HttpServletResponse response, String method) throws ServletException, IOException {
        if(method.equals("getForumView"))
            getForumView(request,response);
        else if(method.equals("addForum"))
            addForum(request,response);
        else if(method.equals("getCView"))
            getCommentView(request,response);
        else if(method.equals("addComment"))
            addComment(request,response);
    }

    public void getForumView(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        int page=Integer.valueOf(request.getParameter("page"));
        ForumService forumServiceImpl=new ForumServiceImpl();
        List<Forum> forumList=forumServiceImpl.getForum();
        int maxPage=(int)Math.ceil(forumList.size()/8d);
        System.out.println(forumList.size()/8d);
        System.out.println((int)Math.ceil(forumList.size()/8d));
        List<Forum> forumList1=new ArrayList<>();
        if(page==maxPage)
            forumList1=forumList.subList((page-1)*8,forumList.size());
        else
            forumList1=forumList.subList((page-1)*8,page*8);
        request.setAttribute("nowPage",page);
        request.setAttribute("maxPage",maxPage);
        request.setAttribute("forumList",forumList1);
        request.getRequestDispatcher("post.jsp").forward(request, response);
    }

    public void addForum(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        HttpSession session=request.getSession();
        ForumService forumServiceImpl=new ForumServiceImpl();
        User user=(User)session.getAttribute("user");
        String title=request.getParameter("title");
        String content=request.getParameter("content");
        SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time=df.format(new Date());
        Forum forum=new Forum(user.getUser_name(),title,content,user.getE_mail(),time,user.getUser_account());
        if(forumServiceImpl.addForum(forum)==1){
            response.sendRedirect("forumController?method=getForumView&page=1");
        }

    }

    public void getCommentView(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        request.setCharacterEncoding("UTF-8");
        ForumService forumServiceImpl=new ForumServiceImpl();
        int forum_id=Integer.valueOf(request.getParameter("forum_id"));
        List<Comment> commentList=forumServiceImpl.getComment(forum_id);
        Forum forum=forumServiceImpl.getOneForum(forum_id);
        request.setAttribute("forum",forum);
        request.setAttribute("commentList",commentList);
        request.setAttribute("forum_id",forum_id);
        request.getRequestDispatcher("post_content.jsp").forward(request, response);
    }

    public void addComment(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        ForumService forumServiceImpl = new ForumServiceImpl();
        Comment comment = new Comment();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        comment.setUser_name(user.getUser_name());
        comment.setComment_content(request.getParameter("content"));
        int forum_id=Integer.valueOf(request.getParameter("forum_id"));
        comment.setForum_id(forum_id);
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = df.format(new Date());
        comment.setComment_time(time);
        if (forumServiceImpl.addComment(comment) == 1)
            response.sendRedirect("forumController?method=getCView&forum_id="+forum_id);

    }
}
