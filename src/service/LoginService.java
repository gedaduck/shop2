package service;

import dao.Impl.UserImpl;
import vo.User;

public class LoginService {

    private UserImpl userImpl=new UserImpl();

    public User userLogin(String account, String password){
        return userImpl.UserLogin(account,password);
    }
}
