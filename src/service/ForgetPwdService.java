package service;

import dao.Impl.UserImpl;

public class ForgetPwdService {
    public UserImpl userImpl=new UserImpl();
    public int ForgetPwd(String user_account,String user_name,String new_password){
        return userImpl.UserForgetPwd(user_account,user_name,new_password);
    }
}
