package service.user;

import vo.User;

public interface UserService {
    public User userLogin(String account, String password);
    public int modify(User user);
    public int forgetPwd(String user_account, String user_name, String new_password);
    public int rePwd(String account, String oldPwd, String newPwd);
    public User userRegist(String user_account, String user_password, String user_name, String address, String telephone, String id_card);
}
