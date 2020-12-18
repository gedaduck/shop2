package service;

import dao.Impl.UserImpl;
import vo.User;

public class RegistService {
    private UserImpl userImpl =new UserImpl();
    public User UserRegist(String user_account, String user_password, String user_name, String address, int telephone, String id_card){
        return userImpl.UserRegist(user_account,user_password,user_name,address,telephone,id_card);
    }
}
