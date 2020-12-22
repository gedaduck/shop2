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
        Businessman Businessman=new Businessman();
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
                Businessman.setBusinessman_account(res.getString("businessman_account"));
                Businessman.setBusinessman_name(res.getString("businessman_name"));
                Businessman.setStore_id(res.getInt("store_id"));
                Businessman.setStore_name(res.getString("store_name"));
                Businessman.setBusinessman_address(res.getString("businessman_address"));
                Businessman.setBusinessman_telephone(res.getInt("businessman_telephone"));
                System.out.println("登陆成功");
                return Businessman;
            }
            System.out.println("登陆失败");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
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
        List<Goods> goodsList=new ArrayList<>();
        try{
            connection=JDBCUtil.getConnection();
            String sql="select* from orders where businessman_account=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,business_account);
            res=preparedStatement.executeQuery();
            if(res.next()){

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
