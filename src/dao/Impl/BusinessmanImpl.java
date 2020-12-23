package dao.Impl;

import dao.JDBCUtil;
import dao.dao.BusinessmanDao;
import vo.Goods;
import vo.Orders;
import vo.Businessman;

import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public class BusinessmanImpl implements BusinessmanDao {
    @Override
    public Businessman login(String name, String password) {
        Businessman businessman=new Businessman();
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet res=null;
        try{
            connection= JDBCUtil.getConnection();
            String sql="select* from businessman where businessman_account=? and businessman_password=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,name);
            preparedStatement.setString(2,password);
            res=preparedStatement.executeQuery();
            if(res.next()){
                businessman.setBusinessman_account(res.getString("businessman_account"));
                businessman.setBusinessman_name(res.getString("businessman_name"));
                businessman.setStore_id(res.getInt("store_id"));
                businessman.setStore_name(res.getString("store_name"));
                businessman.setBusinessman_address(res.getString("businessman_address"));
                businessman.setBusinessman_telephone(res.getString("businessman_telephone"));
                System.out.println("登陆成功");
                return businessman;
            }
            System.out.println("登陆失败");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int regist(Businessman businessman) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        try{
            connection=JDBCUtil.getConnection();
            String sql="insert into businessman(businessman_account,businessman_name,businessman_password,store_name,businessman_telephone,businessman_address) values(?,?,?,?,?,?)";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,businessman.getBusinessman_account());
            preparedStatement.setString(2,businessman.getBusinessman_name());
            preparedStatement.setString(3,businessman.getBusinessman_password());
            preparedStatement.setString(4,businessman.getStore_name());
            preparedStatement.setString(5,businessman.getBusinessman_telephone());
            preparedStatement.setString(6,businessman.getBusinessman_address());
            return preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public List<Goods> getGoods(String business_account) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet res=null;
        List<Goods> goodsList=new ArrayList<>();
        try{
            connection=JDBCUtil.getConnection();
            String sql="select* from goods where businessman_account=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,business_account);
            res=preparedStatement.executeQuery();
            while(res.next()){
                Goods goods=new Goods();
                goods.setGoods_id(res.getInt("goods_id"));
                goods.setGoods_name(res.getString("goods_name"));
                goods.setGoods_img(res.getString("goods_img"));
                goods.setGoods_introduce(res.getString("goods_introduce"));
                goods.setGoods_category(res.getInt("goods_category"));
                goods.setPrice(res.getDouble("price"));
                goods.setBusinessman_account(res.getString("businessman_account"));
                goodsList.add(goods);
            }
            return goodsList;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Orders> getOrders(String business_account) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet res=null;
        List<Orders> ordersList=new ArrayList<>();
        try{
            connection=JDBCUtil.getConnection();
            String sql="select* from orders where businessman_account=?";
            preparedStatement=connection.prepareStatement(sql);
            System.out.println(business_account);
            preparedStatement.setString(1,business_account);
            res=preparedStatement.executeQuery();
            while(res.next()){
                System.out.println(1);
                Orders orders=new Orders();
                orders.setOrder_id(res.getInt("order_id"));
                orders.setUser_account(res.getString("user_account"));
                orders.setGoods_id(res.getInt("goods_id"));
                orders.setGoods_num(res.getInt("goods_num"));
                orders.setPrice(res.getDouble("price"));
                orders.setUser_account(res.getString("user_account"));
                orders.setOrder_date(res.getString("order_date"));
                orders.setOrder_send(res.getString("order_send"));
                orders.setOrder_get(res.getString("order_get"));
                orders.setGoods_comment(res.getString("order_comment"));
                orders.setBusinessman_account(res.getString("businessman_account"));
                ordersList.add(orders);
            }
            return ordersList;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int goods_send(int order_id) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet res=null;
        try{
            connection=JDBCUtil.getConnection();
            String sql="update orders set order_send='已发货',order_get='未收货' where order_id=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setInt(1,order_id);
            return preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public int goods_delete(int goods_id) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet res=null;
        try{
            connection=JDBCUtil.getConnection();
            String sql="DELETE from goods where goods_id=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setInt(1,goods_id);
            System.out.println(preparedStatement.executeUpdate());
            return 1;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public boolean goods_modify(Goods goods) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        try{
            connection= JDBCUtil.getConnection();
            String sql="update goods set goods_name=?,goods_introduce=?,goods_category=?,price=? where goods_id=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,goods.getGoods_name());
            preparedStatement.setString(2,goods.getGoods_introduce());
            preparedStatement.setInt(3,goods.getGoods_category());
            preparedStatement.setDouble(4,goods.getPrice());
            preparedStatement.setInt(5,goods.getGoods_id());
            if(preparedStatement.executeUpdate()==1){
                JDBCUtil.closeConnection(connection);
                return true;
            }
            else JDBCUtil.closeConnection(connection);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
