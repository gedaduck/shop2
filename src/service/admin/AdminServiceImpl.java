package service.admin;

import dao.dao.AdminDao;
import dao.Impl.AdminDaoImpl;
import vo.Admin;
import vo.Businessman;
import vo.Goods;
import vo.User;

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
    public List<Goods> getAllGoods() {
        return admin.getAllGoods();
    }

    @Override
    public Admin adminLogin(String account, String password) {
        return admin.adminLogin(account,password);
    }
}
