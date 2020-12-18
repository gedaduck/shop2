package service;

import vo.Admin;
import vo.Businessman;
import vo.Goods;
import vo.User;

import java.util.List;

public interface AdminService {
    boolean deleteUser(String account);
    boolean deleteBusinessman(String account);
    List<User> getAllUser();
    List<Businessman> getAllBusinessman();
    boolean deleteGoods(int goods_id);
    List<Goods> getAllGoods();
    Admin adminLogin(String account, String password);
}
