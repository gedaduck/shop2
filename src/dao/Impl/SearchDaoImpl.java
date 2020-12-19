package dao.Impl;

import dao.JDBCUtil;
import dao.dao.SearchDao;
import vo.Goods;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SearchDaoImpl implements SearchDao {
    @Override
    public List<Goods> Search(String goods_introduce) {
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        ResultSet res = null;
        List<Goods> list=new ArrayList<Goods>();
        try {
            connection = JDBCUtil.getConnection();

            String sql = "select* FROM goods where goods_introduce like '%"+goods_introduce+"%'";
            preparedStatement = connection.prepareStatement(sql);
            //preparedStatement.setString(1, goods_introduce);
            res = preparedStatement.executeQuery();
            while(res.next()) {
                System.out.println("查询成功！");
                Goods goods=new Goods();
                goods.setGoods_id(res.getInt("goods_id"));
                goods.setGoods_name(res.getString("goods_name"));
                goods.setGoods_category(res.getInt("goods_category"));
                goods.setGoods_img(res.getString("goods_img"));
                goods.setGoods_introduce(res.getString("goods_introduce"));
                goods.setPrice(res.getDouble("price"));
                goods.setBusinessman_account(res.getString("businessman_id"));
                System.out.println(goods.toString());
                list.add(goods);

            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("数据库查询错误！");
        }
        return list;
    }
}