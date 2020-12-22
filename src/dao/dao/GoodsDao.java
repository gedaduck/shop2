package dao.dao;

import vo.Goods;
import vo.Orders;

import java.util.List;

public interface GoodsDao {
    Goods getGoods(int goods_id);
    List<Orders> getGoodsEvaluation(int goods_id);
    boolean addGoods(Goods goods);
}
