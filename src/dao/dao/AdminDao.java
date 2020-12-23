package dao.dao;

import vo.*;

import java.util.List;

public interface AdminDao {
    public boolean deleteUser(String account);
    public boolean deleteBusinessman(String account);
    public List<User> getAllUser();
    public List<Businessman> getAllBusinessman();
    public List<Goods> getAllGoods();
    public List<Forum> getAllPost();
    public List<Orders> getAllOrder();
    public boolean deleteGoods(int goods_id);
    public boolean deleteForum(int forum_id);
    public boolean deleteOrder(int order_id);
    public Admin adminLogin(String account, String password);
}
