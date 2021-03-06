package dao.Impl;

import com.mysql.cj.jdbc.JdbcConnection;
import dao.JDBCUtil;
import dao.dao.GoodsDao;
import vo.Goods;
import vo.Orders;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GoodsImpl implements GoodsDao {
    @Override
    public Goods getGoods(int goods_id) {
        Connection connection=null;
        PreparedStatement preparedStatement = null;
        ResultSet res=null;
        Goods goods=new Goods();
        goods.setGoods_id(goods_id);
        try{
            connection=JDBCUtil.getConnection();
            String sql="select* from goods where goods_id=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setInt(1,goods_id);
            res=preparedStatement.executeQuery();
            while(res.next()){
                goods.setGoods_name(res.getString("goods_name"));
                goods.setGoods_img(res.getString("goods_img"));
                goods.setGoods_introduce(res.getString("goods_introduce"));
                goods.setGoods_category(res.getInt("goods_category"));
                goods.setPrice(res.getDouble("price"));
                goods.setBusinessman_account(res.getString("businessman_account"));
                System.out.println(goods.toString());
            }
            JDBCUtil.closeConnection(connection);
            return goods;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public List<Orders> getGoodsEvaluation(int goods_id) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet res=null;
        List<Orders> goodsEvaluationList=new ArrayList<>();
        try{
            connection=JDBCUtil.getConnection();
            String sql="select* from orders where goods_id=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setInt(1,goods_id);
            res=preparedStatement.executeQuery();
            while(res.next()){
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
                orders.setOrder_date(res.getString("order_date"));
                orders.setOrder_comment(res.getString("order_comment"));
                goodsEvaluationList.add(orders);
            }
            JDBCUtil.closeConnection(connection);
            return goodsEvaluationList;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean addGoods(Goods goods) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        try{
            connection= JDBCUtil.getConnection();
            String sql="insert into goods(goods_name,goods_img,goods_introduce,goods_category,price,businessman_account) values(?,?,?,?,?,?)";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setString(1,goods.getGoods_name());
            preparedStatement.setString(2,goods.getGoods_img());
            preparedStatement.setString(3,goods.getGoods_introduce());
            preparedStatement.setInt(4,goods.getGoods_category());
            preparedStatement.setDouble(5,goods.getPrice());
            preparedStatement.setString(6,goods.getBusinessman_account());
            if(preparedStatement.executeUpdate()==1){
                JDBCUtil.closeConnection(connection);
                return true;
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
