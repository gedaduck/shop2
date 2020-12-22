package service.forum;

import dao.Impl.ForumDaoImpl;
import dao.dao.ForumDao;
import vo.Comment;
import vo.Forum;

import java.util.List;

public class ForumServiceImpl implements ForumService{
    private ForumDao forumDaoImpl= new ForumDaoImpl();

    @Override
    public List<Forum> getForum() {
        return forumDaoImpl.getForum();
    }

    @Override
    public int addForum(Forum forum) {
        return forumDaoImpl.addForum(forum);
    }

    @Override
    public List<Comment> getComment(int forum_id) {
        return forumDaoImpl.getComment(forum_id);
    }

    @Override
    public int addComment(Comment comment) {
        return forumDaoImpl.addComment(comment);
    }

}
