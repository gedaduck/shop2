package service.forum;

import vo.Comment;
import vo.Forum;

import java.util.List;

public interface ForumService {
    List<Forum> getForum();
    int addForum(Forum forum);
    List<Comment> getComment(int forum_id);
    int addComment(Comment comment);
    Forum getOneForum(int forum_id);
}
