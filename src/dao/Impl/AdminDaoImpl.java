package dao.Impl;

import dao.JDBCUtil;
import dao.dao.AdminDao;
import vo.Admin;
import vo.Businessman;
import vo.Goods;
import vo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdminDaoImpl implements AdminDao {
    @Override
    public boolean deleteUser(String account) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        int res;
        try{
            connection= JDBCUtil.getConnection();
            String sql="delete from user where user_account=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,account);
            boolean bool =preparedStatement.execute();
            if(!bool){
                System.out.println("删除成功");
                return true;
            }
            else System.out.println("删除失败");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteBusinessman(String account) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        int res;

        try{
            connection= JDBCUtil.getConnection();
            String sql="delete from businessman where businessman_account=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,account);
            res=preparedStatement.executeUpdate();
            if(res==1){
                System.out.println("删除商家成功");
                return true;
            }
            else System.out.println("删除商家失败");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public List<User> getAllUser() {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet res = null;
        List<User> list=new ArrayList<User>();
        try {
            connection = JDBCUtil.getConnection();
            String sql = "select* FROM user";
            preparedStatement = connection.prepareStatement(sql);
            //preparedStatement.setString(1, goods_introduce);
            res = preparedStatement.executeQuery();
            while(res.next()) {
                System.out.println("查询所有用户成功！");
                User user = new User();
                user.setUser_account(res.getString("user_account"));
                user.setUser_name(res.getString("user_name"));
                user.setAddress(res.getString("address"));
                user.setId_card(res.getString("id_card"));
                user.setPassword(res.getString("password"));
                user.setTelephone(res.getInt("telephone"));
                list.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库查询错误！");
        }
        return list;
    }

    @Override
    public List<Businessman> getAllBusinessman() {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet res = null;
        List<Businessman> list=new ArrayList<Businessman>();
        try {
            connection = JDBCUtil.getConnection();
            String sql = "select* FROM businessman";
            preparedStatement = connection.prepareStatement(sql);
            //preparedStatement.setString(1, goods_introduce);
            res = preparedStatement.executeQuery();
            while(res.next()) {
                System.out.println("查询所有商家成功！");
                Businessman businessman=new Businessman();
                businessman.setBusinessman_account(res.getString("businessman_account"));
                businessman.setBusinessman_password(res.getString("businessman_password"));
                businessman.setBusinessman_name(res.getString("businessman_name"));
                businessman.setStore_id(res.getInt("store_id"));
                businessman.setStore_name(res.getString("store_name"));
                businessman.setBusinessman_address(res.getString("businessman_address"));
                businessman.setBusinessman_telephone(res.getInt("businessman_telephone"));
                list.add(businessman);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库查询错误！");
        }
        return list;
    }

    @Override
    public List<Goods> getAllGoods() {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet res = null;
        List<Goods> list=new ArrayList<Goods>();
        try {
            connection = JDBCUtil.getConnection();
            String sql = "select* FROM goods";
            preparedStatement = connection.prepareStatement(sql);
            //preparedStatement.setString(1, goods_introduce);
            res = preparedStatement.executeQuery();
            while(res.next()) {
                Goods goods=new Goods();
                goods.setGoods_id(res.getInt("goods_id"));
                goods.setGoods_name(res.getString("goods_name"));
                goods.setGoods_img(res.getString("goods_img"));
                goods.setGoods_introduce(res.getString("goods_introduce"));
                goods.setGoods_category(res.getInt("goods_category"));
                goods.setPrice(res.getDouble("price"));
                goods.setBusinessman_account(res.getString("businessman_account"));
                list.add(goods);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库查询错误！");
        }
        return list;
    }

    @Override
    public boolean deleteGoods(int goods_id) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        int res;

        try{
            connection= JDBCUtil.getConnection();
            String sql="delete from goods where goods_id=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setInt(1,goods_id);
            res=preparedStatement.executeUpdate();
            if(res==1){
                System.out.println("删除商品成功");
                return true;
            }
            else System.out.println("删除商品失败");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public Admin adminLogin(String account, String password) {
        Admin admin=new Admin();
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet res = null;
        try {
            connection = JDBCUtil.getConnection();
            String sql = "select* FROM admin where admin_account=?";
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, account);
            res = preparedStatement.executeQuery();
            if (res.next() && password.equals(res.getString("admin_password"))) {
                System.out.println("登陆成功！");
                admin.setAdmin_account(res.getString("admin_account"));
                admin.setAdmin_password(res.getString("admin_password"));
                return admin;
            } else {
                System.out.println("登陆失败！");
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库查询错误！");
        }
        return null;
    }
}
