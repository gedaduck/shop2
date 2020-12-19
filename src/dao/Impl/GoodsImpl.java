package dao.Impl;

import dao.JDBCUtil;
import dao.dao.GoodsDao;
import vo.Goods;

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
            if(res.next()){
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
    public List<String> getGoodsEvaluation(int goods_id) {
        Connection connection=null;
        PreparedStatement preparedStatement=null;
        ResultSet res=null;
        List<String> goodsEvaluationList=new ArrayList<>();
        try{
            connection=JDBCUtil.getConnection();
            String sql="select goods_evaluation from order1 where goods_id=?";
            preparedStatement=connection.prepareStatement(sql);
            preparedStatement.setInt(1,goods_id);
            res=preparedStatement.executeQuery();
            if(res.next()){
                String evaluation=res.getString("goods_evaluation");
                System.out.println(evaluation);
                goodsEvaluationList.add(evaluation);
            }
            JDBCUtil.closeConnection(connection);
            return goodsEvaluationList;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
