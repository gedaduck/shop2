package service.admin;

import vo.*;

import java.util.List;

public interface AdminService {
    boolean deleteUser(String account);
    boolean deleteBusinessman(String account);
    List<User> getAllUser();
    List<Businessman> getAllBusinessman();
    boolean deleteGoods(int goods_id);
    boolean deleteForum(int forum_id);
    boolean deleteOrder(int order_id);
    List<Goods> getAllGoods();
    List<Forum> getAllPost();
    List<Orders> getAllOrder();
    Admin adminLogin(String account, String password);

}
