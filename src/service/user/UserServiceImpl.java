package service.user;

import dao.Impl.UserImpl;
import dao.dao.UserDao;
import vo.User;

public class UserServiceImpl implements UserService {
    private UserDao userImpl=new UserImpl();

    @Override
    public User userLogin(String account, String password) {
        User user=userImpl.UserLogin(account,password);
        return user;
    }

    @Override
    public int modify(User user) {
        return userImpl.UserModify(user);
    }

    @Override
    public int forgetPwd(String user_account, String user_name, String new_password) {
        return userImpl.UserForgetPwd(user_account,user_name,new_password);
    }

    @Override
    public int rePwd(String account, String oldPwd, String newPwd) {
        return userImpl.UserRePwd(account,oldPwd,newPwd);
    }

    @Override
    public User userRegist(String user_account, String user_password, String user_name, String address, String telephone, String id_card) {
        return userImpl.UserRegist(user_account,user_password,user_name,address,telephone,id_card);
    }
}
