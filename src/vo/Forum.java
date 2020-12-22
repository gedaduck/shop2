package vo;

import java.util.Date;

public class Forum {
    private String user_name;
    private String title;
    private String content;
    private String user_email;
    private String release_time;
    private String user_account;
    private int forum_id;

    public Forum(String user_name, String title, String content, String user_email, String release_time, String user_account) {
        this.user_name = user_name;
        this.title = title;
        this.content = content;
        this.user_email = user_email;
        this.release_time = release_time;
        this.user_account = user_account;
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getRelease_time() {
        return release_time;
    }

    public void setRelease_time(String release_time) {
        this.release_time = release_time;
    }

    public String getUser_account() {
        return user_account;
    }

    public void setUser_account(String user_account) {
        this.user_account = user_account;
    }

    public int getForum_id() {
        return forum_id;
    }

    public void setForum_id(int forum_id) {
        this.forum_id = forum_id;
    }

    public Forum() {
    }

    @Override
    public String toString() {
        return "Forum{" +
                "user_name='" + user_name + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", user_email='" + user_email + '\'' +
                ", release_time=" + release_time +
                ", user_account='" + user_account + '\'' +
                ", forum_id=" + forum_id +
                '}';
    }
}
