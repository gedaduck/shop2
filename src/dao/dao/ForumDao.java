package dao.dao;

import vo.Comment;
import vo.Forum;

import java.util.List;

public interface ForumDao {
    List<Forum> getForum();
    int addForum(Forum forum);
    List<Comment> getComment(int forum_id);
    int addComment(Comment comment);
}
