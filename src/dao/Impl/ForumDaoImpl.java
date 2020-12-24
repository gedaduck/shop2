package dao.Impl;

import dao.JDBCUtil;
import dao.dao.ForumDao;
import vo.Comment;
import vo.Forum;

import javax.swing.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ForumDaoImpl implements ForumDao {
    @Override
    public List<Forum> getForum() {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet res=null;
        try{
            connection= JDBCUtil.getConnection();
            String sql="select* from discuss order by forum_id desc";
            preparedStatement=connection.prepareStatement(sql);
            res=preparedStatement.executeQuery();
            List<Forum> forumList=new ArrayList<>();
            while(res.next()){
                Forum forum=new Forum();
                forum.setUser_name(res.getString("user_name"));
                forum.setUser_email(res.getString("user_email"));
                forum.setTitle(res.getString("title"));
                forum.setContent(res.getString("content"));
                forum.setRelease_time(res.getString("time"));
                forum.setForum_id(res.getInt("forum_id"));
                forum.setUser_account(res.getString("user_account"));
                forumList.add(forum);
            }
            System.out.println(forumList.size());
            return  forumList;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int addForum(Forum forum) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        try{
            connection=JDBCUtil.getConnection();
            String sql="insert into discuss(user_name,user_email,title,content,time,user_account) values(?,?,?,?,?,?)";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,forum.getUser_name());
            preparedStatement.setString(2,forum.getUser_email());
            preparedStatement.setString(3,forum.getTitle());
            preparedStatement.setString(4,forum.getContent());
            preparedStatement.setString(5,forum.getRelease_time());
            preparedStatement.setString(6,forum.getUser_account());
            return preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public List<Comment> getComment(int forum_id) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet res=null;
        try{
            connection=JDBCUtil.getConnection();
            String sql="select* from reply where reply=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setInt(1,forum_id);
            res=preparedStatement.executeQuery();
            List<Comment> commentList=new ArrayList<>();
            while(res.next()){
                Comment comment=new Comment();
                comment.setUser_name(res.getString("name"));
                comment.setComment_content(res.getString("content"));
                comment.setComment_time(res.getString("time"));
                comment.setForum_id(res.getInt("reply"));
                comment.setComment_id(res.getInt("id"));
                commentList.add(comment);
            }
            return commentList;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int addComment(Comment comment) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        try{
            connection=JDBCUtil.getConnection();
            String sql="insert into reply(name,content,time,reply) values(?,?,?,?)";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,comment.getUser_name());
            preparedStatement.setString(2,comment.getComment_content());
            preparedStatement.setString(3,comment.getComment_time());
            preparedStatement.setInt(4,comment.getForum_id());
            return preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public Forum getOneForum(int forum_id) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet res=null;
        try{
            connection= JDBCUtil.getConnection();
            String sql="select* from discuss where forum_id=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setInt(1,forum_id);
            res=preparedStatement.executeQuery();
            Forum forum=new Forum();
            if(res.next()){
                forum.setUser_name(res.getString("user_name"));
                forum.setUser_email(res.getString("user_email"));
                forum.setTitle(res.getString("title"));
                forum.setContent(res.getString("content"));
                forum.setRelease_time(res.getString("time"));
                forum.setForum_id(res.getInt("forum_id"));
                forum.setUser_account(res.getString("user_account"));
                return forum;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
