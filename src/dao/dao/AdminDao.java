package dao.dao;

import vo.Admin;
import vo.Seller;
import vo.Goods;
import vo.User;

import java.util.List;

public interface AdminDao {
    public boolean deleteUser(String account);
    public boolean deleteBusinessman(String account);
    public List<User> getAllUser();
    public List<Seller> getAllBusinessman();
    public List<Goods> getAllGoods();
    public boolean deleteGoods(int goods_id);
    public Admin adminLogin(String account, String password);
}
