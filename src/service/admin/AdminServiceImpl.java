package service.admin;

import dao.dao.AdminDao;
import dao.Impl.AdminDaoImpl;
import vo.*;

import java.util.List;

public class AdminServiceImpl implements AdminService{
    private AdminDao admin=new AdminDaoImpl();

    @Override
    public boolean deleteUser(String account) {
        return admin.deleteUser(account);
    }

    @Override
    public boolean deleteBusinessman(String account) {
        return admin.deleteBusinessman(account);
    }

    @Override
    public List<User> getAllUser() {
        return admin.getAllUser();
    }

    @Override
    public List<Businessman> getAllBusinessman() {
        return admin.getAllBusinessman();
    }

    @Override
    public boolean deleteGoods(int goods_id) {
        return admin.deleteGoods(goods_id);
    }

    @Override
    public boolean deleteForum(int forum_id) {
        return admin.deleteForum(forum_id);
    }

    @Override
    public boolean deleteOrder(int order_id) {
        return admin.deleteOrder(order_id);
    }

    @Override
    public List<Goods> getAllGoods() {
        return admin.getAllGoods();
    }

    @Override
    public List<Forum> getAllPost() {
        return admin.getAllPost();
    }

    @Override
    public List<Orders> getAllOrder() {
        return admin.getAllOrder();
    }

    @Override
    public Admin adminLogin(String account, String password) {
        return admin.adminLogin(account,password);
    }
}
