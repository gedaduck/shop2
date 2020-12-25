package dao.Impl;

import dao.JDBCUtil;
import dao.dao.AdminDao;
import vo.*;

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
                JDBCUtil.closeConnection(connection);
                return true;
            }
            else System.out.println("删除失败");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        JDBCUtil.closeConnection(connection);
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
                JDBCUtil.closeConnection(connection);
                return true;
            }
            else System.out.println("删除商家失败");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        JDBCUtil.closeConnection(connection);
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
                user.setTelephone(res.getString("telephone"));
                list.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库查询错误！");
        }
        JDBCUtil.closeConnection(connection);
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
                businessman.setBusinessman_telephone(res.getString("businessman_telephone"));
                list.add(businessman);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库查询错误！");
        }
        JDBCUtil.closeConnection(connection);
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
        JDBCUtil.closeConnection(connection);
        return list;
    }

    @Override
    public List<Forum> getAllPost() {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet res = null;
        List<Forum> list=new ArrayList<Forum>();
        try {
            connection = JDBCUtil.getConnection();
            String sql = "select* FROM discuss";
            preparedStatement = connection.prepareStatement(sql);
            //preparedStatement.setString(1, goods_introduce);
            res = preparedStatement.executeQuery();
            while(res.next()) {
                Forum forum=new Forum();
                forum.setForum_id(res.getInt("forum_id"));
                forum.setUser_account(res.getString("user_account"));
                forum.setTitle(res.getString("title"));
                forum.setContent(res.getString("content"));
                forum.setRelease_time(res.getString("time"));
                forum.setUser_name(res.getString("user_name"));
                list.add(forum);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库查询错误！");
        }
        JDBCUtil.closeConnection(connection);
        return list;
    }

    @Override
    public List<Orders> getAllOrder() {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet res = null;
        List<Orders> list=new ArrayList<Orders>();
        try {
            connection = JDBCUtil.getConnection();
            String sql = "select* FROM orders";
            preparedStatement = connection.prepareStatement(sql);
            //preparedStatement.setString(1, goods_introduce);
            res = preparedStatement.executeQuery();
            while(res.next()) {
                Orders orders=new Orders();
                orders.setOrder_id(res.getInt("order_id"));
                orders.setUser_account(res.getString("user_account"));
                orders.setGoods_id(res.getInt("goods_id"));
                orders.setGoods_num(res.getInt("goods_num"));
                orders.setPrice(res.getDouble("price"));
                orders.setGoods_name(res.getString("goods_name"));
                orders.setOrder_date(res.getString("order_date"));
                orders.setOrder_send(res.getString("order_send"));
                orders.setOrder_get(res.getString("order_get"));
                orders.setOrder_comment(res.getString("order_comment"));
                orders.setBusinessman_account(res.getString("businessman_account"));
                list.add(orders);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库查询错误！");
        }
        JDBCUtil.closeConnection(connection);
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
                JDBCUtil.closeConnection(connection);
                return true;
            }
            else
                JDBCUtil.closeConnection(connection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteForum(int forum_id) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        int res;
        try{
            connection= JDBCUtil.getConnection();
            String sql="delete from discuss where forum_id=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setInt(1,forum_id);
            res=preparedStatement.executeUpdate();
            if(res==1){
                JDBCUtil.closeConnection(connection);
                return true;
            }
            else
                JDBCUtil.closeConnection(connection);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteOrder(int order_id) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        try{
            connection= JDBCUtil.getConnection();
            String sql="delete from orders where order_id=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setInt(1,order_id);
            if(preparedStatement.executeUpdate()==1){
                System.out.println("删除订单成功");
                JDBCUtil.closeConnection(connection);
                return true;
            }
            else {
                System.out.println("删除订单失败");
                JDBCUtil.closeConnection(connection);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        JDBCUtil.closeConnection(connection);
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
                JDBCUtil.closeConnection(connection);
                return admin;
            } else {
                JDBCUtil.closeConnection(connection);
                System.out.println("登陆失败！");
                return null;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库查询错误！");
        }
        JDBCUtil.closeConnection(connection);
        return null;
    }
}
